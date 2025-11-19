@interface EKObject
+ (BOOL)_compareIdentityKeysForObject:(id)a3 againstObject:(id)a4 propertiesToIgnore:(id)a5;
+ (BOOL)_compareMultiValueRelationshipKey:(id)a3 forObject:(id)a4 againstObject:(id)a5 propertiesToIgnore:(id)a6;
+ (BOOL)_compareMultiValueRelationshipKeys:(id)a3 forObject:(id)a4 againstObject:(id)a5 propertiesToIgnore:(id)a6;
+ (BOOL)_compareMutliValueRelationshipKey:(id)a3 forObject:(id)a4 againstObject:(id)a5 propertiesToIgnore:(id)a6;
+ (BOOL)_compareNonIdentityKeys:(id)a3 forObject:(id)a4 againstObject:(id)a5 compareImmutableKeys:(BOOL)a6 propertiesToIgnore:(id)a7;
+ (BOOL)_compareNonRelationshipKeys:(id)a3 forObject:(id)a4 againstObject:(id)a5 propertiesToIgnore:(id)a6;
+ (BOOL)_compareRelationshipObject1:(id)a3 againstRelationshipObject2:(id)a4 propertiesToIgnore:(id)a5;
+ (BOOL)_compareRelationshipObject1:(id)a3 againstRelationshipObject2:(id)a4 propertiesToIgnore:(id)a5 relationshipObjectKey:(id)a6;
+ (BOOL)_compareSingleValueRelationshipKey:(id)a3 forObject:(id)a4 againstObject:(id)a5 propertiesToIgnore:(id)a6 ignoreIdentityKeys:(BOOL)a7;
+ (BOOL)_compareSingleValueRelationshipKeys:(id)a3 forObject:(id)a4 againstObject:(id)a5 propertiesToIgnore:(id)a6;
+ (BOOL)_objects:(id)a3 haveSameMeltedClass:(Class)a4 frozenClass:(Class)a5;
+ (BOOL)canonicalizedEqualityTestValue1:(id)a3 value2:(id)a4 key:(id)a5 object1:(id)a6 object2:(id)a7;
+ (BOOL)isMeltedAndNotWeakRelationshipObject:(id)a3 forKey:(id)a4;
+ (BOOL)isWeakRelationObject:(id)a3 forKey:(id)a4;
+ (id)_array:(id)a3 intersectedWithSet:(id)a4 minusSet:(id)a5;
+ (id)_changeSetForDiff:(id)a3;
+ (id)duplicatedPersistentObjectForObject:(id)a3 alreadyCopiedObjects:(id)a4;
+ (id)knownDerivedAndSingleValueRelationshipKeys;
+ (id)knownRelationshipWeakKeys;
+ (id)objectsIDsExistingInStoreFromObjects:(id)a3 eventStore:(id)a4;
+ (void)_addChangesFromObject:(id)a3 toObjects:(id)a4 passingTest:(id)a5 copyingBackingObjects:(BOOL)a6;
+ (void)addChangesFromObject:(id)a3 toObjects:(id)a4 except:(id)a5;
+ (void)addChangesFromObject:(id)a3 toObjects:(id)a4 keep:(id)a5;
- (BOOL)_areOnlyChangedKeys:(id)a3;
- (BOOL)_hasChangeHelperInKeys:(id)a3 ignoreKeys:(id)a4 checkUnsaved:(BOOL)a5;
- (BOOL)_hasChanges;
- (BOOL)_hasChangesForKey:(id)a3 checkUnsaved:(BOOL)a4;
- (BOOL)_hasUnsavedChangesInKeys:(id)a3 ignoreKeys:(id)a4;
- (BOOL)_isNew;
- (BOOL)_isOnlyChangedKey:(id)a3;
- (BOOL)_isPropertyUnavailable:(id)a3 convertToFullObjectIfUnavailable:(BOOL)a4;
- (BOOL)_refreshCommon;
- (BOOL)_refreshable;
- (BOOL)_reset;
- (BOOL)_resetCommon;
- (BOOL)_resetIfBackingObjectIsOfClass:(Class)a3 fetchResetFrozenObjectBlock:(id)a4;
- (BOOL)existsInStore;
- (BOOL)hasNeverBeenCommitted;
- (BOOL)isDeleted;
- (BOOL)isDifferentFromCommitted;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSaved;
- (BOOL)isUndeleted;
- (BOOL)validate:(id *)a3;
- (BOOL)validateWithOwner:(id)a3 error:(id *)a4;
- (CADGenerationStampedObjectID)CADObjectID;
- (Class)frozenClass;
- (EKEventStore)eventStore;
- (EKObject)init;
- (EKObject)initWithPersistentObject:(id)a3;
- (EKObjectID)objectID;
- (NSString)uniqueIdentifier;
- (id)_basicSummaryWithDepth:(int64_t)a3;
- (id)_convertBackingObjectsWithPath:(id)a3 updateBackingObjects:(BOOL)a4 allChangedBackingObjects:(id)a5 eventStore:(id)a6 updatedBackingObjectProvider:(id)a7;
- (id)_copyWithoutChangesInZone:(_NSZone *)a3;
- (id)_multiRelationshipKeysToCheckForChanges;
- (id)_previousValueForKey:(id)a3;
- (id)_propertyValueForKey:(id)a3;
- (id)_recursiveSnapshotCopyWithPropertyAccessor:(id)a3 propertyKeysToCopy:(id)a4 propertyKeysToSkip:(id)a5 recurseOnWeakRelations:(BOOL)a6;
- (id)_singleRelationshipKeysToCheckForChanges;
- (id)_summaryWithDepth:(int64_t)a3;
- (id)backingObjectOfChildObject:(id)a3 withRelationshipKey:(id)a4;
- (id)cachedMeltedChildIdentifierToParentMap;
- (id)cachedMeltedObjectForSingleValueKey:(id)a3;
- (id)cachedMeltedObjectsForMultiValueKey:(id)a3;
- (id)cachedValueForKey:(id)a3 expectingCachedValue:(id)a4 forMasterKey:(id)a5 relatedKeys:(id)a6 populateBlock:(id)a7;
- (id)cachedValueForKey:(id)a3 populateBlock:(id)a4;
- (id)changedKeys;
- (id)committedCopy;
- (id)committedValueForKey:(id)a3;
- (id)copyMeltedObjectCache;
- (id)duplicate;
- (id)duplicateToEventStore:(id)a3;
- (id)frozenObject;
- (id)frozenObjectInStore:(id)a3;
- (id)frozenOrMeltedCachedMultiRelationObjectsForKey:(id)a3;
- (id)frozenOrMeltedCachedSingleRelationObjectForKey:(id)a3;
- (id)inverseObjectWithObject:(id)a3 diff:(id *)a4;
- (id)meltedAndCachedMultiRelationObjectsForKey:(id)a3;
- (id)meltedAndCachedSingleRelationObjectForKey:(id)a3;
- (id)meltedObjectInStore:(id)a3;
- (id)multiChangedObjectValuesForKey:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)prepareReminderKitObjectForSaveWithUpdatedBackingObjectProvider:(id)a3;
- (id)previouslySavedCopy;
- (id)privacyDescription;
- (id)shallowCopyWithoutChanges;
- (id)singleChangedValueForKey:(id)a3;
- (id)snapshotCopyWithPropertyKeysToCopy:(id)a3;
- (int)rowID;
- (os_unfair_lock_s)_lock;
- (unint64_t)_cachedMeltedObjectsCount;
- (unint64_t)hash;
- (unint64_t)meltedAndCachedMultiRelationCountForKey:(id)a3;
- (void)_addCachedMeltedObject:(id)a3 forMultiValueKey:(id)a4;
- (void)_addChanges:(id)a3 copyingBackingObjects:(BOOL)a4 objectIdentifierBlock:(id)a5;
- (void)_addChangesFromObject:(id)a3 ignoringDifferencesFrom:(id)a4 changesToSkip:(id)a5 copyingBackingObjects:(BOOL)a6;
- (void)_addSummaryWithDepth:(int64_t)a3 toMutableString:(id)a4 indentFirstLine:(BOOL)a5;
- (void)_applyKnownImmutableValuesFrom:(id)a3;
- (void)_cachedMeltedChildIdentifierToParentMap:(id)a3;
- (void)_initChangeSetIfNone;
- (void)_markAsCommittedCommon;
- (void)_markAsDeletedCommon;
- (void)_markAsNotNewCommon;
- (void)_markAsSavedCommon;
- (void)_markAsUndeletedCommon;
- (void)_performBlockOnOwnedCachedRelatedObjects:(id)a3;
- (void)_performWithLock:(id)a3;
- (void)_removeCachedMeltedObject:(id)a3 forMultiValueKey:(id)a4;
- (void)_resetAfterUpdatingChangeSetOrBackingObject;
- (void)_resetMeltedCache;
- (void)_resetWithFrozenObject:(id)a3;
- (void)_rollbackCommon;
- (void)_sharedInit;
- (void)_updateCachedMeltedObjectSetForMultiValueKey:(id)a3 usingBlock:(id)a4;
- (void)_updatePersistentValueForKey:(id)a3;
- (void)addCachedMeltedObject:(id)a3 forMultiValueKey:(id)a4;
- (void)addCoCommitObject:(id)a3;
- (void)addMultiChangedObjectValue:(id)a3 forKey:(id)a4;
- (void)addMultiChangedObjectValues:(id)a3 forKey:(id)a4;
- (void)applyChanges:(id)a3;
- (void)augmentMeltedObjectCache:(id)a3;
- (void)clearCachedValueForKey:(id)a3;
- (void)clearCachedValuesForKeys:(id)a3;
- (void)deletePersistentObject;
- (void)emptyMeltedCache;
- (void)emptyMeltedCacheForKey:(id)a3;
- (void)emptyMeltedCacheForKeys:(id)a3;
- (void)insertPersistentObjectIfNeeded;
- (void)markAsCommitted;
- (void)markAsNew;
- (void)markAsNewShallow;
- (void)markAsUndeleted;
- (void)rebase;
- (void)rebaseSkippingRelationProperties:(id)a3;
- (void)rebaseSkippingRelationProperties:(id)a3 toEventStore:(id)a4;
- (void)removeCachedMeltedObject:(id)a3 forMultiValueKey:(id)a4;
- (void)removeMultiChangedObjectValue:(id)a3 forKey:(id)a4;
- (void)removeMultiChangedObjectValues:(id)a3 forKey:(id)a4;
- (void)replaceMultiChangedObjectValuesWithObjectValues:(id)a3 forKey:(id)a4;
- (void)setCachedMeltedObject:(id)a3 forSingleValueKey:(id)a4;
- (void)setCachedMeltedObjects:(id)a3 forMultiValueKey:(id)a4;
- (void)setCachedValue:(id)a3 forKey:(id)a4;
- (void)setSingleChangedValue:(id)a3 forKey:(id)a4;
- (void)updateAfterApplyingChanges:(id)a3 objectIdentifierBlock:(id)a4;
- (void)updateMeltedAndCachedMultiRelationObjects:(id)a3 forKey:(id)a4;
- (void)updateMeltedAndCachedSingleRelationObject:(id)a3 forKey:(id)a4 frozenClass:(Class)a5;
- (void)updateMeltedCacheForChangeSet:(id)a3 objectIdentifierBlock:(id)a4;
- (void)updateMultiValueCacheForChangeSet:(id)a3 preservingExistingAdds:(BOOL)a4 objectIdentifierBlock:(id)a5;
- (void)updatePersistentObjectSkippingProperties:(id)a3;
- (void)updatePersistentValueForKeyIfNeeded:(id)a3;
@end

@implementation EKObject

- (void)_sharedInit
{
  v3 = objc_opt_new();
  [(EKObject *)self set_cachedMeltedObjects:v3];

  v4 = objc_opt_new();
  [(EKObject *)self set_cachedValues:v4];
}

- (EKEventStore)eventStore
{
  v2 = [(EKObject *)self persistentObject];
  v3 = [v2 eventStore];

  return v3;
}

- (os_unfair_lock_s)_lock
{
  v2 = self;
  if (GetSharedLockForIndex_onceToken != -1)
  {
    [EKObject(Shared) _lock];
  }

  return &GetSharedLockForIndex_sharedLocks + ((((v2 >> 4) ^ (v2 >> 7)) ^ (v2 >> 10)) & 7);
}

- (CADGenerationStampedObjectID)CADObjectID
{
  v2 = [(EKObject *)self persistentObject];
  v3 = [v2 CADObjectID];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(EKObject *)self persistentObject];
  v3 = [v2 hash];

  return v3;
}

- (EKObjectID)objectID
{
  v2 = [(EKObject *)self persistentObject];
  v3 = [v2 objectID];

  return v3;
}

- (BOOL)_isNew
{
  v2 = [(EKObject *)self changeSet];
  v3 = [v2 isNew];

  return v3;
}

- (EKObject)init
{
  v3 = objc_alloc_init([objc_opt_class() frozenClass]);
  v4 = [(EKObject *)self initWithPersistentObject:v3];

  return v4;
}

- (EKObject)initWithPersistentObject:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = EKObject;
  v6 = [(EKObject *)&v10 init];
  if (v6)
  {
    EKLogInitIfNeeded();
    [(EKObject *)v6 _sharedInit];
    objc_storeStrong(&v6->_persistentObject, a3);
    if ([(EKPersistentObject *)v6->_persistentObject isNew])
    {
      v7 = [(EKObject *)v6 eventStore];
      v8 = [v7 isObjectInserted:v6->_persistentObject];

      if ((v8 & 1) == 0)
      {
        [(EKObject *)v6 markAsNewShallow];
      }
    }
  }

  return v6;
}

- (BOOL)_isPropertyUnavailable:(id)a3 convertToFullObjectIfUnavailable:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    goto LABEL_4;
  }

  v7 = [(EKObject *)self changeSet];
  v8 = [v7 hasUnsavedChangeForKey:v6];

  if ((v8 & 1) != 0 || (-[EKObject additionalFrozenProperties](self, "additionalFrozenProperties"), v9 = objc_claimAutoreleasedReturnValue(), [v9 objectForKeyedSubscript:v6], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
LABEL_4:
    v11 = 0;
  }

  else
  {
    v13 = [(EKObject *)self backingObject];
    v11 = [v13 isPropertyUnavailable:v6];
  }

  return v11;
}

- (NSString)uniqueIdentifier
{
  v3 = [(objc_class *)[(EKObject *)self frozenClass] propertyKeyForUniqueIdentifier];
  v4 = [(EKObject *)self singleChangedValueForKey:v3];

  return v4;
}

- (BOOL)hasNeverBeenCommitted
{
  v2 = [(EKObject *)self backingObject];
  v3 = [v2 isNew];

  return v3;
}

- (BOOL)isDifferentFromCommitted
{
  v3 = [(EKObject *)self committedCopy];
  v4 = [v3 diffWithObject:self];
  v5 = [v4 result] != 0;

  return v5;
}

- (id)frozenObject
{
  v3 = [(EKObject *)self eventStore];
  v4 = [(EKObject *)self frozenObjectInStore:v3];

  return v4;
}

- (id)frozenObjectInStore:(id)a3
{
  v4 = a3;
  v5 = [(EKObject *)self persistentObject];
  v6 = [v5 frozenObjectInStore:v4];

  return v6;
}

+ (BOOL)_compareNonIdentityKeys:(id)a3 forObject:(id)a4 againstObject:(id)a5 compareImmutableKeys:(BOOL)a6 propertiesToIgnore:(id)a7
{
  v11 = a3;
  v37 = a4;
  v12 = a5;
  v13 = a7;
  v14 = MEMORY[0x1E695DFA8];
  v15 = [a1 knownRelationshipMultiValueKeys];
  v16 = [v14 setWithArray:v15];

  v17 = MEMORY[0x1E695DFA8];
  v18 = [a1 knownRelationshipSingleValueKeys];
  v19 = [v17 setWithArray:v18];

  v20 = MEMORY[0x1E695DFA8];
  v21 = [a1 knownSingleValueKeysForComparison];
  v22 = [v20 setWithArray:v21];

  v23 = MEMORY[0x1E695DFA8];
  v24 = [a1 knownImmutableKeys];
  v25 = [v23 setWithArray:v24];

  v38 = v16;
  if (v11)
  {
    [v16 intersectSet:v11];
    [v19 intersectSet:v11];
    [v22 intersectSet:v11];
    [v25 intersectSet:v11];
  }

  else if (!a6)
  {

    v25 = 0;
  }

  v26 = [v19 allObjects];
  v27 = v37;
  v28 = [a1 _compareSingleValueRelationshipKeys:v26 forObject:v37 againstObject:v12 propertiesToIgnore:v13];

  if (!v28 || ([v38 allObjects], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(a1, "_compareMultiValueRelationshipKeys:forObject:againstObject:propertiesToIgnore:", v29, v37, v12, v13), v29, !v30))
  {
    v34 = 0;
    goto LABEL_11;
  }

  v31 = [v22 allObjects];
  v32 = [a1 _compareNonRelationshipKeys:v31 forObject:v37 againstObject:v12 propertiesToIgnore:v13];

  if (!v32)
  {
    v34 = 0;
LABEL_14:
    v27 = v37;
    goto LABEL_11;
  }

  if (!v25)
  {
    v34 = 1;
    goto LABEL_14;
  }

  v33 = [v25 allObjects];
  v27 = v37;
  v34 = [a1 _compareNonRelationshipKeys:v33 forObject:v37 againstObject:v12 propertiesToIgnore:v13];

LABEL_11:
  return v34 & 1;
}

+ (BOOL)_compareIdentityKeysForObject:(id)a3 againstObject:(id)a4 propertiesToIgnore:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 knownIdentityKeysForComparison];
  LOBYTE(a1) = [a1 _compareNonRelationshipKeys:v11 forObject:v10 againstObject:v9 propertiesToIgnore:v8];

  return a1;
}

+ (BOOL)_compareSingleValueRelationshipKeys:(id)a3 forObject:(id)a4 againstObject:(id)a5 propertiesToIgnore:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (![a1 _compareSingleValueRelationshipKey:*(*(&v22 + 1) + 8 * i) forObject:v11 againstObject:v12 propertiesToIgnore:v13 ignoreIdentityKeys:{0, v22}])
        {
          v19 = 0;
          goto LABEL_11;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_11:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (BOOL)_compareMultiValueRelationshipKeys:(id)a3 forObject:(id)a4 againstObject:(id)a5 propertiesToIgnore:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (![a1 _compareMutliValueRelationshipKey:*(*(&v22 + 1) + 8 * i) forObject:v11 againstObject:v12 propertiesToIgnore:{v13, v22}])
        {
          v19 = 0;
          goto LABEL_11;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_11:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (BOOL)_compareMutliValueRelationshipKey:(id)a3 forObject:(id)a4 againstObject:(id)a5 propertiesToIgnore:(id)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 isPropertyUnavailable:v10] && (objc_msgSend(v12, "isPropertyUnavailable:", v10) & 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    v15 = v11;
    v16 = v12;
    v17 = [v15 isPartialObject];
    if (v17 != [v16 isPartialObject])
    {
      v18 = [a1 _createNonPartialObjectFromObject:v15 ifPropertyIsUnavailable:v10];

      v19 = [a1 _createNonPartialObjectFromObject:v16 ifPropertyIsUnavailable:v10];

      v16 = v19;
      v15 = v18;
    }

    v20 = [v15 valueForKey:v10];
    v21 = [v16 valueForKey:v10];
    v22 = [v20 count];
    if (v22 == [v21 count])
    {
      v46 = v11;
      v47 = v21;
      v43 = v15;
      v44 = v16;
      v45 = v12;
      v23 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v20, "count")}];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v42 = v20;
      v24 = v20;
      v25 = [v24 countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v53;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v53 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v52 + 1) + 8 * i);
            v30 = [v29 uniqueIdentifier];
            if (v30)
            {
              [v23 setObject:v29 forKeyedSubscript:v30];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v52 objects:v57 count:16];
        }

        while (v26);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v31 = v47;
      v32 = [v31 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v32)
      {
        v33 = v32;
        v41 = v10;
        v34 = *v49;
        while (2)
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v49 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v48 + 1) + 8 * j);
            v37 = [v36 uniqueIdentifier];
            v38 = [v23 objectForKeyedSubscript:v37];
            LODWORD(v36) = [a1 _compareRelationshipObject1:v38 againstRelationshipObject2:v36 propertiesToIgnore:v13];

            if (!v36)
            {
              v14 = 0;
              goto LABEL_27;
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }

        v14 = 1;
LABEL_27:
        v10 = v41;
      }

      else
      {
        v14 = 1;
      }

      v12 = v45;
      v11 = v46;
      v15 = v43;
      v16 = v44;
      v20 = v42;
      v21 = v47;
    }

    else
    {
      v14 = 0;
    }
  }

  v39 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)_compareRelationshipObject1:(id)a3 againstRelationshipObject2:(id)a4 propertiesToIgnore:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ((v7 == 0) != (v8 == 0))
  {
    goto LABEL_5;
  }

  v10 = 1;
  if (v7 && v8)
  {
    v11 = [objc_opt_class() meltedClass];
    if (v11 != [objc_opt_class() meltedClass])
    {
LABEL_5:
      v10 = 0;
      goto LABEL_6;
    }

    if ([v11 isWeakRelationship])
    {
      v13 = [v11 _compareIdentityKeysForObject:v7 againstObject:v8 propertiesToIgnore:v9];
    }

    else
    {
      v13 = [v7 isEqual:v8 ignoringProperties:v9];
    }

    v10 = v13;
  }

LABEL_6:

  return v10;
}

+ (BOOL)_objects:(id)a3 haveSameMeltedClass:(Class)a4 frozenClass:(Class)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [a1 meltedClass];
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [a1 frozenClass];
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)meltedObjectInStore:(id)a3
{
  v5 = a3;
  v6 = [(EKObject *)self eventStore];
  v7 = v6;
  if (v5 && v6 && v6 != v5)
  {
    if ([(EKObject *)self hasChanges])
    {
      [(EKObject *)a2 meltedObjectInStore:?];
    }

    v8 = [(EKObject *)self frozenObjectInStore:v5];
    v9 = [objc_alloc(objc_opt_class()) initWithPersistentObject:v8 objectForCopy:self];
  }

  else
  {
    v9 = self;
  }

  return v9;
}

- (Class)frozenClass
{
  v2 = [(EKObject *)self persistentObject];
  v3 = objc_opt_class();

  return v3;
}

- (void)rebase
{
  v3 = [(EKObject *)self eventStore];
  [(EKObject *)self rebaseToEventStore:v3];
}

- (void)rebaseSkippingRelationProperties:(id)a3
{
  v4 = a3;
  v5 = [(EKObject *)self eventStore];
  [(EKObject *)self rebaseSkippingRelationProperties:v4 toEventStore:v5];
}

- (void)rebaseSkippingRelationProperties:(id)a3 toEventStore:(id)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(EKObject *)self _initChangeSetIfNone];
  v8 = [(EKObject *)self persistentObject];
  v44 = [v8 objectID];

  v9 = [(EKObject *)self persistentObject];
  v10 = [v9 copy];

  [v10 _setEventStore:v7];
  v11 = [(EKObject *)self additionalFrozenProperties];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __58__EKObject_rebaseSkippingRelationProperties_toEventStore___block_invoke;
  v61[3] = &unk_1E77FD338;
  v61[4] = self;
  v43 = v10;
  v62 = v43;
  [v11 enumerateKeysAndObjectsUsingBlock:v61];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v12 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v13 = [v12 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v58;
    v45 = v6;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v58 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v57 + 1) + 8 * i);
        if (([v6 containsObject:v17] & 1) == 0)
        {
          v18 = [(EKObject *)self valueForKey:v17];
          if (v18 && [objc_opt_class() isMeltedAndNotWeakRelationshipObject:v18 forKey:v17])
          {
            [v18 rebaseToEventStore:v7];
            [(EKObject *)self changeSet];
            v20 = v19 = v12;
            v21 = [v18 frozenObject];
            [v20 forceChangeValue:v21 forKey:v17];

            v12 = v19;
            v6 = v45;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v14);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v22 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v54;
    v46 = *v54;
    do
    {
      v25 = 0;
      v47 = v23;
      do
      {
        if (*v54 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v53 + 1) + 8 * v25);
        if ([v6 containsObject:v26])
        {
          v27 = [(EKObject *)self changeSet];
          v28 = [v27 multiValueRemovals];
          [v28 setObject:0 forKeyedSubscript:v26];
        }

        else
        {
          v29 = [(EKObject *)self valueForKey:v26];
          v30 = [(EKObject *)self changeSet];
          v64 = v26;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
          [v30 rollbackChangesForKeys:v31];

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v28 = v29;
          v32 = [v28 countByEnumeratingWithState:&v49 objects:v63 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = v6;
            v35 = *v50;
            do
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v50 != v35)
                {
                  objc_enumerationMutation(v28);
                }

                v37 = *(*(&v49 + 1) + 8 * j);
                if (v37 && [objc_opt_class() isMeltedAndNotWeakRelationshipObject:v37 forKey:v26])
                {
                  [v37 rebaseToEventStore:v7];
                  v38 = [v37 frozenObject];
                  [(EKObject *)self addMultiChangedObjectValue:v38 forKey:v26];
                }
              }

              v33 = [v28 countByEnumeratingWithState:&v49 objects:v63 count:16];
            }

            while (v33);
            v27 = v28;
            v6 = v34;
            v24 = v46;
            v23 = v47;
          }

          else
          {
            v27 = v28;
          }
        }

        ++v25;
      }

      while (v25 != v23);
      v23 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v23);
  }

  v39 = [v43 objectID];
  [v7 recordObjectRebaseWithOldObjectID:v44 newObjectID:v39];
  v40 = [(EKObject *)self persistentObject];
  v41 = [v40 CADObjectID];
  [v43 setValue:v41 forKey:*MEMORY[0x1E6992B20]];

  [(EKObject *)self setPersistentObject:v43];
  v42 = *MEMORY[0x1E69E9840];
}

void __58__EKObject_rebaseSkippingRelationProperties_toEventStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() knownRelationshipSingleValueKeys];
  if ([v7 containsObject:v16])
  {
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [objc_opt_class() knownRelationshipMultiValueKeys];
    v10 = [v9 containsObject:v16];

    if ((v10 & 1) == 0)
    {
      v11 = *(a1 + 32);
      v12 = [objc_opt_class() keysToIgnoreForApplyingChanges];
      v13 = [v12 containsObject:v16];

      if ((v13 & 1) == 0)
      {
        v14 = [*(a1 + 32) changeSet];
        v15 = [v14 hasUnsavedChangeForKey:v16];

        if ((v15 & 1) == 0)
        {
          [*(a1 + 40) setValue:v5 forKey:v16];
        }
      }
    }
  }
}

- (int)rowID
{
  v2 = [(EKObject *)self objectID];
  v3 = [v2 rowID];

  return v3;
}

- (BOOL)existsInStore
{
  v2 = [(EKObject *)self persistentObject];
  if ([v2 isNew])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 existsInStore];
  }

  return v3;
}

+ (id)objectsIDsExistingInStoreFromObjects:(id)a3 eventStore:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 persistentObject];
        v16 = [v15 isNew];

        if ((v16 & 1) == 0)
        {
          v17 = [v14 CADObjectID];
          v18 = v17;
          if (v17 && ([v17 isTemporary] & 1) == 0)
          {
            [v8 addObject:v18];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v19 = [v6 connection];
    v20 = [v19 CADOperationProxySync];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __60__EKObject_objectsIDsExistingInStoreFromObjects_eventStore___block_invoke;
    v23[3] = &unk_1E77FD360;
    v24 = v8;
    v25 = v7;
    [v20 CADObjectsExist:v24 reply:v23];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v7;
}

void __60__EKObject_objectsIDsExistingInStoreFromObjects_eventStore___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v13 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    NSLog(&cfstr_ErrorCheckingW.isa, v3, v13);
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] setWithArray:?];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (([v5 containsObject:v11] & 1) == 0)
          {
            [*(a1 + 40) addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v9 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(EKObject *)self persistentObject];
    v8 = [(EKObject *)v6 persistentObject];

    v9 = [v7 isEqual:v8];
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

LABEL_7:

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(EKObject *)self _copyWithoutChangesInZone:a3];
  if ([(EKObject *)self hasUnsavedChanges])
  {
    [v4 addChangesFromObject:self copyingBackingObjects:0];
  }

  return v4;
}

- (id)shallowCopyWithoutChanges
{
  v2 = [(EKObject *)self _copyWithoutChangesInZone:0];

  return v2;
}

- (id)_copyWithoutChangesInZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(EKObject *)self persistentObject];
  v6 = [v4 initWithPersistentObject:v5 objectForCopy:self];

  v7 = [(EKObject *)self additionalFrozenProperties];
  [v6 setAdditionalFrozenProperties:v7];

  return v6;
}

- (id)duplicate
{
  v3 = [(EKObject *)self eventStore];
  v4 = [(EKObject *)self duplicateToEventStore:v3];

  return v4;
}

- (id)duplicateToEventStore:(id)a3
{
  v4 = a3;
  v5 = [(EKObject *)self copy];
  [v5 rebaseToEventStore:v4];

  [v5 markAsNew];

  return v5;
}

- (id)committedCopy
{
  v3 = [objc_opt_class() defaultPropertyKeysToSkipForRecursiveSnapshotCopies];
  v4 = [(EKObject *)self _recursiveSnapshotCopyWithPropertyAccessor:&__block_literal_global_5 propertyKeysToCopy:0 propertyKeysToSkip:v3 recurseOnWeakRelations:1];

  return v4;
}

id __25__EKObject_committedCopy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 persistentObject];
  v6 = [v5 loadedPropertyForKey:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v8 = v7;

  return v8;
}

- (id)snapshotCopyWithPropertyKeysToCopy:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() defaultPropertyKeysToSkipForRecursiveSnapshotCopies];
  v6 = [(EKObject *)self snapshotCopyWithPropertyKeysToCopy:v4 propertyKeysToSkip:v5];

  return v6;
}

id __66__EKObject_snapshotCopyWithPropertyKeysToCopy_propertyKeysToSkip___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKey:?];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v5 = v4;

  return v5;
}

- (id)previouslySavedCopy
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__EKObject_previouslySavedCopy__block_invoke;
  v6[3] = &unk_1E77FD3A8;
  v6[4] = self;
  v3 = [objc_opt_class() defaultPropertyKeysToSkipForRecursiveSnapshotCopies];
  v4 = [(EKObject *)self _recursiveSnapshotCopyWithPropertyAccessor:v6 propertyKeysToCopy:0 propertyKeysToSkip:v3 recurseOnWeakRelations:1];

  return v4;
}

id __31__EKObject_previouslySavedCopy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 _previousValueForKey:v5];
  if (!v6)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
LABEL_37:
    v19 = v20;
    goto LABEL_38;
  }

  v7 = *(a1 + 32);
  v8 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v9 = [v8 containsObject:v5];

  if (v9)
  {
    v10 = [*(a1 + 32) cachedMeltedObjectForSingleValueKey:v5];
    v11 = [v10 objectID];
    v12 = [v6 objectID];
    v13 = [v11 isEqual:v12];

    if (v13)
    {
LABEL_6:
      v19 = v10;

      goto LABEL_38;
    }

    v14 = [*(a1 + 32) additionalMeltedObjects];
    v15 = [v14 objectForKeyedSubscript:v5];

    v16 = [v15 objectID];
    v17 = [v6 objectID];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      v10 = v15;
      goto LABEL_6;
    }

    goto LABEL_36;
  }

  v21 = [objc_opt_class() knownRelationshipMultiValueKeys];
  v22 = [v21 containsObject:v5];

  if (!v22)
  {
LABEL_36:
    v20 = v6;
    goto LABEL_37;
  }

  v51 = v6;
  v23 = [v6 mutableCopy];
  v19 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v23, "count")}];
  v52 = v5;
  v24 = [*(a1 + 32) cachedMeltedObjectsForMultiValueKey:v5];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v62;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v62 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v61 + 1) + 8 * i);
        v30 = [v29 persistentObject];
        v31 = [v23 containsObject:v30];

        if (v31)
        {
          [v19 addObject:v29];
          v32 = [v29 persistentObject];
          [v23 removeObject:v32];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v26);
  }

  v33 = [*(a1 + 32) additionalMeltedObjects];
  v34 = [v33 objectForKeyedSubscript:v52];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v35 = v34;
  v36 = [v35 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v58;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v58 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v57 + 1) + 8 * j);
        v41 = [v40 persistentObject];
        v42 = [v23 containsObject:v41];

        if (v42)
        {
          [v19 addObject:v40];
          v43 = [v40 persistentObject];
          [v23 removeObject:v43];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v37);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v44 = v23;
  v45 = [v44 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v54;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v54 != v47)
        {
          objc_enumerationMutation(v44);
        }

        [v19 addObject:*(*(&v53 + 1) + 8 * k)];
      }

      v46 = [v44 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v46);
  }

  v6 = v51;
  v5 = v52;
LABEL_38:

  v49 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)_array:(id)a3 intersectedWithSet:(id)a4 minusSet:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8 | v9)
  {
    v11 = [MEMORY[0x1E695DFA8] setWithArray:v7];
    v12 = v11;
    if (v8)
    {
      [v11 intersectSet:v8];
    }

    if (v9)
    {
      [v12 minusSet:v9];
    }

    v10 = [v12 allObjects];
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (id)_recursiveSnapshotCopyWithPropertyAccessor:(id)a3 propertyKeysToCopy:(id)a4 propertyKeysToSkip:(id)a5 recurseOnWeakRelations:(BOOL)a6
{
  v101 = a6;
  v128 = *MEMORY[0x1E69E9840];
  v102 = a3;
  v9 = a4;
  v10 = a5;
  context = objc_autoreleasePoolPush();
  v11 = objc_alloc(objc_opt_class());
  v12 = [(EKObject *)self persistentObject];
  v88 = [v11 initWithPersistentObject:v12 objectForCopy:self];

  v96 = objc_opt_new();
  v13 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v14 = [objc_opt_class() knownRelationshipMultiValueKeys];
  v15 = [objc_opt_class() knownSingleValueKeysForComparison];
  v16 = [objc_opt_class() _array:v13 intersectedWithSet:v9 minusSet:v10];

  v17 = [objc_opt_class() _array:v14 intersectedWithSet:v9 minusSet:v10];

  v98 = v10;
  v99 = v9;
  v18 = [objc_opt_class() _array:v15 intersectedWithSet:v9 minusSet:v10];

  v19 = [v16 count];
  v20 = [v17 count] + v19;
  v21 = [v18 count];
  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:v20 + v21];
  [v22 addObjectsFromArray:v16];
  v93 = v17;
  [v22 addObjectsFromArray:v17];
  v83 = v18;
  [v22 addObjectsFromArray:v18];
  v103 = self;
  v23 = [(EKObject *)self persistentObject];
  v84 = v22;
  [v23 loadPropertiesIfNeeded:v22];

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v16;
  v24 = [obj countByEnumeratingWithState:&v116 objects:v127 count:16];
  v25 = 0x1E695D000uLL;
  if (v24)
  {
    v26 = v24;
    v27 = *v117;
    v97 = *v117;
    do
    {
      v28 = 0;
      do
      {
        if (*v117 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v116 + 1) + 8 * v28);
        v30 = objc_autoreleasePoolPush();
        v31 = v102[2](v102, v103, v29);
        if (v31)
        {
          v32 = objc_opt_class();
          if (v32 == objc_opt_class())
          {
            v37 = [MEMORY[0x1E695DFB0] null];
            [v96 setObject:v37 forKey:v29];
LABEL_19:

            v27 = v97;
            goto LABEL_20;
          }

          v33 = [(EKObject *)v103 eventStore];
          v34 = [v31 frozenObjectInStore:v33];
          [v96 setObject:v34 forKey:v29];

          v35 = [objc_opt_class() isWeakRelationObject:v31 forKey:v29] ^ 1;
          if ((v35 & 1) != 0 || v101)
          {
            v36 = [(EKObject *)v103 eventStore];
            v37 = [v31 meltedObjectInStore:v36];

            v38 = [objc_opt_class() defaultPropertyKeysToSkipForRecursiveSnapshotCopies];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = v99;
              v40 = v98;

              v38 = v40;
            }

            else
            {
              v39 = 0;
            }

            v41 = [v37 _recursiveSnapshotCopyWithPropertyAccessor:v102 propertyKeysToCopy:v39 propertyKeysToSkip:v38 recurseOnWeakRelations:v35 & v101];
            if (v41)
            {
              [v88 setCachedMeltedObject:v41 forSingleValueKey:v29];
            }

            else
            {
              v42 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
              {
                v43 = v42;
                v44 = objc_opt_class();
                *buf = 138412546;
                v124 = v31;
                v125 = 2114;
                v126 = v44;
                _os_log_error_impl(&dword_1A805E000, v43, OS_LOG_TYPE_ERROR, "Failed to create committed relationship for relation %@ (%{public}@)", buf, 0x16u);
              }
            }

            v25 = 0x1E695D000uLL;
            goto LABEL_19;
          }
        }

LABEL_20:

        objc_autoreleasePoolPop(v30);
        ++v28;
      }

      while (v26 != v28);
      v26 = [obj countByEnumeratingWithState:&v116 objects:v127 count:16];
    }

    while (v26);
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v89 = v93;
  v45 = [v89 countByEnumeratingWithState:&v112 objects:v122 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v113;
    v86 = *v113;
    do
    {
      v48 = 0;
      v87 = v46;
      do
      {
        if (*v113 != v47)
        {
          objc_enumerationMutation(v89);
        }

        v49 = *(*(&v112 + 1) + 8 * v48);
        v50 = objc_autoreleasePoolPush();
        v51 = v102[2](v102, v103, v49);
        if (v51)
        {
          v52 = objc_opt_class();
          v53 = *(v25 + 4016);
          if (v52 == objc_opt_class())
          {
            v70 = [MEMORY[0x1E695DFD8] set];
            [v96 setObject:v70 forKey:v49];
          }

          else
          {
            v94 = v50;
            v95 = v48;
            v54 = [v51 valueForKey:@"frozenObject"];
            v91 = v49;
            [v96 setObject:v54 forKey:v49];

            v55 = objc_opt_new();
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v92 = v51;
            v100 = v51;
            v56 = [v100 countByEnumeratingWithState:&v108 objects:v121 count:16];
            if (v56)
            {
              v57 = v56;
              v58 = *v109;
              do
              {
                v59 = 0;
                do
                {
                  if (*v109 != v58)
                  {
                    objc_enumerationMutation(v100);
                  }

                  v60 = *(*(&v108 + 1) + 8 * v59);
                  v61 = [(EKObject *)v103 eventStore];
                  v62 = [v60 meltedObjectInStore:v61];

                  v63 = [objc_opt_class() defaultPropertyKeysToSkipForRecursiveSnapshotCopies];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v64 = v99;
                    v65 = v98;

                    v63 = v65;
                  }

                  else
                  {
                    v64 = 0;
                  }

                  v66 = [v62 _recursiveSnapshotCopyWithPropertyAccessor:v102 propertyKeysToCopy:v64 propertyKeysToSkip:v63 recurseOnWeakRelations:v101];
                  if (v66)
                  {
                    [v55 addObject:v66];
                  }

                  else
                  {
                    v67 = EKLogHandle;
                    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      v68 = v67;
                      v69 = objc_opt_class();
                      *buf = 138412546;
                      v124 = 0;
                      v125 = 2114;
                      v126 = v69;
                      _os_log_error_impl(&dword_1A805E000, v68, OS_LOG_TYPE_ERROR, "Failed to create committed relationship for relation %@ (%{public}@)", buf, 0x16u);
                    }
                  }

                  ++v59;
                }

                while (v57 != v59);
                v57 = [v100 countByEnumeratingWithState:&v108 objects:v121 count:16];
              }

              while (v57);
            }

            v70 = v55;
            v71 = [MEMORY[0x1E695DFD8] setWithSet:v55];
            [v88 setCachedMeltedObjects:v71 forMultiValueKey:v91];

            v25 = 0x1E695D000;
            v47 = v86;
            v46 = v87;
            v50 = v94;
            v48 = v95;
            v51 = v92;
          }
        }

        objc_autoreleasePoolPop(v50);
        ++v48;
      }

      while (v48 != v46);
      v46 = [v89 countByEnumeratingWithState:&v112 objects:v122 count:16];
    }

    while (v46);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v72 = v83;
  v73 = [v72 countByEnumeratingWithState:&v104 objects:v120 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v105;
    do
    {
      for (i = 0; i != v74; ++i)
      {
        if (*v105 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = *(*(&v104 + 1) + 8 * i);
        v78 = objc_autoreleasePoolPush();
        v79 = v102[2](v102, v103, v77);
        if (v79)
        {
          [v96 setObject:v79 forKey:v77];
        }

        objc_autoreleasePoolPop(v78);
      }

      v74 = [v72 countByEnumeratingWithState:&v104 objects:v120 count:16];
    }

    while (v74);
  }

  v80 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v96];
  [v88 setAdditionalFrozenProperties:v80];

  [v88 _resetInternalStateWithForce:0];
  objc_autoreleasePoolPop(context);

  v81 = *MEMORY[0x1E69E9840];

  return v88;
}

- (BOOL)_reset
{
  v3 = [(EKObject *)self persistentObject];
  [v3 reset];

  return [(EKObject *)self _resetCommon];
}

- (id)committedValueForKey:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKObject *)self _previousValueForKey:v4];
  if (v5)
  {
    v6 = [objc_opt_class() knownRelationshipSingleValueKeys];
    v7 = [v6 containsObject:v4];

    if (v7)
    {
      v8 = [(EKObject *)self eventStore];
      v9 = [v5 meltedObjectInStore:v8];

      v5 = v9;
    }

    else
    {
      v10 = [objc_opt_class() knownRelationshipMultiValueKeys];
      v11 = [v10 containsObject:v4];

      if (v11)
      {
        v12 = v5;
        v13 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v12, "count")}];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v25;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v24 + 1) + 8 * i);
              v20 = [(EKObject *)self eventStore];
              v21 = [v19 meltedObjectInStore:v20];

              [v13 addObject:v21];
            }

            v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v16);
        }

        v5 = [MEMORY[0x1E695DFD8] setWithSet:v13];
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)markAsNew
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        if ([(EKObject *)self _hasChangesForKey:v8])
        {
          v9 = [(EKObject *)self valueForKey:v8];
          if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v9 forKey:v8])
          {
            v10 = [v9 existingMeltedObject];
            [v10 markAsNew];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v11 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * j);
        if ([(EKObject *)self _hasChangesForKey:v15])
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v16 = [(EKObject *)self valueForKey:v15];
          v17 = [v16 countByEnumeratingWithState:&v25 objects:v37 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v26;
            do
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v26 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v25 + 1) + 8 * k);
                if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v21 forKey:v15])
                {
                  v22 = [v21 existingMeltedObject];
                  [v22 markAsNew];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v25 objects:v37 count:16];
            }

            while (v18);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v12);
  }

  [(EKObject *)self markAsNewShallow];
  v23 = *MEMORY[0x1E69E9840];
}

- (void)markAsNewShallow
{
  [(EKObject *)self _initChangeSetIfNone];
  v3 = [(EKObject *)self changeSet];
  [v3 setIsNew:1];

  v4 = [(EKObject *)self changeSet];
  [v4 setIsSaved:0];
}

- (void)markAsUndeleted
{
  [(EKObject *)self rebase];

  [(EKObject *)self _markAsUndeletedCommon];
}

- (void)markAsCommitted
{
  [(EKObject *)self _markAsCommittedCommon];

  [(EKObject *)self _performBlockOnOwnedCachedRelatedObjects:&__block_literal_global_29];
}

- (void)_performBlockOnOwnedCachedRelatedObjects:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [(EKObject *)self cachedMeltedObjectForSingleValueKey:v10];
        if (v11 && [objc_opt_class() isMeltedAndNotWeakRelationshipObject:v11 forKey:v10])
        {
          v4[2](v4, v11);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v23 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v23)
  {
    v22 = *v29;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * j);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v14 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:v13];
        v15 = [v14 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v25;
          do
          {
            for (k = 0; k != v16; ++k)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v24 + 1) + 8 * k);
              if (v19 && [objc_opt_class() isMeltedAndNotWeakRelationshipObject:v19 forKey:v13])
              {
                v4[2](v4, v19);
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v24 objects:v36 count:16];
          }

          while (v16);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v23);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)updatePersistentValueForKeyIfNeeded:(id)a3
{
  v4 = a3;
  if ([(EKObject *)self _hasChangesForKey:?])
  {
    [(EKObject *)self _updatePersistentValueForKey:v4];
  }
}

- (void)_updatePersistentValueForKey:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKObject *)self _propertyValueForKey:v4];
  v6 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = v5;
    v9 = [(EKObject *)self persistentObject];
    v10 = [v8 persistentObject];
    [v9 setValue:v10 forKey:v4];

    [v8 updatePersistentObject];
  }

  else
  {
    v11 = [objc_opt_class() knownRelationshipMultiValueKeys];
    v12 = [v11 containsObject:v4];

    if (v12)
    {
      v13 = v5;
      v14 = [(EKObject *)self persistentObject];
      v15 = [v13 valueForKey:@"persistentObject"];
      [v14 setValue:v15 forKey:v4];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = v13;
      v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v23;
        do
        {
          v20 = 0;
          do
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v22 + 1) + 8 * v20++) updatePersistentObject];
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v18);
      }
    }

    else
    {
      v16 = [(EKObject *)self persistentObject];
      [v16 setValue:v5 forKey:v4];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)_propertyValueForKey:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(EKObject *)self meltedAndCachedSingleRelationObjectForKey:v4];
  }

  else
  {
    v8 = [objc_opt_class() knownRelationshipMultiValueKeys];
    v9 = [v8 containsObject:v4];

    if (v9)
    {
      [(EKObject *)self meltedAndCachedMultiRelationObjectsForKey:v4];
    }

    else
    {
      [(EKObject *)self singleChangedValueForKey:v4];
    }
    v7 = ;
  }

  v10 = v7;
  v11 = [MEMORY[0x1E695DFB0] null];

  if (v10 == v11)
  {

    v10 = 0;
  }

  return v10;
}

- (void)insertPersistentObjectIfNeeded
{
  v3 = [(EKObject *)self persistentObject];
  if ([v3 isNew] && (objc_msgSend(v3, "_isPendingInsert") & 1) == 0)
  {
    v2 = [v3 eventStore];
    [v2 _insertObject:v3];
  }
}

- (void)updatePersistentObjectSkippingProperties:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKObject *)self changeSet];
  v6 = [v5 changedKeys];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        if (([v4 containsObject:v12] & 1) == 0)
        {
          [(EKObject *)self _updatePersistentValueForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v9);
  }

  v13 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v42 + 1) + 8 * j);
        if (([v4 containsObject:v18] & 1) == 0 && (objc_msgSend(v7, "containsObject:", v18) & 1) == 0 && -[EKObject _hasChangesForKey:](self, "_hasChangesForKey:", v18))
        {
          v19 = [(EKObject *)self meltedAndCachedSingleRelationObjectForKey:v18];
          [v19 updatePersistentObject];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v15);
  }

  v32 = v13;
  v20 = [objc_opt_class() knownRelationshipMultiValueKeys];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v39;
    v33 = v20;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v38 + 1) + 8 * k);
        if (([v4 containsObject:{v25, v32}] & 1) == 0 && (objc_msgSend(v7, "containsObject:", v25) & 1) == 0 && -[EKObject _hasChangesForKey:](self, "_hasChangesForKey:", v25))
        {
          v26 = [(EKObject *)self meltedAndCachedMultiRelationObjectsForKey:v25];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v27 = [v26 countByEnumeratingWithState:&v34 objects:v50 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v35;
            do
            {
              for (m = 0; m != v28; ++m)
              {
                if (*v35 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                [*(*(&v34 + 1) + 8 * m) updatePersistentObject];
              }

              v28 = [v26 countByEnumeratingWithState:&v34 objects:v50 count:16];
            }

            while (v28);
          }

          v20 = v33;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v22);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)deletePersistentObject
{
  v3 = [(EKObject *)self persistentObject];
  v2 = [v3 eventStore];
  [v2 _deleteObject:v3];
}

- (void)addCoCommitObject:(id)a3
{
  v4 = a3;
  v6 = [(EKObject *)self persistentObject];
  v5 = [v4 persistentObject];

  [v6 addCoCommitObject:v5];
}

- (id)_basicSummaryWithDepth:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [EKDiff _indentStringAtDepth:a3];
  v5 = [MEMORY[0x1E696AD60] string];
  v20 = v4;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@ <0x%x>", v4, objc_opt_class(), self];
  [v5 appendString:v6];

  v7 = [objc_opt_class() knownSummaryKeys];
  v8 = [objc_opt_class() knownIdentityKeysForComparison];
  v9 = [v7 arrayByAddingObjectsFromArray:v8];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [(EKObject *)self valueForKey:v15];
        if (v16)
        {
          v17 = [(EKObject *)self valueForKey:v15];
          [v5 appendFormat:@", %@:%@", v15, v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_summaryWithDepth:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD60] string];
  v6 = [(EKObject *)self _basicSummaryWithDepth:a3];
  [v5 appendString:v6];

  [(EKObject *)self _addSummaryWithDepth:0 toMutableString:v5 indentFirstLine:0];

  return v5;
}

- (void)_addSummaryWithDepth:(int64_t)a3 toMutableString:(id)a4 indentFirstLine:(BOOL)a5
{
  v7 = a4;
  v8 = [objc_opt_class() knownSingleValueKeysForComparison];
  [EKDiff _addSummaryWithDepth:a3 toMutableString:v7 forSingleValueKeys:v8 firstObject:self secondObject:0];

  v10 = [objc_opt_class() knownDerivedAndSingleValueRelationshipKeys];
  [EKDiff _addSummaryWithDepth:a3 toMutableString:v7 forRelationshipSingleValueKeys:v10 firstObject:self secondObject:0];
  v9 = [objc_opt_class() knownRelationshipMultiValueKeys];
  [EKDiff _addSummaryWithDepth:a3 toMutableString:v7 forRelationshipMultiValueKeys:v9 firstObject:self secondObject:0];
}

- (void)_performWithLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock([(EKObject *)self _lock]);
  v4[2](v4);

  v5 = [(EKObject *)self _lock];

  os_unfair_lock_unlock(v5);
}

- (id)cachedValueForKey:(id)a3 populateBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__18;
  v24 = __Block_byref_object_dispose__18;
  v25 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__EKObject_Shared__cachedValueForKey_populateBlock___block_invoke;
  v17[3] = &unk_1E77FD688;
  v19 = &v20;
  v17[4] = self;
  v8 = v6;
  v18 = v8;
  [(EKObject *)self _performWithLock:v17];
  v9 = v21[5];
  if (v7 && !v9)
  {
    v10 = v7[2](v7);
    v11 = v21[5];
    v21[5] = v10;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__EKObject_Shared__cachedValueForKey_populateBlock___block_invoke_2;
    v14[3] = &unk_1E77FD468;
    v14[4] = self;
    v15 = v8;
    v16 = &v20;
    [(EKObject *)self _performWithLock:v14];

    v9 = v21[5];
  }

  v12 = v9;

  _Block_object_dispose(&v20, 8);

  return v12;
}

void __52__EKObject_Shared__cachedValueForKey_populateBlock___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedValues];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __52__EKObject_Shared__cachedValueForKey_populateBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedValues];
  v7 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = *(*(a1 + 48) + 8);
  if (v7)
  {
    v4 = v7;
    v5 = *(v3 + 40);
    *(v3 + 40) = v4;
  }

  else
  {
    v6 = *(v3 + 40);
    v5 = [*(a1 + 32) _cachedValues];
    [v5 setObject:v6 forKeyedSubscript:*(a1 + 40)];
  }
}

- (void)setCachedValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__EKObject_Shared__setCachedValue_forKey___block_invoke;
  v10[3] = &unk_1E77FD7C8;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(EKObject *)self _performWithLock:v10];
}

void __42__EKObject_Shared__setCachedValue_forKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) _cachedValues];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)clearCachedValueForKey:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__EKObject_Shared__clearCachedValueForKey___block_invoke;
  v6[3] = &unk_1E77FD580;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(EKObject *)self _performWithLock:v6];
}

void __43__EKObject_Shared__clearCachedValueForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedValues];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)clearCachedValuesForKeys:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__EKObject_Shared__clearCachedValuesForKeys___block_invoke;
  v6[3] = &unk_1E77FD580;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(EKObject *)self _performWithLock:v6];
}

void __45__EKObject_Shared__clearCachedValuesForKeys___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 40) _cachedValues];
        [v8 removeObjectForKey:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)cachedValueForKey:(id)a3 expectingCachedValue:(id)a4 forMasterKey:(id)a5 relatedKeys:(id)a6 populateBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__18;
  v40 = __Block_byref_object_dispose__18;
  v41 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __98__EKObject_Shared__cachedValueForKey_expectingCachedValue_forMasterKey_relatedKeys_populateBlock___block_invoke;
  v31[3] = &unk_1E77FF398;
  v31[4] = self;
  v17 = v14;
  v32 = v17;
  v18 = v13;
  v33 = v18;
  v35 = &v36;
  v19 = v12;
  v34 = v19;
  [(EKObject *)self _performWithLock:v31];
  v20 = v37[5];
  if (v16 && !v20)
  {
    v21 = v16[2](v16);
    v22 = v37[5];
    v37[5] = v21;

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __98__EKObject_Shared__cachedValueForKey_expectingCachedValue_forMasterKey_relatedKeys_populateBlock___block_invoke_2;
    v25[3] = &unk_1E77FF3C0;
    v25[4] = self;
    v26 = v17;
    v27 = v18;
    v28 = v15;
    v29 = v19;
    v30 = &v36;
    [(EKObject *)self _performWithLock:v25];

    v20 = v37[5];
  }

  v23 = v20;

  _Block_object_dispose(&v36, 8);

  return v23;
}

void __98__EKObject_Shared__cachedValueForKey_expectingCachedValue_forMasterKey_relatedKeys_populateBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedValues];
  v8 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = *(a1 + 48);
  if (!(v3 | v8) || [v3 isEqual:v8])
  {
    v4 = [*(a1 + 32) _cachedValues];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 56)];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __98__EKObject_Shared__cachedValueForKey_expectingCachedValue_forMasterKey_relatedKeys_populateBlock___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _cachedValues];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = *(a1 + 48);
  if (v4 | v3 && ([v4 isEqual:v3] & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = *(a1 + 56);
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * v9);
          v11 = [*(a1 + 32) _cachedValues];
          [v11 removeObjectForKey:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    v12 = *(a1 + 48);
    v13 = [*(a1 + 32) _cachedValues];
    [v13 setObject:v12 forKeyedSubscript:*(a1 + 40)];
  }

  v14 = *(*(*(a1 + 72) + 8) + 40);
  v15 = [*(a1 + 32) _cachedValues];
  [v15 setObject:v14 forKeyedSubscript:*(a1 + 64)];

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)knownDerivedAndSingleValueRelationshipKeys
{
  v2 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v3 = [objc_opt_class() knownDerivedRelationshipKeys];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

+ (id)knownRelationshipWeakKeys
{
  if (knownRelationshipWeakKeys_onceToken_3 != -1)
  {
    +[EKObject(Shared) knownRelationshipWeakKeys];
  }

  v3 = knownRelationshipWeakKeys_keys_3;

  return v3;
}

void __45__EKObject_Shared__knownRelationshipWeakKeys__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B18];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownRelationshipWeakKeys_keys_3;
  knownRelationshipWeakKeys_keys_3 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isMeltedAndNotWeakRelationshipObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && ([v6 isFrozen] & 1) == 0)
  {
    v9 = [v6 existingMeltedObject];
    v10 = [a1 isWeakRelationObject:v9 forKey:v7];

    v8 = v10 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isWeakRelationObject:(id)a3 forKey:(id)a4
{
  v5 = a4;
  if ([objc_msgSend(objc_opt_class() "meltedClass")])
  {
    v6 = 1;
  }

  else
  {
    v7 = [a1 knownRelationshipWeakKeys];
    v6 = [v7 containsObject:v5];
  }

  return v6;
}

- (BOOL)validate:(id *)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = [(EKObject *)self _validationContext];
  if (!v5)
  {
    v5 = [[EKObjectValidationContext alloc] initWithRootObject:self];
    [(EKObject *)self set_validationContext:v5];
  }

  [(EKObjectValidationContext *)v5 setDepth:[(EKObjectValidationContext *)v5 depth]+ 1];
  if ([(EKObjectValidationContext *)v5 depth]>= 0x33)
  {
    [(EKObjectValidationContext *)v5 setReachedMaxDepth:1];
    v6 = [(EKObjectValidationContext *)v5 rootObject];
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKObject(Shared) *)v7 validate:v6];
      if (!a3)
      {
        goto LABEL_7;
      }
    }

    else if (!a3)
    {
LABEL_7:
      v8 = [(EKObject *)self _validationContext];
      [v8 faultIfNeededForObject:self];

      [(EKObject *)self set_validationContext:0];
      v9 = 0;
      goto LABEL_65;
    }

    *a3 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:5];
    goto LABEL_7;
  }

  v53 = a3;
  v54 = v5;
  v10 = [objc_opt_class() knownRelationshipWeakKeys];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v11 = [objc_opt_class() knownRelationshipSingleValueKeysForValidation];
  v12 = [v11 countByEnumeratingWithState:&v66 objects:v80 count:16];
  v55 = v10;
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v67;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v67 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v66 + 1) + 8 * v16);
        if (([v10 containsObject:v17] & 1) != 0 || -[EKObject isPropertyUnavailable:](self, "isPropertyUnavailable:", v17) && !-[EKObject shouldLoadRelationshipForValidation:](self, "shouldLoadRelationshipForValidation:", v17))
        {
          v18 = 0;
        }

        else
        {
          v18 = [(EKObject *)self valueForKey:v17];
          if (v18 && [objc_opt_class() isMeltedAndNotWeakRelationshipObject:v18 forKey:v17])
          {
            v65 = v14;
            v19 = [v18 validateWithOwner:self error:&v65];
            v6 = v65;

            if ((v19 & 1) == 0)
            {
              v21 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
              {
                v44 = v21;
                v45 = objc_opt_class();
                v46 = [(EKObject *)self uniqueIdentifier];
                *buf = 138544130;
                v73 = v45;
                v74 = 2114;
                v75 = v46;
                v76 = 2114;
                v77 = v17;
                v78 = 2112;
                v79 = v6;
                _os_log_error_impl(&dword_1A805E000, v44, OS_LOG_TYPE_ERROR, "Object of type %{public}@ (uniqueIdentifier = %{public}@) failed validation while validating relation %{public}@ with error [%@].", buf, 0x2Au);
              }

              v22 = [(EKObject *)self _validationContext];
              [v22 faultIfNeededForObject:self];

              [(EKObject *)self set_validationContext:0];
              v10 = v55;
              if (v53 && v6)
              {
                v23 = v6;
                *v53 = v6;
              }

              v9 = 0;
              v5 = v54;
              goto LABEL_64;
            }

            v14 = v6;
            v10 = v55;
          }
        }

        ++v16;
      }

      while (v13 != v16);
      v20 = [v11 countByEnumeratingWithState:&v66 objects:v80 count:16];
      v13 = v20;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v24 = [objc_opt_class() knownRelationshipMultiValueKeysForValidation];
  v25 = [v24 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v62;
    v52 = v24;
    v50 = *v62;
    do
    {
      v28 = 0;
      v51 = v26;
      do
      {
        if (*v62 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v61 + 1) + 8 * v28);
        if (([v10 containsObject:v29] & 1) == 0 && (!-[EKObject isPropertyUnavailable:](self, "isPropertyUnavailable:", v29) || -[EKObject shouldLoadRelationshipForValidation:](self, "shouldLoadRelationshipForValidation:", v29)))
        {
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v30 = [(EKObject *)self valueForKey:v29];
          v31 = [v30 countByEnumeratingWithState:&v57 objects:v70 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v58;
            while (2)
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v58 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v57 + 1) + 8 * i);
                if (v35 && [objc_opt_class() isMeltedAndNotWeakRelationshipObject:v35 forKey:v29])
                {
                  v56 = v14;
                  v36 = v14;
                  v37 = [v35 validateWithOwner:self error:&v56];
                  v6 = v56;

                  if ((v37 & 1) == 0)
                  {
                    v39 = EKLogHandle;
                    v10 = v55;
                    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      v47 = v39;
                      v48 = objc_opt_class();
                      v49 = [(EKObject *)self uniqueIdentifier];
                      *buf = 138544130;
                      v73 = v48;
                      v74 = 2114;
                      v75 = v49;
                      v76 = 2114;
                      v77 = v29;
                      v78 = 2112;
                      v79 = v6;
                      _os_log_error_impl(&dword_1A805E000, v47, OS_LOG_TYPE_ERROR, "Object of type %{public}@ (uniqueIdentifier = %{public}@) failed validation while validating relation %{public}@ with error [%@].", buf, 0x2Au);
                    }

                    v40 = [(EKObject *)self _validationContext];
                    [v40 faultIfNeededForObject:self];

                    [(EKObject *)self set_validationContext:0];
                    v5 = v54;
                    if (v53 && v6)
                    {
                      v41 = v6;
                      *v53 = v6;
                    }

                    v9 = 0;
                    goto LABEL_64;
                  }

                  v14 = v6;
                  v10 = v55;
                }
              }

              v32 = [v30 countByEnumeratingWithState:&v57 objects:v70 count:16];
              if (v32)
              {
                continue;
              }

              break;
            }
          }

          v26 = v51;
          v24 = v52;
          v27 = v50;
        }

        ++v28;
      }

      while (v28 != v26);
      v26 = [v24 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v26);
  }

  if (v53 && v14)
  {
    v38 = v14;
    *v53 = v14;
  }

  v5 = v54;
  [(EKObjectValidationContext *)v54 setDepth:[(EKObjectValidationContext *)v54 depth]- 1];
  [(EKObject *)self set_validationContext:0];
  v9 = 1;
  v6 = v14;
LABEL_64:

LABEL_65:
  v42 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)validateWithOwner:(id)a3 error:(id *)a4
{
  v6 = [a3 _validationContext];
  [(EKObject *)self set_validationContext:v6];

  return [(EKObject *)self validate:a4];
}

- (void)_initChangeSetIfNone
{
  v3 = [(EKObject *)self changeSet];

  if (!v3)
  {
    v4 = objc_alloc_init(EKChangeSet);
    [(EKObject *)self setChangeSet:v4];
  }
}

- (void)_markAsNotNewCommon
{
  v2 = [(EKObject *)self changeSet];
  [v2 setIsNew:0];
}

- (void)_markAsDeletedCommon
{
  [(EKObject *)self _initChangeSetIfNone];
  v3 = [(EKObject *)self changeSet];
  [v3 setIsDeleted:1];
}

- (void)_markAsUndeletedCommon
{
  [(EKObject *)self markAsNew];
  v3 = [(EKObject *)self changeSet];
  [v3 setIsDeleted:0];

  v4 = [(EKObject *)self changeSet];
  [v4 setIsUndeleted:1];
}

- (void)_markAsSavedCommon
{
  v42 = *MEMORY[0x1E69E9840];
  v25 = [(EKObject *)self frozenObject];
  v24 = [(EKObject *)self changeSet];
  [v24 markChangesAsSaved];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v4 = [v3 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v36;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v35 + 1) + 8 * i);
        if ([(EKObject *)self _hasChangesForKey:v8])
        {
          v9 = [(EKObject *)self valueForKey:v8];
          if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v9 forKey:v8])
          {
            v10 = [v9 existingMeltedObject];
            [v10 markAsSaved];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v5);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v11 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v31 + 1) + 8 * j);
        if ([(EKObject *)self _hasChangesForKey:v15])
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v16 = [(EKObject *)self valueForKey:v15];
          v17 = [v16 countByEnumeratingWithState:&v27 objects:v39 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v28;
            do
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v28 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v27 + 1) + 8 * k);
                if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v21 forKey:v15])
                {
                  v22 = [v21 existingMeltedObject];
                  [v22 markAsSaved];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v27 objects:v39 count:16];
            }

            while (v18);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v12);
  }

  [(EKObject *)self _resetWithFrozenObject:v25];
  [(EKObject *)self setChangeSet:v24];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_markAsCommittedCommon
{
  v3 = [(EKObject *)self changeSet];
  [v3 setIsNew:0];

  v4 = [(EKObject *)self changeSet];
  [v4 setIsModified:0];
}

- (BOOL)isDeleted
{
  v2 = [(EKObject *)self changeSet];
  v3 = [v2 isDeleted];

  return v3;
}

- (BOOL)isUndeleted
{
  v2 = [(EKObject *)self changeSet];
  v3 = [v2 isUndeleted];

  return v3;
}

- (BOOL)isSaved
{
  v3 = [(EKObject *)self changeSet];
  if ([v3 isSaved])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(EKObject *)self backingObject];
    v4 = v5 != 0;
  }

  return v4;
}

- (BOOL)_hasChanges
{
  v3 = [(EKObject *)self changeSet];
  if (v3)
  {
  }

  else
  {
    v4 = [(EKObject *)self _cachedMeltedObjectsCount];
    if (!v4)
    {
      return v4;
    }
  }

  v5 = [(EKObject *)self changeSet];
  v6 = [v5 hasChanges];

  if (v6)
  {
    LOBYTE(v4) = 1;
  }

  else
  {

    LOBYTE(v4) = [(EKObject *)self _hasChangeHelperInKeys:0 ignoreKeys:0 checkUnsaved:0];
  }

  return v4;
}

- (BOOL)_hasUnsavedChangesInKeys:(id)a3 ignoreKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EKObject *)self changeSet];
  if (v8)
  {
  }

  else if (![(EKObject *)self _cachedMeltedObjectsCount])
  {
    v19 = 0;
    goto LABEL_17;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [MEMORY[0x1E695DFA8] setWithArray:v9];
  if (v6)
  {
    v11 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(EKObject *)self changeSet];
  v13 = [v12 hasUnsavedChanges];

  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = MEMORY[0x1E695DFA8];
  v15 = [(EKObject *)self changeSet];
  v16 = [v15 changedKeys];
  v17 = [v14 setWithSet:v16];

  [v17 minusSet:v10];
  if (v11)
  {
    [v17 intersectSet:v11];
  }

  v18 = [v17 count];

  if (v18)
  {
    v19 = 1;
  }

  else
  {
LABEL_15:
    v19 = [(EKObject *)self _hasChangeHelperInKeys:v11 ignoreKeys:v10 checkUnsaved:1];
  }

LABEL_17:
  return v19;
}

- (BOOL)_hasChangeHelperInKeys:(id)a3 ignoreKeys:(id)a4 checkUnsaved:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __67__EKObject_Shared___hasChangeHelperInKeys_ignoreKeys_checkUnsaved___block_invoke;
  v21 = &unk_1E77FF3E8;
  v25 = a5;
  v22 = v9;
  v23 = v8;
  v24 = self;
  v10 = v8;
  v11 = v9;
  v12 = _Block_copy(&v18);
  v13 = [(EKObject *)self _singleRelationshipKeysToCheckForChanges:v18];
  v14 = v12[2](v12, v13);

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = [(EKObject *)self _multiRelationshipKeysToCheckForChanges];
    v15 = v12[2](v12, v16);
  }

  return v15;
}

uint64_t __67__EKObject_Shared___hasChangeHelperInKeys_ignoreKeys_checkUnsaved___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (*(a1 + 56) == 1 && ([*(a1 + 32) containsObject:{*(*(&v13 + 1) + 8 * v7), v13}] & 1) == 0 && ((v9 = *(a1 + 40)) == 0 || (objc_msgSend(v9, "containsObject:", v8)) || (*(a1 + 56) & 1) == 0) && (objc_msgSend(*(a1 + 48), "_hasChangesForKey:checkUnsaved:", v8, *(a1 + 56), v13))
        {
          v10 = 1;
          goto LABEL_16;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_16:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_singleRelationshipKeysToCheckForChanges
{
  v2 = MEMORY[0x1E695DFA8];
  v3 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v4 = [v2 setWithArray:v3];

  v5 = MEMORY[0x1E695DFD8];
  v6 = [objc_opt_class() knownDerivedRelationshipKeys];
  v7 = [v5 setWithArray:v6];
  [v4 unionSet:v7];

  return v4;
}

- (id)_multiRelationshipKeysToCheckForChanges
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [objc_opt_class() knownRelationshipMultiValueKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (BOOL)_hasChangesForKey:(id)a3 checkUnsaved:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v4 || (-[EKObject changeSet](self, "changeSet"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasUnsavedChangeForKey:v6], v7, (v8 & 1) == 0))
  {
    if ([(EKObject *)self isPropertyUnavailable:v6])
    {
      LOBYTE(v9) = 0;
      goto LABEL_22;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__EKObject_Shared___hasChangesForKey_checkUnsaved___block_invoke;
    aBlock[3] = &__block_descriptor_33_e30_B16__0___EKFrozenMeltedPair__8l;
    v25 = v4;
    v10 = _Block_copy(aBlock);
    v11 = [(EKObject *)self _singleRelationshipKeysToCheckForChanges];
    v12 = [v11 containsObject:v6];

    if (v12)
    {
      v13 = [(EKObject *)self cachedMeltedObjectForSingleValueKey:v6];
      LOBYTE(v9) = v10[2](v10, v13);
    }

    else
    {
      v14 = [(EKObject *)self _multiRelationshipKeysToCheckForChanges];
      v15 = [v14 containsObject:v6];

      if (!v15)
      {
        LOBYTE(v9) = 0;
LABEL_21:

        goto LABEL_22;
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v13 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:v6, 0];
      v9 = [v13 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v9)
      {
        v16 = *v21;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v13);
            }

            if (v10[2](v10, *(*(&v20 + 1) + 8 * i)))
            {
              LOBYTE(v9) = 1;
              goto LABEL_20;
            }
          }

          v9 = [v13 countByEnumeratingWithState:&v20 objects:v26 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  LOBYTE(v9) = 1;
LABEL_22:

  v18 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __51__EKObject_Shared___hasChangesForKey_checkUnsaved___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 isFrozen] & 1) == 0)
  {
    if (*(a1 + 32) == 1)
    {
      v6 = [v4 hasUnsavedChanges];
    }

    else
    {
      v6 = [v4 hasChanges];
    }

    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isOnlyChangedKey:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  LOBYTE(self) = [(EKObject *)self _areOnlyChangedKeys:v4];

  return self;
}

- (BOOL)_areOnlyChangedKeys:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKObject *)self changeSet];
  v6 = [v5 hasUnsavedChanges];

  if (v6)
  {
    v7 = [(EKObject *)self changeSet];
    v8 = [v7 changedKeys];
  }

  else
  {
    v8 = 0;
  }

  if ([v8 count] && !objc_msgSend(v8, "isSubsetOfSet:", v4))
  {
    v20 = 0;
    goto LABEL_28;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [(EKObject *)self _singleRelationshipKeysToCheckForChanges];
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
LABEL_8:
    v13 = 0;
    while (1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      if ([(EKObject *)self _hasChangesForKey:v14])
      {
        if (![v4 containsObject:v14])
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v11)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [(EKObject *)self _multiRelationshipKeysToCheckForChanges];
    v15 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (!v15)
    {
      v20 = 1;
      goto LABEL_26;
    }

    v16 = v15;
    v17 = *v24;
LABEL_17:
    v18 = 0;
    while (1)
    {
      if (*v24 != v17)
      {
        objc_enumerationMutation(v9);
      }

      v19 = *(*(&v23 + 1) + 8 * v18);
      if ([(EKObject *)self _hasChangesForKey:v19])
      {
        if (![v4 containsObject:v19])
        {
          break;
        }
      }

      if (v16 == ++v18)
      {
        v16 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
        v20 = 1;
        if (v16)
        {
          goto LABEL_17;
        }

        goto LABEL_26;
      }
    }
  }

  v20 = 0;
LABEL_26:

LABEL_28:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)_previousValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(EKObject *)self additionalFrozenProperties];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v8 = 0;
  }

  else if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(EKObject *)self backingObject];
    v8 = [v9 valueForKey:v4];
  }

  return v8;
}

void __92__EKObject_Shared___addChangesFromObject_passingTest_ignoreRelations_copyingBackingObjects___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = [*(a1 + 32) valueForKey:*(a1 + 40)];
    v3 = objc_opt_new();
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = *(*(*(a1 + 48) + 8) + 40);
          v13 = [v11 uniqueIdentifier];
          [v12 setObject:v11 forKeyedSubscript:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_addChangesFromObject:(id)a3 ignoringDifferencesFrom:(id)a4 changesToSkip:(id)a5 copyingBackingObjects:(BOOL)a6
{
  v121 = a6;
  v197 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9 != self)
  {
    v120 = v11;
    v126 = v10;
    context = objc_autoreleasePoolPush();
    v119 = [(EKObject *)v9 changeSet];
    v118 = [v119 changedSingleValueKeys];
    v12 = self;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    v186 = 0u;
    v131 = v12;
    v15 = [objc_opt_class() knownRelationshipSingleValueKeys];
    v16 = [v15 countByEnumeratingWithState:&v183 objects:v196 count:16];
    v129 = v9;
    if (v16)
    {
      v17 = v16;
      v18 = *v184;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v184 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v183 + 1) + 8 * i);
          if (![(EKObject *)v9 isPropertyUnavailable:v20])
          {
            v21 = [(EKObject *)v9 frozenOrMeltedCachedSingleRelationObjectForKey:v20];
            if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v21 forKey:v20])
            {
              v22 = [v21 existingMeltedObject];
              v23 = [v22 changeSet];
              if ([v23 hasChanges])
              {
                [v14 addObject:v20];
              }

              v9 = v129;
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v183 objects:v196 count:16];
      }

      while (v17);
    }

    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v24 = [objc_opt_class() knownSingleValueKeysForComparison];
    v25 = [v24 countByEnumeratingWithState:&v179 objects:v195 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v180;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v180 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v179 + 1) + 8 * j);
          if (([v118 containsObject:v29] & 1) == 0 && (objc_msgSend(v14, "containsObject:", v29) & 1) == 0)
          {
            [v13 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v179 objects:v195 count:16];
      }

      while (v26);
    }

    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    v30 = [objc_opt_class() knownDerivedAndSingleValueRelationshipKeys];
    v31 = [v30 countByEnumeratingWithState:&v175 objects:v194 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v176;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v176 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v175 + 1) + 8 * k);
          if (([v118 containsObject:v35] & 1) == 0 && (objc_msgSend(v14, "containsObject:", v35) & 1) == 0)
          {
            [v13 addObject:v35];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v175 objects:v194 count:16];
      }

      while (v32);
    }

    v36 = [objc_opt_class() knownRelationshipMultiValueKeys];
    [v13 addObjectsFromArray:v36];

    v173[0] = MEMORY[0x1E69E9820];
    v173[1] = 3221225472;
    v173[2] = __102__EKObject_Shared___addChangesFromObject_ignoringDifferencesFrom_changesToSkip_copyingBackingObjects___block_invoke;
    v173[3] = &unk_1E77FF458;
    v173[4] = v131;
    v116 = v13;
    v174 = v116;
    v37 = [EKDiff diffBetweenObject:v126 andObject:v131 fetchKeysToIgnoreBlock:v173];
    v38 = [EKChangeSet alloc];
    v170[0] = MEMORY[0x1E69E9820];
    v170[1] = 3221225472;
    v170[2] = __102__EKObject_Shared___addChangesFromObject_ignoringDifferencesFrom_changesToSkip_copyingBackingObjects___block_invoke_3;
    v170[3] = &unk_1E77FF480;
    v134 = v120;
    v171 = v134;
    v39 = v37;
    v172 = v39;
    v40 = [(EKChangeSet *)v38 initWithChangeSet:v119 filter:v170];
    v41 = [(EKChangeSet *)v40 multiValueAdditions];
    v167[0] = MEMORY[0x1E69E9820];
    v167[1] = 3221225472;
    v167[2] = __102__EKObject_Shared___addChangesFromObject_ignoringDifferencesFrom_changesToSkip_copyingBackingObjects___block_invoke_4;
    v167[3] = &unk_1E77FF4A8;
    v167[4] = v131;
    v132 = v40;
    v168 = v132;
    v169 = &__block_literal_global_46;
    [v41 enumerateKeysAndObjectsUsingBlock:v167];

    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    obj = v14;
    v42 = [obj countByEnumeratingWithState:&v163 objects:v193 count:16];
    v9 = v129;
    v127 = v39;
    if (v42)
    {
      v43 = v42;
      v44 = *v164;
      do
      {
        for (m = 0; m != v43; ++m)
        {
          if (*v164 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v163 + 1) + 8 * m);
          v47 = [v39 relationshipSingleValueModifies];
          v48 = [v47 objectForKeyedSubscript:v46];

          if (!v48)
          {
            v49 = [v126 frozenOrMeltedCachedSingleRelationObjectForKey:v46];
            v50 = [(EKObject *)v131 meltedAndCachedSingleRelationObjectForKey:v46];
            v51 = [v49 semanticIdentifier];
            v52 = [v50 semanticIdentifier];
            v53 = [v51 isEqualToString:v52];

            if (v53)
            {
              v54 = [(EKObject *)v129 frozenOrMeltedCachedSingleRelationObjectForKey:v46];
              v55 = [v54 existingMeltedObject];
              if (v55)
              {
                v56 = [v49 existingMeltedObject];
                [v50 _addChangesFromObject:v55 ignoringDifferencesFrom:v56 changesToSkip:v134 copyingBackingObjects:v121];
              }
            }

            v9 = v129;
            v39 = v127;
          }
        }

        v43 = [obj countByEnumeratingWithState:&v163 objects:v193 count:16];
      }

      while (v43);
    }

    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v57 = v131;
    v58 = [objc_opt_class() knownRelationshipMultiValueKeys];
    v59 = [v58 countByEnumeratingWithState:&v159 objects:v192 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v160;
      v122 = *v160;
      v123 = v58;
      do
      {
        v62 = 0;
        v124 = v60;
        do
        {
          if (*v160 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v159 + 1) + 8 * v62);
          if (![(EKObject *)v9 isPropertyUnavailable:v63])
          {
            v64 = [objc_opt_class() knownRelationshipWeakKeys];
            if ([v64 containsObject:v63])
            {

              goto LABEL_110;
            }

            v65 = v63;
            v66 = [v134 containsObject:v63];

            if ((v66 & 1) == 0)
            {
              v125 = v62;
              v136 = objc_opt_new();
              v67 = objc_opt_new();
              v68 = objc_opt_new();
              v137 = v65;
              v69 = [(EKObject *)v9 frozenOrMeltedCachedMultiRelationObjectsForKey:v65];
              v155 = 0u;
              v156 = 0u;
              v157 = 0u;
              v158 = 0u;
              v138 = v69;
              v70 = [v69 countByEnumeratingWithState:&v155 objects:v191 count:16];
              if (!v70)
              {
                goto LABEL_71;
              }

              v71 = v70;
              v72 = *v156;
              while (1)
              {
                for (n = 0; n != v71; ++n)
                {
                  if (*v156 != v72)
                  {
                    objc_enumerationMutation(v138);
                  }

                  v74 = *(*(&v155 + 1) + 8 * n);
                  v75 = [(EKObject *)v57 eventStore];
                  v76 = [v74 meltedObjectInStore:v75];

                  if ([v74 isNew])
                  {
                    v77 = [v76 semanticIdentifier];
                    if (!v77)
                    {
                      goto LABEL_69;
                    }
                  }

                  else
                  {
                    v78 = [v76 committedCopy];
                    v77 = [v78 semanticIdentifier];

                    if (!v77)
                    {
                      goto LABEL_69;
                    }
                  }

                  if ([v76 hasChanges] && !-[EKObject _multiValueRelatedObject:isAlsoASingleValueRelatedObjectForKey:](v9, "_multiValueRelatedObject:isAlsoASingleValueRelatedObjectForKey:", v76, v137))
                  {
                    [v136 setObject:v76 forKeyedSubscript:v77];
                  }

LABEL_69:
                }

                v71 = [v138 countByEnumeratingWithState:&v155 objects:v191 count:16];
                if (!v71)
                {
LABEL_71:
                  v79 = v136;
                  if ([v136 count])
                  {
                    v80 = [v126 frozenOrMeltedCachedMultiRelationObjectsForKey:v137];
                    v151 = 0u;
                    v152 = 0u;
                    v153 = 0u;
                    v154 = 0u;
                    v135 = v80;
                    v81 = [v80 countByEnumeratingWithState:&v151 objects:v190 count:16];
                    if (v81)
                    {
                      v82 = v81;
                      v83 = *v152;
                      do
                      {
                        for (ii = 0; ii != v82; ++ii)
                        {
                          if (*v152 != v83)
                          {
                            objc_enumerationMutation(v135);
                          }

                          v85 = *(*(&v151 + 1) + 8 * ii);
                          v86 = [v85 semanticIdentifier];
                          [v67 setObject:v85 forKeyedSubscript:v86];
                        }

                        v82 = [v135 countByEnumeratingWithState:&v151 objects:v190 count:16];
                      }

                      while (v82);
                    }

                    v57 = v131;
                    v87 = [(EKObject *)v131 frozenOrMeltedCachedMultiRelationObjectsForKey:v137];
                    v147 = 0u;
                    v148 = 0u;
                    v149 = 0u;
                    v150 = 0u;
                    v88 = v87;
                    v89 = [v88 countByEnumeratingWithState:&v147 objects:v189 count:16];
                    v130 = v88;
                    if (v89)
                    {
                      v90 = v89;
                      v91 = *v148;
                      while (2)
                      {
                        for (jj = 0; jj != v90; ++jj)
                        {
                          if (*v148 != v91)
                          {
                            objc_enumerationMutation(v130);
                          }

                          v93 = [*(*(&v147 + 1) + 8 * jj) semanticIdentifier];
                          v94 = [v136 objectForKeyedSubscript:v93];

                          if (v94)
                          {

                            v95 = [(EKObject *)v131 meltedAndCachedMultiRelationObjectsForKey:v137];
                            v143 = 0u;
                            v144 = 0u;
                            v145 = 0u;
                            v146 = 0u;
                            v133 = v95;
                            v96 = [v95 countByEnumeratingWithState:&v143 objects:v188 count:16];
                            if (v96)
                            {
                              v97 = v96;
                              v98 = *v144;
                              do
                              {
                                for (kk = 0; kk != v97; ++kk)
                                {
                                  if (*v144 != v98)
                                  {
                                    objc_enumerationMutation(v133);
                                  }

                                  v100 = *(*(&v143 + 1) + 8 * kk);
                                  v101 = [v100 semanticIdentifier];
                                  v102 = [v79 objectForKeyedSubscript:v101];
                                  v103 = [v67 objectForKeyedSubscript:v101];
                                  v104 = v103;
                                  if (v102)
                                  {
                                    v105 = [v103 existingMeltedObject];
                                    [v100 _addChangesFromObject:v102 ignoringDifferencesFrom:v105 changesToSkip:v134 copyingBackingObjects:1];

                                    v79 = v136;
                                  }
                                }

                                v97 = [v133 countByEnumeratingWithState:&v143 objects:v188 count:16];
                              }

                              while (v97);
                            }

                            v106 = [(EKObject *)v131 frozenOrMeltedCachedMultiRelationObjectsForKey:v137];
                            v139 = 0u;
                            v140 = 0u;
                            v141 = 0u;
                            v142 = 0u;
                            v107 = [v106 countByEnumeratingWithState:&v139 objects:v187 count:16];
                            v9 = v129;
                            if (v107)
                            {
                              v108 = v107;
                              v109 = *v140;
                              do
                              {
                                for (mm = 0; mm != v108; ++mm)
                                {
                                  if (*v140 != v109)
                                  {
                                    objc_enumerationMutation(v106);
                                  }

                                  v111 = *(*(&v139 + 1) + 8 * mm);
                                  v112 = [v111 semanticIdentifier];
                                  v113 = [v68 containsObject:v112];

                                  if (v113)
                                  {
                                    v114 = [MEMORY[0x1E695DFD8] setWithObject:v111];
                                    [(EKChangeSet *)v132 removeFromChanges:v114 forMultiValueKey:v137 basedOn:0 and:0 objectIdentifierBlock:&__block_literal_global_46];
                                  }

                                  else
                                  {
                                    v114 = [v111 semanticIdentifier];
                                    [v68 addObject:v114];
                                  }
                                }

                                v108 = [v106 countByEnumeratingWithState:&v139 objects:v187 count:16];
                              }

                              while (v108);
                            }

                            v57 = v131;
                            v88 = v133;
                            goto LABEL_108;
                          }
                        }

                        v90 = [v130 countByEnumeratingWithState:&v147 objects:v189 count:16];
                        if (v90)
                        {
                          continue;
                        }

                        break;
                      }

                      v88 = v130;
                      v57 = v131;
                    }

LABEL_108:
                  }

                  v39 = v127;
                  v61 = v122;
                  v58 = v123;
                  v60 = v124;
                  v62 = v125;

                  break;
                }
              }
            }
          }

LABEL_110:
          ++v62;
        }

        while (v62 != v60);
        v60 = [v58 countByEnumeratingWithState:&v159 objects:v192 count:16];
      }

      while (v60);
    }

    [(EKObject *)v57 _addChanges:v132 copyingBackingObjects:v121 objectIdentifierBlock:&__block_literal_global_46];
    objc_autoreleasePoolPop(context);
    v11 = v120;
    v10 = v126;
  }

  v115 = *MEMORY[0x1E69E9840];
}

id __102__EKObject_Shared___addChangesFromObject_ignoringDifferencesFrom_changesToSkip_copyingBackingObjects___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3 == a2 || v3 == a3)
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = [EKDiff keysToIgnoreForComparingUIVisiblePropertiesOfObject:a2 andObject:a3];
  }

  return v5;
}

uint64_t __102__EKObject_Shared___addChangesFromObject_ignoringDifferencesFrom_changesToSkip_copyingBackingObjects___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7 && ([v7 containsObject:v5] & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) differentSingleValueKeys];
    if ([v9 containsObject:v5])
    {
      v8 = 0;
    }

    else
    {
      v10 = [*(a1 + 40) differentRelationshipSingleValueKeys];
      v8 = [v10 containsObject:v5] ^ 1;
    }
  }

  return v8;
}

void __102__EKObject_Shared___addChangesFromObject_ignoringDifferencesFrom_changesToSkip_copyingBackingObjects___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v25 = a1;
  v26 = v5;
  v7 = [*(a1 + 32) frozenOrMeltedCachedMultiRelationObjectsForKey:v5];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v31 + 1) + 8 * i) semanticIdentifier];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = [v21 semanticIdentifier];
        v23 = [v9 containsObject:v22];

        if (v23)
        {
          [v8 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  if ([v8 count])
  {
    [*(v25 + 40) removeFromChanges:v8 forMultiValueKey:v26 basedOn:0 and:0 objectIdentifierBlock:*(v25 + 48)];
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (void)addChangesFromObject:(id)a3 toObjects:(id)a4 except:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 count])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __58__EKObject_Shared__addChangesFromObject_toObjects_except___block_invoke;
    v15 = &unk_1E77FF4D0;
    v16 = v8;
    v17 = v10;
    v11 = _Block_copy(&v12);
  }

  else
  {
    v11 = 0;
  }

  [a1 _addChangesFromObject:v8 toObjects:v9 passingTest:v11 copyingBackingObjects:{1, v12, v13, v14, v15}];
}

uint64_t __58__EKObject_Shared__addChangesFromObject_toObjects_except___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32) == a4)
  {
    return [*(a1 + 40) containsObject:{a2, v4, v5}] ^ 1;
  }

  else
  {
    return 1;
  }
}

+ (void)addChangesFromObject:(id)a3 toObjects:(id)a4 keep:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 count])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __56__EKObject_Shared__addChangesFromObject_toObjects_keep___block_invoke;
    v15 = &unk_1E77FF4D0;
    v16 = v8;
    v17 = v10;
    v11 = _Block_copy(&v12);
  }

  else
  {
    v11 = 0;
  }

  [a1 _addChangesFromObject:v8 toObjects:v9 passingTest:v11 copyingBackingObjects:{1, v12, v13, v14, v15}];
}

uint64_t __56__EKObject_Shared__addChangesFromObject_toObjects_keep___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32) == a4)
  {
    return [*(a1 + 40) containsObject:a2];
  }

  else
  {
    return 1;
  }
}

+ (void)_addChangesFromObject:(id)a3 toObjects:(id)a4 passingTest:(id)a5 copyingBackingObjects:(BOOL)a6
{
  v40 = a6;
  v64 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v38 = a4;
  v39 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v10 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v11 = [v10 countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v57;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v57 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v56 + 1) + 8 * i);
        v16 = [v8 cachedMeltedObjectForSingleValueKey:{v15, v38}];
        v17 = v16;
        if (!v16 || ([v16 isNew] & 1) != 0 || (objc_msgSend(v17, "hasChanges") & 1) == 0)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v12);
  }

  v41 = v9;

  v18 = [objc_opt_class() knownRelationshipWeakKeys];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v42 = v8;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v19 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v53;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v53 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v52 + 1) + 8 * j);
        if (([v18 containsObject:{v23, v38}] & 1) == 0)
        {
          v24 = v18;
          v25 = [v42 cachedMeltedObjectsForMultiValueKey:v23];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v26 = v25;
          v27 = [v26 countByEnumeratingWithState:&v48 objects:v61 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v49;
            while (2)
            {
              for (k = 0; k != v28; ++k)
              {
                if (*v49 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v48 + 1) + 8 * k);
                if ([v31 isNew] & 1) == 0 && (objc_msgSend(v31, "hasChanges"))
                {

                  goto LABEL_29;
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v48 objects:v61 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          [v41 addObject:v23];
LABEL_29:

          v18 = v24;
        }
      }

      v20 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v20);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v32 = v38;
  v33 = [v32 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v45;
    do
    {
      for (m = 0; m != v34; ++m)
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(v32);
        }

        [*(*(&v44 + 1) + 8 * m) _addChangesFromObject:v42 passingTest:v39 ignoreRelations:v41 copyingBackingObjects:{v40, v38}];
      }

      v34 = [v32 countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v34);
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_addChanges:(id)a3 copyingBackingObjects:(BOOL)a4 objectIdentifierBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  [(EKObject *)self _initChangeSetIfNone];
  if (v5)
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = [objc_opt_class() knownRelationshipWeakKeys];
    v12 = [v10 setWithArray:v11];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__EKObject_Shared___addChanges_copyingBackingObjects_objectIdentifierBlock___block_invoke;
    aBlock[3] = &unk_1E77FF4F8;
    v18 = v12;
    v13 = v12;
    v14 = _Block_copy(aBlock);
  }

  else
  {
    v14 = &__block_literal_global_51;
  }

  v15 = [(EKObject *)self changeSet];
  [v15 addChanges:v9 shouldCopyKeyCallback:v14 objectIdentifierBlock:v8];

  v16 = [(EKObject *)self changeSet];
  [(EKObject *)self updateAfterApplyingChanges:v16 objectIdentifierBlock:v8];
}

- (void)applyChanges:(id)a3
{
  v7 = a3;
  v4 = [EKChangeSet alloc];
  v5 = [objc_opt_class() keysToIgnoreForApplyingChanges];
  v6 = [(EKChangeSet *)v4 initWithChangeSet:v7 changesToSkip:v5];
  [(EKObject *)self setChangeSet:v6];

  [(EKObject *)self updateAfterApplyingChanges:v7 objectIdentifierBlock:0];
}

- (id)singleChangedValueForKey:(id)a3
{
  v4 = a3;
  if ([(EKObject *)self _isPropertyUnavailable:v4 convertToFullObjectIfUnavailable:1])
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKObject(Shared) singleChangedValueForKey:];
    }

    v5 = 0;
  }

  else
  {
    v6 = [(EKObject *)self changeSet];

    if (v6)
    {
      v7 = [(EKObject *)self changeSet];
      v8 = [(EKObject *)self backingObject];
      v9 = [(EKObject *)self additionalFrozenProperties];
      v10 = [v7 valueForSingleValueKey:v4 basedOn:v8 and:v9];
    }

    else
    {
      v11 = [(EKObject *)self additionalFrozenProperties];
      v12 = [v11 objectForKeyedSubscript:v4];

      if (v12)
      {
        v7 = [(EKObject *)self additionalFrozenProperties];
        [v7 objectForKeyedSubscript:v4];
      }

      else
      {
        v7 = [(EKObject *)self backingObject];
        [v7 valueForKey:v4];
      }
      v10 = ;
    }

    v13 = objc_opt_class();
    if (v13 == objc_opt_class())
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  return v5;
}

- (void)setSingleChangedValue:(id)a3 forKey:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(EKObject *)self _initChangeSetIfNone];
  if (![(EKObject *)self _isPropertyUnavailable:v7 convertToFullObjectIfUnavailable:1])
  {
    v9 = [(EKObject *)self changeSet];
    v11 = [(EKObject *)self backingObject];
    v10 = [(EKObject *)self additionalFrozenProperties];
    [v9 changeSingleValue:v6 forKey:v7 basedOn:v11 and:v10];
    goto LABEL_5;
  }

  v8 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    v9 = v8;
    v10 = [(EKObject *)self backingObject];
    v11 = [MEMORY[0x1E696AF00] callStackSymbols];
    v13 = 138413058;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_error_impl(&dword_1A805E000, v9, OS_LOG_TYPE_ERROR, "Unable to set single changed value %@. Property %@ was unavailable on backingObject %@. %@", &v13, 0x2Au);
LABEL_5:
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)multiChangedObjectValuesForKey:(id)a3
{
  v4 = a3;
  if ([(EKObject *)self _isPropertyUnavailable:v4 convertToFullObjectIfUnavailable:1])
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKObject(Shared) singleChangedValueForKey:];
    }

    v5 = 0;
  }

  else
  {
    v6 = [(EKObject *)self changeSet];

    if (v6)
    {
      v7 = [(EKObject *)self changeSet];
      v8 = [(EKObject *)self backingObject];
      v9 = [(EKObject *)self additionalFrozenProperties];
      v10 = [v7 valuesForMultiValueKey:v4 basedOn:v8 and:v9];
    }

    else
    {
      v11 = [(EKObject *)self additionalFrozenProperties];
      v12 = [v11 objectForKeyedSubscript:v4];

      if (v12)
      {
        v7 = [(EKObject *)self additionalFrozenProperties];
        [v7 objectForKeyedSubscript:v4];
      }

      else
      {
        v7 = [(EKObject *)self backingObject];
        [v7 valueForKey:v4];
      }
      v10 = ;
    }

    v13 = objc_opt_class();
    if (v13 == objc_opt_class())
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  return v5;
}

- (void)addMultiChangedObjectValue:(id)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [v6 setWithObject:a3];
  [(EKObject *)self addMultiChangedObjectValues:v8 forKey:v7];
}

- (void)addMultiChangedObjectValues:(id)a3 forKey:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(EKObject *)self _initChangeSetIfNone];
  if (![(EKObject *)self _isPropertyUnavailable:v7 convertToFullObjectIfUnavailable:1])
  {
    v9 = [(EKObject *)self changeSet];
    v11 = [(EKObject *)self backingObject];
    v10 = [(EKObject *)self additionalFrozenProperties];
    [v9 addToChanges:v6 forMultiValueKey:v7 basedOn:v11 and:v10];
    goto LABEL_5;
  }

  v8 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    v9 = v8;
    v10 = [(EKObject *)self backingObject];
    v11 = [MEMORY[0x1E696AF00] callStackSymbols];
    v13 = 138413058;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_error_impl(&dword_1A805E000, v9, OS_LOG_TYPE_ERROR, "Unable to add multi changed object values %@. Property %@ was unavailable on backingObject %@. %@", &v13, 0x2Au);
LABEL_5:
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeMultiChangedObjectValue:(id)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [v6 setWithObject:a3];
  [(EKObject *)self removeMultiChangedObjectValues:v8 forKey:v7];
}

- (void)removeMultiChangedObjectValues:(id)a3 forKey:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(EKObject *)self _initChangeSetIfNone];
  if (![(EKObject *)self _isPropertyUnavailable:v7 convertToFullObjectIfUnavailable:1])
  {
    v9 = [(EKObject *)self changeSet];
    v11 = [(EKObject *)self backingObject];
    v10 = [(EKObject *)self additionalFrozenProperties];
    [v9 removeFromChanges:v6 forMultiValueKey:v7 basedOn:v11 and:v10];
    goto LABEL_5;
  }

  v8 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    v9 = v8;
    v10 = [(EKObject *)self backingObject];
    v11 = [MEMORY[0x1E696AF00] callStackSymbols];
    v13 = 138413058;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_error_impl(&dword_1A805E000, v9, OS_LOG_TYPE_ERROR, "Unable to remove multi changed object values %@. Property %@ was unavailable on backingObject %@. %@", &v13, 0x2Au);
LABEL_5:
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)replaceMultiChangedObjectValuesWithObjectValues:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(EKObject *)self multiChangedObjectValuesForKey:v6];
  [(EKObject *)self removeMultiChangedObjectValues:v7 forKey:v6];

  [(EKObject *)self addMultiChangedObjectValues:v8 forKey:v6];
}

- (id)changedKeys
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(EKObject *)self changeSet];
  v4 = [v3 isDeleted];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E695DFA8];
    v7 = [(EKObject *)self changeSet];
    v8 = [v7 changedKeys];
    v5 = [v6 setWithSet:v8];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [objc_opt_class() knownRelationshipSingleValueKeys];
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          if ([(EKObject *)self _hasChangesForKey:v14])
          {
            [v5 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = [objc_opt_class() knownRelationshipMultiValueKeys];
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * j);
          if ([(EKObject *)self _hasChangesForKey:v20])
          {
            [v5 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_rollbackCommon
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [(EKObject *)self changeSet];
  [v3 rollbackChanges];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        if ([(EKObject *)self _hasChangesForKey:v9])
        {
          v10 = [(EKObject *)self valueForKey:v9];
          if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v10 forKey:v9])
          {
            v11 = [v10 existingMeltedObject];
            [v11 rollback];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v6);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v12 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * j);
        if ([(EKObject *)self _hasChangesForKey:v16])
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v17 = [(EKObject *)self valueForKey:v16];
          v18 = [v17 countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v27;
            do
            {
              for (k = 0; k != v19; ++k)
              {
                if (*v27 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v26 + 1) + 8 * k);
                if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v22 forKey:v16])
                {
                  v23 = [v22 existingMeltedObject];
                  [v23 rollback];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v26 objects:v38 count:16];
            }

            while (v19);
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v13);
  }

  [(EKObject *)self _resetAfterUpdatingChangeSetOrBackingObject];
  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)_resetIfBackingObjectIsOfClass:(Class)a3 fetchResetFrozenObjectBlock:(id)a4
{
  v5 = a4;
  v6 = [(EKObject *)self backingObject];
  if (objc_opt_isKindOfClass())
  {
    v7 = v5[2](v5, v6);
    v8 = v7;
    v9 = v7 != 0;
    if (v7)
    {
      v10 = v7 == v6;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      [(EKObject *)self _resetWithFrozenObject:v7];
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_resetCommon
{
  v40 = *MEMORY[0x1E69E9840];
  v23 = [(EKObject *)self isDeleted];
  [(EKObject *)self setChangeSet:0];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [(EKObject *)self frozenOrMeltedCachedSingleRelationObjectForKey:v8];
        if (v9 && ([objc_opt_class() isWeakRelationObject:v9 forKey:v8] & 1) == 0)
        {
          [v9 reset];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v10 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * j);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = [(EKObject *)self frozenOrMeltedCachedMultiRelationObjectsForKey:v14];
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v26;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v26 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v25 + 1) + 8 * k);
              if (([objc_opt_class() isWeakRelationObject:v20 forKey:v14] & 1) == 0)
              {
                [v20 reset];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
          }

          while (v17);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v11);
  }

  [(EKObject *)self _resetAfterUpdatingChangeSetOrBackingObject];
  if (v23)
  {
    [(EKObject *)self markAsDeleted];
  }

  v21 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)_refreshable
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(EKObject *)self persistentObject];
  v4 = [v3 isNew];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(EKObject *)self persistentObject];
    if ([v6 _isPendingUpdate] & 1) != 0 || (objc_msgSend(v6, "_isPendingDelete"))
    {
      v5 = 0;
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = [(EKObject *)self eventStore];
      v8 = [v7 objectsPendingCommit];

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * i);
            v14 = [v6 objectID];
            v15 = [v13 objectID];
            v16 = [v14 isEqual:v15];

            if (v16)
            {
              v5 = 0;
              goto LABEL_16;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v5 = 1;
LABEL_16:
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)_refreshCommon
{
  v2 = self;
  v108 = *MEMORY[0x1E69E9840];
  v3 = [(EKObject *)self changeSet];
  v65 = [v3 copy];

  v71 = [MEMORY[0x1E695DF90] dictionary];
  v62 = [MEMORY[0x1E695DF90] dictionary];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v4 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v5 = [v4 countByEnumeratingWithState:&v98 objects:v107 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v99;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v99 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v98 + 1) + 8 * i);
        v10 = [(EKObject *)v2 cachedMeltedObjectForSingleValueKey:v9];
        if (v10)
        {
          if (([objc_opt_class() isWeakRelationObject:v10 forKey:v9] & 1) == 0)
          {
            v11 = [v10 changeSet];

            if (v11)
            {
              v12 = [v10 changeSet];
              v13 = [v12 copy];
              [v71 setObject:v13 forKeyedSubscript:v9];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v98 objects:v107 count:16];
    }

    while (v6);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v76 = v2;
  v66 = [obj countByEnumeratingWithState:&v94 objects:v106 count:16];
  if (v66)
  {
    v64 = *v95;
    do
    {
      for (j = 0; j != v66; j = j + 1)
      {
        if (*v95 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v94 + 1) + 8 * j);
        v16 = [(EKObject *)v2 cachedMeltedObjectsForMultiValueKey:v15];
        v17 = [v65 multiValueAdditions];
        v18 = [v17 objectForKey:v15];

        if (v16)
        {
          v69 = j;
          v72 = [MEMORY[0x1E695DF90] dictionary];
          v74 = [MEMORY[0x1E695DF70] array];
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v67 = v16;
          v19 = v16;
          v20 = [v19 countByEnumeratingWithState:&v90 objects:v105 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v91;
            do
            {
              for (k = 0; k != v21; ++k)
              {
                if (*v91 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v90 + 1) + 8 * k);
                if (([objc_opt_class() isWeakRelationObject:v24 forKey:v15] & 1) == 0)
                {
                  v25 = [v24 changeSet];
                  if (v25)
                  {
                    v26 = v25;
                    v27 = [v24 uniqueIdentifier];

                    if (v27)
                    {
                      v28 = [v24 changeSet];
                      v29 = [v28 copy];
                      v30 = [v24 uniqueIdentifier];
                      [v72 setObject:v29 forKeyedSubscript:v30];

                      v2 = v76;
                    }
                  }
                }

                v31 = [v24 backingObject];
                v32 = [v18 containsObject:v31];

                if (v32)
                {
                  [v74 addObject:v24];
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v90 objects:v105 count:16];
            }

            while (v21);
          }

          if ([v72 count])
          {
            [v71 setObject:v72 forKeyedSubscript:v15];
          }

          v16 = v67;
          j = v69;
          if ([v74 count])
          {
            [v62 setObject:v74 forKey:v15];
          }
        }
      }

      v66 = [obj countByEnumeratingWithState:&v94 objects:v106 count:16];
    }

    while (v66);
  }

  v33 = [(EKObject *)v2 _reset];
  v34 = v33;
  if (v33)
  {
    v68 = v33;
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __34__EKObject_Shared___refreshCommon__block_invoke;
    v89[3] = &unk_1E77FF540;
    v89[4] = v2;
    [v62 enumerateKeysAndObjectsUsingBlock:v89];
    [(EKObject *)v2 updateMultiValueCacheForChangeSet:v65 preservingExistingAdds:1 objectIdentifierBlock:0];
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v35 = [objc_opt_class() knownRelationshipSingleValueKeys];
    v36 = [v35 countByEnumeratingWithState:&v85 objects:v104 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v86;
      do
      {
        for (m = 0; m != v37; ++m)
        {
          if (*v86 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v85 + 1) + 8 * m);
          v41 = [v71 objectForKeyedSubscript:v40];
          if (v41)
          {
            v42 = [(EKObject *)v2 valueForKey:v40];
            v43 = [(EKObject *)v2 eventStore];
            v44 = [v42 meltedObjectInStore:v43];

            [v44 setChangeSet:v41];
            [(EKObject *)v2 setValue:v44 forKey:v40];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v85 objects:v104 count:16];
      }

      while (v37);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v70 = [objc_opt_class() knownRelationshipMultiValueKeys];
    v75 = [v70 countByEnumeratingWithState:&v81 objects:v103 count:16];
    if (v75)
    {
      v73 = *v82;
      do
      {
        for (n = 0; n != v75; ++n)
        {
          if (*v82 != v73)
          {
            objc_enumerationMutation(v70);
          }

          v46 = *(*(&v81 + 1) + 8 * n);
          v47 = [v71 objectForKeyedSubscript:v46];
          if ([v47 count])
          {
            v48 = [(EKObject *)v2 valueForKey:v46];
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v49 = [v48 countByEnumeratingWithState:&v77 objects:v102 count:16];
            if (v49)
            {
              v50 = v49;
              v51 = *v78;
              do
              {
                for (ii = 0; ii != v50; ++ii)
                {
                  if (*v78 != v51)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v53 = *(*(&v77 + 1) + 8 * ii);
                  v54 = [v53 uniqueIdentifier];

                  if (v54)
                  {
                    [v53 uniqueIdentifier];
                    v56 = v55 = v2;
                    v57 = [v47 objectForKeyedSubscript:v56];

                    v58 = [(EKObject *)v55 eventStore];
                    v59 = [v53 meltedObjectInStore:v58];

                    if (v57)
                    {
                      [v59 setChangeSet:v57];
                    }

                    v2 = v76;
                  }
                }

                v50 = [v48 countByEnumeratingWithState:&v77 objects:v102 count:16];
              }

              while (v50);
            }
          }
        }

        v75 = [v70 countByEnumeratingWithState:&v81 objects:v103 count:16];
      }

      while (v75);
    }

    [(EKObject *)v2 setChangeSet:v65];
    v34 = v68;
  }

  v60 = *MEMORY[0x1E69E9840];
  return v34;
}

void __34__EKObject_Shared___refreshCommon__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) _addCachedMeltedObject:*(*(&v12 + 1) + 8 * v10++) forMultiValueKey:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_resetWithFrozenObject:(id)a3
{
  v4 = a3;
  [(EKObject *)self setBackingObject:v4];
  [(EKObject *)self setAdditionalFrozenProperties:0];
  [(EKObject *)self _applyDefinedAfterFirstSaveFrom:v4];

  [(EKObject *)self _resetAfterUpdatingChangeSetOrBackingObject];
}

- (void)_applyKnownImmutableValuesFrom:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [objc_opt_class() knownImmutableKeys];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = *v17;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [(EKObject *)self additionalFrozenProperties];
        v12 = [v11 objectForKeyedSubscript:v10];
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = [v4 valueForKey:v10];

          if (!v13)
          {
            goto LABEL_12;
          }
        }

        v14 = objc_opt_class();
        if (v14 != objc_opt_class())
        {
          [(EKObject *)self setValue:v13 forKey:v10];
        }

LABEL_12:

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v7)
      {
LABEL_14:

        break;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __39__EKObject_Shared__cachedMeltedObjects__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __43__EKObject_Shared__setCachedMeltedObjects___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  [*(a1 + 32) set_cachedMeltedObjects:v2];
}

- (unint64_t)_cachedMeltedObjectsCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__EKObject_Shared___cachedMeltedObjectsCount__block_invoke;
  v4[3] = &unk_1E77FD530;
  v4[4] = self;
  v4[5] = &v5;
  [(EKObject *)self _performWithLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __45__EKObject_Shared___cachedMeltedObjectsCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedMeltedObjects];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (void)_updateCachedMeltedObjectSetForMultiValueKey:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EKObject *)self meltedAndCachedMultiRelationObjectsForKey:v6];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__18;
  v21 = __Block_byref_object_dispose__18;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__EKObject_Shared___updateCachedMeltedObjectSetForMultiValueKey_usingBlock___block_invoke;
  v14[3] = &unk_1E77FD688;
  v16 = &v17;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  [(EKObject *)self _performWithLock:v14];
  v10 = v18[5];
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFD8] set];
    v12 = v18[5];
    v18[5] = v11;

    v10 = v18[5];
  }

  v13 = v7[2](v7, v10);
  [(EKObject *)self setCachedMeltedObjects:v13 forMultiValueKey:v9];

  _Block_object_dispose(&v17, 8);
}

void __76__EKObject_Shared___updateCachedMeltedObjectSetForMultiValueKey_usingBlock___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addCachedMeltedObject:(id)a3 forMultiValueKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EKObject *)self eventStore];
  v10 = [v7 meltedObjectInStore:v8];

  v9 = [v10 frozenObject];
  [(EKObject *)self _addCachedMeltedObject:v10 forMultiValueKey:v6];
  [(EKObject *)self addMultiChangedObjectValue:v9 forKey:v6];
}

- (void)_addCachedMeltedObject:(id)a3 forMultiValueKey:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__EKObject_Shared___addCachedMeltedObject_forMultiValueKey___block_invoke;
    v8[3] = &unk_1E77FF568;
    v9 = v6;
    [(EKObject *)self _updateCachedMeltedObjectSetForMultiValueKey:a4 usingBlock:v8];
  }
}

- (void)removeCachedMeltedObject:(id)a3 forMultiValueKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(EKObject *)self _removeCachedMeltedObject:v7 forMultiValueKey:v6];
  v8 = [v7 frozenObject];

  [(EKObject *)self removeMultiChangedObjectValue:v8 forKey:v6];
}

- (void)_removeCachedMeltedObject:(id)a3 forMultiValueKey:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__EKObject_Shared___removeCachedMeltedObject_forMultiValueKey___block_invoke;
    v8[3] = &unk_1E77FF590;
    v9 = v6;
    [(EKObject *)self _updateCachedMeltedObjectSetForMultiValueKey:a4 usingBlock:v8];
  }
}

id __63__EKObject_Shared___removeCachedMeltedObject_forMultiValueKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 removeObject:*(a1 + 32)];
  v4 = [v3 copy];

  return v4;
}

- (void)setCachedMeltedObjects:(id)a3 forMultiValueKey:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__EKObject_Shared__setCachedMeltedObjects_forMultiValueKey___block_invoke;
  v10[3] = &unk_1E77FD7C8;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  [(EKObject *)self _performWithLock:v10];
}

void __60__EKObject_Shared__setCachedMeltedObjects_forMultiValueKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _cachedMeltedObjects];
  v4 = *(a1 + 48);
  v5 = v3;
  if (v2)
  {
    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  else
  {
    [v3 removeObjectForKey:v4];
  }
}

- (id)cachedMeltedObjectsForMultiValueKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__18;
  v15 = __Block_byref_object_dispose__18;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__EKObject_Shared__cachedMeltedObjectsForMultiValueKey___block_invoke;
  v8[3] = &unk_1E77FD688;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(EKObject *)self _performWithLock:v8];
  if (v12[5])
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:?];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __56__EKObject_Shared__cachedMeltedObjectsForMultiValueKey___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 allObjects];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setCachedMeltedObject:(id)a3 forSingleValueKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__EKObject_Shared__setCachedMeltedObject_forSingleValueKey___block_invoke;
  v10[3] = &unk_1E77FD7C8;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(EKObject *)self _performWithLock:v10];
}

void __60__EKObject_Shared__setCachedMeltedObject_forSingleValueKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _cachedMeltedObjects];
  v4 = *(a1 + 48);
  v5 = v3;
  if (v2)
  {
    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  else
  {
    [v3 removeObjectForKey:v4];
  }
}

- (id)cachedMeltedObjectForSingleValueKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__18;
  v15 = __Block_byref_object_dispose__18;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__EKObject_Shared__cachedMeltedObjectForSingleValueKey___block_invoke;
  v8[3] = &unk_1E77FD688;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(EKObject *)self _performWithLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __56__EKObject_Shared__cachedMeltedObjectForSingleValueKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)frozenOrMeltedCachedSingleRelationObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(EKObject *)self cachedMeltedObjectForSingleValueKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(EKObject *)self singleChangedValueForKey:v4];
  }

  v8 = v7;

  return v8;
}

- (id)frozenOrMeltedCachedMultiRelationObjectsForKey:(id)a3
{
  v4 = a3;
  v5 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(EKObject *)self multiChangedObjectValuesForKey:v4];
  }

  v8 = v7;

  return v8;
}

- (id)meltedAndCachedSingleRelationObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(EKObject *)self frozenOrMeltedCachedSingleRelationObjectForKey:v4];
  v6 = [(EKObject *)self eventStore];
  v7 = [v5 meltedObjectInStore:v6];

  if (v5 && !v7 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKObject(Shared) meltedAndCachedSingleRelationObjectForKey:];
  }

  if ([v5 isFrozen])
  {
    [(EKObject *)self setCachedMeltedObject:v7 forSingleValueKey:v4];
  }

  return v7;
}

- (void)updateMeltedAndCachedSingleRelationObject:(id)a3 forKey:(id)a4 frozenClass:(Class)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(EKObject *)self eventStore];
  v10 = [v8 meltedObjectInStore:v9];

  v11 = [v10 frozenObject];
  if (v8 && !v10 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKObject(Shared) meltedAndCachedSingleRelationObjectForKey:];
  }

  [(EKObject *)self setCachedMeltedObject:v10 forSingleValueKey:v7];
  [(EKObject *)self setSingleChangedValue:v11 forKey:v7];
}

- (id)meltedAndCachedMultiRelationObjectsForKey:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:v4];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(EKObject *)self multiChangedObjectValuesForKey:v4];
    if (v7)
    {
      v26 = v4;
      v8 = [MEMORY[0x1E695DFA8] set];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v25 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v28;
        do
        {
          v13 = 0;
          do
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v27 + 1) + 8 * v13);
            v15 = [(EKObject *)self eventStore];
            v16 = [v14 meltedObjectInStore:v15];

            if (v16)
            {
              [v8 addObject:v16];
            }

            else
            {
              v17 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
              {
                v18 = v17;
                v19 = [(EKObject *)self eventStore];
                *buf = 138412546;
                v20 = @"not nil";
                if (!v19)
                {
                  v20 = @"nil";
                }

                v32 = v26;
                v33 = 2112;
                v34 = v20;
                _os_log_error_impl(&dword_1A805E000, v18, OS_LOG_TYPE_ERROR, "Failed to get melted object for frozen object related by key %@. Event store is %@", buf, 0x16u);
              }
            }

            ++v13;
          }

          while (v11 != v13);
          v21 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
          v11 = v21;
        }

        while (v21);
      }

      v4 = v26;
      [(EKObject *)self setCachedMeltedObjects:v8 forMultiValueKey:v26];
      v22 = [v8 copy];

      v7 = v25;
    }

    else
    {
      v22 = 0;
    }

    v6 = v22;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)updateMeltedAndCachedMultiRelationObjects:(id)a3 forKey:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [(EKObject *)self eventStore];
  v10 = 0x1E695D000uLL;
  v11 = v8;
  if (v9)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v53;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v53 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v52 + 1) + 8 * i);
          v18 = [v17 eventStore];
          if (v18)
          {
            v19 = v18;
            v20 = [v17 eventStore];

            if (v9 != v20)
            {
              v40 = self;
              v41 = v8;
              v42 = v7;
              v21 = v12;

              v12 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v12, "count")}];
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v22 = v21;
              v23 = [v22 countByEnumeratingWithState:&v48 objects:v63 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v49;
                do
                {
                  for (j = 0; j != v24; ++j)
                  {
                    if (*v49 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = *(*(&v48 + 1) + 8 * j);
                    v28 = [v27 meltedObjectInStore:v9];
                    if (v28)
                    {
                      [v12 addObject:v28];
                    }

                    else
                    {
                      v29 = EKLogHandle;
                      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
                      {
                        log = v29;
                        v30 = objc_opt_class();
                        v31 = [v27 objectID];
                        *buf = 138412802;
                        v58 = v27;
                        v59 = 2114;
                        v60 = v30;
                        v61 = 2114;
                        v62 = v31;
                        _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Failed to copy %@ (class = %{public}@, objectID = %{public}@) to my event store.", buf, 0x20u);
                      }
                    }
                  }

                  v24 = [v22 countByEnumeratingWithState:&v48 objects:v63 count:16];
                }

                while (v24);
              }

              v11 = [v12 copy];
              v8 = v41;
              v7 = v42;
              self = v40;
              goto LABEL_24;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v11 = v12;
LABEL_24:
      v10 = 0x1E695D000;
    }

    else
    {
      v11 = v12;
    }
  }

  [(EKObject *)self setCachedMeltedObjects:v8 forMultiValueKey:v7];
  v32 = [*(v10 + 4008) setWithCapacity:{objc_msgSend(v11, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v33 = v11;
  v34 = [v33 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v45;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v45 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [*(*(&v44 + 1) + 8 * k) frozenObject];
        [v32 addObject:v38];
      }

      v35 = [v33 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v35);
  }

  [(EKObject *)self replaceMultiChangedObjectValuesWithObjectValues:v32 forKey:v7];
  v39 = *MEMORY[0x1E69E9840];
}

- (unint64_t)meltedAndCachedMultiRelationCountForKey:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __60__EKObject_Shared__meltedAndCachedMultiRelationCountForKey___block_invoke;
  v12 = &unk_1E77FF5B8;
  v13 = self;
  v5 = v4;
  v14 = v5;
  v15 = &v21;
  v16 = &v17;
  [(EKObject *)self _performWithLock:&v9];
  if (*(v22 + 24) == 1)
  {
    v6 = v18[3];
  }

  else
  {
    v7 = [(EKObject *)self multiChangedObjectValuesForKey:v5, v9, v10, v11, v12, v13];
    v6 = [v7 count];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v6;
}

void __60__EKObject_Shared__meltedAndCachedMultiRelationCountForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedMeltedObjects];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *(*(*(a1 + 56) + 8) + 24) = [v4 count];
    v3 = v4;
  }
}

- (void)updateAfterApplyingChanges:(id)a3 objectIdentifierBlock:(id)a4
{
  [(EKObject *)self updateMeltedCacheForChangeSet:a3 objectIdentifierBlock:a4];

  [(EKObject *)self _resetInternalStateWithForce:0];
}

- (void)updateMeltedCacheForChangeSet:(id)a3 objectIdentifierBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 changedSingleValueKeys];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __72__EKObject_Shared__updateMeltedCacheForChangeSet_objectIdentifierBlock___block_invoke;
  v13 = &unk_1E77FD580;
  v14 = v8;
  v15 = self;
  v9 = v8;
  [(EKObject *)self _performWithLock:&v10];
  [(EKObject *)self updateMultiValueCacheForChangeSet:v7 preservingExistingAdds:0 objectIdentifierBlock:v6, v10, v11, v12, v13];
}

void __72__EKObject_Shared__updateMeltedCacheForChangeSet_objectIdentifierBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 40) _cachedMeltedObjects];
        [v8 removeObjectForKey:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateMultiValueCacheForChangeSet:(id)a3 preservingExistingAdds:(BOOL)a4 objectIdentifierBlock:(id)a5
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  v8 = &__block_literal_global_63;
  v69 = 0u;
  v70 = 0u;
  if (v7)
  {
    v8 = v7;
  }

  v43 = v8;
  v71 = 0uLL;
  v72 = 0uLL;
  obj = [v6 changedMultiValueKeys];
  v44 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
  if (v44)
  {
    v41 = *v70;
    v9 = v43 + 2;
    v42 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v70 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v10;
        v11 = *(*(&v69 + 1) + 8 * v10);
        v12 = [(EKObject *)self meltedAndCachedMultiRelationObjectsForKey:v11];
        v13 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:v11];
        v14 = [MEMORY[0x1E695DF90] dictionary];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __99__EKObject_Shared__updateMultiValueCacheForChangeSet_preservingExistingAdds_objectIdentifierBlock___block_invoke_2;
        v66[3] = &unk_1E77FF5E0;
        v15 = v43;
        v68 = v15;
        v54 = v14;
        v67 = v54;
        v46 = v13;
        [v13 enumerateObjectsUsingBlock:v66];
        v16 = [(EKObject *)self multiChangedObjectValuesForKey:v11];
        v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __99__EKObject_Shared__updateMultiValueCacheForChangeSet_preservingExistingAdds_objectIdentifierBlock___block_invoke_3;
        v63[3] = &unk_1E77FF608;
        v18 = v15;
        v65 = v18;
        v49 = v17;
        v64 = v49;
        v45 = v16;
        [v16 enumerateObjectsUsingBlock:v63];
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v53 = v11;
        v19 = [v6 unsavedMultiValueRemovedObjectsForKey:v11];
        v20 = [v19 countByEnumeratingWithState:&v59 objects:v78 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v60;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v60 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = (*v9)(v18, *(*(&v59 + 1) + 8 * i));
              if (v24)
              {
                v25 = [v54 objectForKeyedSubscript:v24];
                if (v25)
                {
                  [(EKObject *)self _removeCachedMeltedObject:v25 forMultiValueKey:v53];
                }
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v59 objects:v78 count:16];
          }

          while (v21);
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v51 = [v6 unsavedMultiValueAddedObjectsForKey:v53];
        v26 = [v51 countByEnumeratingWithState:&v55 objects:v77 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v56;
          v48 = v18;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v56 != v28)
              {
                objc_enumerationMutation(v51);
              }

              v30 = *(*(&v55 + 1) + 8 * j);
              v31 = (*v9)(v18, v30);
              if (v31)
              {
                v32 = [v54 objectForKeyedSubscript:v31];
                if (v32 && !a4)
                {
                  [(EKObject *)self _removeCachedMeltedObject:v32 forMultiValueKey:v53];
                }

                if (v32)
                {
                  v33 = a4;
                }

                else
                {
                  v33 = 0;
                }

                if (!v33)
                {
                  v34 = v28;
                  v35 = [v49 objectForKeyedSubscript:v31];
                  if (!v35)
                  {
                    v36 = EKLogHandle;
                    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v74 = v31;
                      v75 = 2114;
                      v76 = v53;
                      _os_log_error_impl(&dword_1A805E000, v36, OS_LOG_TYPE_ERROR, "Missing corresponding added object with semantic identifier %@ for relation key %{public}@.", buf, 0x16u);
                    }

                    v35 = v30;
                  }

                  v37 = [(EKObject *)self eventStore];
                  v38 = [v35 meltedObjectInStore:v37];

                  [(EKObject *)self _addCachedMeltedObject:v38 forMultiValueKey:v53];
                  v28 = v34;
                  v18 = v48;
                }
              }
            }

            v27 = [v51 countByEnumeratingWithState:&v55 objects:v77 count:16];
          }

          while (v27);
        }

        v10 = v47 + 1;
        v6 = v42;
      }

      while (v47 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
    }

    while (v44);
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __99__EKObject_Shared__updateMultiValueCacheForChangeSet_preservingExistingAdds_objectIdentifierBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }
}

void __99__EKObject_Shared__updateMultiValueCacheForChangeSet_preservingExistingAdds_objectIdentifierBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }
}

- (void)_resetAfterUpdatingChangeSetOrBackingObject
{
  [(EKObject *)self _resetMeltedCache];

  [(EKObject *)self _resetInternalStateWithForce:0];
}

- (void)_resetMeltedCache
{
  v88 = *MEMORY[0x1E69E9840];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = [objc_opt_class() knownRelationshipSingleValueKeys];
  v3 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
  v56 = self;
  if (v3)
  {
    v4 = v3;
    v5 = *v80;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v80 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v79 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [(EKObject *)self cachedMeltedObjectForSingleValueKey:v7];
        if (v9)
        {
          v10 = [(EKObject *)self backingObject];
          v11 = [v10 valueForKey:v7];

          v12 = [v9 backingObject];
          v13 = v12;
          if (v12 == v11)
          {
          }

          else
          {
            v14 = [v9 uniqueIdentifier];
            [v11 uniqueIdentifier];
            v15 = v4;
            v17 = v16 = v5;
            v59 = [v14 isEqualToString:v17];

            v5 = v16;
            v4 = v15;

            self = v56;
            if (!v59)
            {
              [(EKObject *)v56 setCachedMeltedObject:0 forSingleValueKey:v7];
LABEL_12:

              goto LABEL_13;
            }
          }

          [v9 _resetWithFrozenObject:v11];
          goto LABEL_12;
        }

LABEL_13:

        objc_autoreleasePoolPop(v8);
      }

      v4 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
    }

    while (v4);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v53 = [objc_opt_class() knownRelationshipMultiValueKeys];
  v18 = [v53 countByEnumeratingWithState:&v75 objects:v86 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v76;
    v51 = *v76;
    do
    {
      v21 = 0;
      v52 = v19;
      do
      {
        if (*v76 != v20)
        {
          objc_enumerationMutation(v53);
        }

        v22 = *(*(&v75 + 1) + 8 * v21);
        v23 = objc_autoreleasePoolPush();
        v24 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:v22];
        v25 = [MEMORY[0x1E695DF90] dictionary];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __37__EKObject_Shared___resetMeltedCache__block_invoke;
        v73[3] = &unk_1E77FF630;
        obja = v25;
        v74 = obja;
        [v24 enumerateObjectsUsingBlock:v73];
        if (v24)
        {
          if ([v24 count])
          {
            v54 = v23;
            v55 = v21;
            v60 = [MEMORY[0x1E695DFA8] setWithSet:v24];
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v26 = [(EKObject *)self backingObject];
            v27 = [v26 valueForKey:v22];

            v28 = v27;
            v29 = [v27 countByEnumeratingWithState:&v69 objects:v85 count:16];
            v30 = v24;
            v31 = obja;
            if (v29)
            {
              v32 = v29;
              v33 = *v70;
              do
              {
                for (j = 0; j != v32; ++j)
                {
                  if (*v70 != v33)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v35 = *(*(&v69 + 1) + 8 * j);
                  v36 = [v35 uniqueIdentifier];
                  v37 = [v31 objectForKeyedSubscript:v36];

                  if (v37)
                  {
                    [v37 _resetWithFrozenObject:v35];
                    [v60 removeObject:v37];
                  }

                  else
                  {
                    v38 = [(EKObject *)v56 eventStore];
                    v39 = [v35 meltedObjectInStore:v38];

                    v31 = obja;
                    [(EKObject *)v56 _addCachedMeltedObject:v39 forMultiValueKey:v22];
                  }
                }

                v32 = [v28 countByEnumeratingWithState:&v69 objects:v85 count:16];
              }

              while (v32);
            }

            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v40 = v60;
            v41 = [v40 countByEnumeratingWithState:&v65 objects:v84 count:16];
            self = v56;
            v19 = v52;
            v23 = v54;
            if (v41)
            {
              v42 = v41;
              v43 = *v66;
              do
              {
                for (k = 0; k != v42; ++k)
                {
                  if (*v66 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  [(EKObject *)v56 _removeCachedMeltedObject:*(*(&v65 + 1) + 8 * k) forMultiValueKey:v22];
                }

                v42 = [v40 countByEnumeratingWithState:&v65 objects:v84 count:16];
              }

              while (v42);
            }

            v20 = v51;
            v24 = v30;
            v21 = v55;
          }

          else
          {
            [(EKObject *)self emptyMeltedCacheForKey:v22];
          }
        }

        objc_autoreleasePoolPop(v23);
        ++v21;
      }

      while (v21 != v19);
      v19 = [v53 countByEnumeratingWithState:&v75 objects:v86 count:16];
    }

    while (v19);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v45 = [objc_opt_class() knownDerivedRelationshipKeys];
  v46 = [v45 countByEnumeratingWithState:&v61 objects:v83 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v62;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v62 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [(EKObject *)self setCachedMeltedObject:0 forSingleValueKey:*(*(&v61 + 1) + 8 * m)];
      }

      v47 = [v45 countByEnumeratingWithState:&v61 objects:v83 count:16];
    }

    while (v47);
  }

  v50 = *MEMORY[0x1E69E9840];
}

void __37__EKObject_Shared___resetMeltedCache__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uniqueIdentifier];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 uniqueIdentifier];
    [v5 setObject:v3 forKeyedSubscript:v6];
  }

  else
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __37__EKObject_Shared___resetMeltedCache__block_invoke_cold_1(v3, v7);
    }
  }
}

- (void)emptyMeltedCache
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __36__EKObject_Shared__emptyMeltedCache__block_invoke;
  v2[3] = &unk_1E77FD418;
  v2[4] = self;
  [(EKObject *)self _performWithLock:v2];
}

void __36__EKObject_Shared__emptyMeltedCache__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _cachedMeltedObjects];
  [v1 removeAllObjects];
}

- (void)emptyMeltedCacheForKey:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__EKObject_Shared__emptyMeltedCacheForKey___block_invoke;
  v6[3] = &unk_1E77FD580;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(EKObject *)self _performWithLock:v6];
}

void __43__EKObject_Shared__emptyMeltedCacheForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedMeltedObjects];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)emptyMeltedCacheForKeys:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__EKObject_Shared__emptyMeltedCacheForKeys___block_invoke;
  v6[3] = &unk_1E77FD580;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(EKObject *)self _performWithLock:v6];
}

void __44__EKObject_Shared__emptyMeltedCacheForKeys___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedMeltedObjects];
  [v2 removeObjectsForKeys:*(a1 + 40)];
}

- (id)copyMeltedObjectCache
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__18;
  v9 = __Block_byref_object_dispose__18;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__EKObject_Shared__copyMeltedObjectCache__block_invoke;
  v4[3] = &unk_1E77FD530;
  v4[4] = self;
  v4[5] = &v5;
  [(EKObject *)self _performWithLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __41__EKObject_Shared__copyMeltedObjectCache__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)augmentMeltedObjectCache:(id)a3
{
  v89 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v58 = self;
  v5 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v6 = [v5 countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v80;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v80 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v79 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = [(EKObject *)v58 frozenOrMeltedCachedSingleRelationObjectForKey:v10];
          v13 = [v12 frozenObject];
          v14 = [v11 frozenObject];

          if (v13 == v14)
          {
            [(EKObject *)v58 setCachedMeltedObject:v11 forSingleValueKey:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v79 objects:v88 count:16];
    }

    while (v7);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v15 = v58;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v52 = v4;
  v54 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v54)
  {
    v53 = *v76;
    do
    {
      for (j = 0; j != v54; ++j)
      {
        if (*v76 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v75 + 1) + 8 * j);
        v18 = [v4 objectForKeyedSubscript:v17];
        if ([v18 count])
        {
          v57 = j;
          v55 = v17;
          v19 = [(EKObject *)v15 frozenOrMeltedCachedMultiRelationObjectsForKey:v17];
          v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v21 = v19;
          v22 = [v21 countByEnumeratingWithState:&v71 objects:v86 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v72;
            do
            {
              for (k = 0; k != v23; ++k)
              {
                if (*v72 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v71 + 1) + 8 * k);
                v27 = [v26 objectID];
                [v20 setObject:v26 forKeyedSubscript:v27];
              }

              v23 = [v21 countByEnumeratingWithState:&v71 objects:v86 count:16];
            }

            while (v23);
          }

          v28 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v21, "count")}];
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v56 = v18;
          v29 = v18;
          v30 = [v29 countByEnumeratingWithState:&v67 objects:v85 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v68;
            do
            {
              for (m = 0; m != v31; ++m)
              {
                if (*v68 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v67 + 1) + 8 * m);
                v35 = [v34 objectID];
                v36 = [v20 objectForKeyedSubscript:v35];

                if (v36)
                {
                  [v28 addObject:v34];
                  [v20 removeObjectForKey:v35];
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v67 objects:v85 count:16];
            }

            while (v31);
          }

          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v37 = v20;
          v38 = [v37 countByEnumeratingWithState:&v63 objects:v84 count:16];
          v15 = v58;
          if (v38)
          {
            v39 = v38;
            v40 = *v64;
            do
            {
              for (n = 0; n != v39; ++n)
              {
                if (*v64 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = [v37 objectForKeyedSubscript:*(*(&v63 + 1) + 8 * n)];
                v43 = [(EKObject *)v58 eventStore];
                v44 = [v42 meltedObjectInStore:v43];

                [v28 addObject:v44];
              }

              v39 = [v37 countByEnumeratingWithState:&v63 objects:v84 count:16];
            }

            while (v39);
          }

          [(EKObject *)v58 setCachedMeltedObjects:v28 forMultiValueKey:v55];
          v4 = v52;
          v18 = v56;
          j = v57;
        }
      }

      v54 = [obj countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v54);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v45 = [objc_opt_class() knownDerivedRelationshipKeys];
  v46 = [v45 countByEnumeratingWithState:&v59 objects:v83 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v60;
    do
    {
      for (ii = 0; ii != v47; ++ii)
      {
        if (*v60 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [(EKObject *)v15 setCachedMeltedObject:0 forSingleValueKey:*(*(&v59 + 1) + 8 * ii)];
      }

      v47 = [v45 countByEnumeratingWithState:&v59 objects:v83 count:16];
    }

    while (v47);
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (id)inverseObjectWithObject:(id)a3 diff:(id *)a4
{
  v6 = a3;
  v7 = [(EKObject *)self snapshotCopy];
  v8 = [v7 diffWithObject:v6];
  v9 = v8;
  if (a4)
  {
    v10 = v8;
    *a4 = v9;
  }

  v11 = [objc_opt_class() _changeSetForDiff:v9];
  [v7 applyChanges:v11];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__18;
  v28 = __Block_byref_object_dispose__18;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __49__EKObject_Shared__inverseObjectWithObject_diff___block_invoke;
  v23[3] = &unk_1E77FD530;
  v23[4] = self;
  v23[5] = &v24;
  [(EKObject *)self _performWithLock:v23];
  if ([v25[5] count])
  {
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v25[5], "count")}];
    v13 = v25[5];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __49__EKObject_Shared__inverseObjectWithObject_diff___block_invoke_2;
    v20 = &unk_1E77FD338;
    v21 = self;
    v14 = v12;
    v22 = v14;
    [v13 enumerateKeysAndObjectsUsingBlock:&v17];
    v15 = [v14 copy];
    [v7 setAdditionalMeltedObjects:v15];
  }

  _Block_object_dispose(&v24, 8);

  return v7;
}

void __49__EKObject_Shared__inverseObjectWithObject_diff___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __49__EKObject_Shared__inverseObjectWithObject_diff___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v9 = [v8 containsObject:v5];

  if (v9)
  {
    v10 = *(a1 + 32);
    if (([objc_opt_class() isWeakRelationObject:v6 forKey:v5] & 1) == 0)
    {
      v11 = [v6 snapshotCopy];
      [*(a1 + 40) setObject:v11 forKeyedSubscript:v5];
    }
  }

  else
  {
    v12 = v6;
    v13 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v12, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v22 + 1) + 8 * v18) snapshotCopy];
          [v13 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    v20 = [v13 copy];
    [*(a1 + 40) setObject:v20 forKeyedSubscript:v5];
  }

  v21 = *MEMORY[0x1E69E9840];
}

+ (id)duplicatedPersistentObjectForObject:(id)a3 alreadyCopiedObjects:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectID];
  v8 = [v6 objectForKeyedSubscript:v7];
  if (!v8)
  {
    v9 = [v5 duplicate];
    [v9 updatePersistentObject];
    v8 = [v9 backingObject];
    [v6 setObject:v8 forKeyedSubscript:v7];
  }

  return v8;
}

+ (id)_changeSetForDiff:(id)a3
{
  v4 = [a3 changeSetForDiff];
  v5 = [v4 singleValueChanges];
  v6 = [v5 copy];

  v7 = objc_opt_new();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __38__EKObject_Shared___changeSetForDiff___block_invoke;
  v26[3] = &unk_1E77FF658;
  v29 = a1;
  v8 = v7;
  v27 = v8;
  v9 = v4;
  v28 = v9;
  [v6 enumerateKeysAndObjectsUsingBlock:v26];
  v10 = [v9 multiValueAdditions];
  v11 = [v10 copy];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __38__EKObject_Shared___changeSetForDiff___block_invoke_70;
  v22[3] = &unk_1E77FF6A8;
  v25 = a1;
  v23 = v8;
  v12 = v9;
  v24 = v12;
  v13 = v8;
  [v11 enumerateKeysAndObjectsUsingBlock:v22];
  v14 = [v12 multiValueRemovals];
  v15 = [v14 copy];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __38__EKObject_Shared___changeSetForDiff___block_invoke_71;
  v20[3] = &unk_1E77FF6F8;
  v16 = v12;
  v21 = v16;
  [v15 enumerateKeysAndObjectsUsingBlock:v20];
  v17 = v21;
  v18 = v16;

  return v16;
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFB0] null];
  if (v7 == v6)
  {
    goto LABEL_15;
  }

  v8 = *(a1 + 48);
  v9 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v10 = [v9 containsObject:v5];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
      v12 = *(a1 + 48);
      v13 = [objc_opt_class() knownRelationshipWeakKeys];
      v14 = [v13 containsObject:v5];

      if (v14)
      {
        [v11 backingObject];
      }

      else
      {
        [*(a1 + 48) duplicatedPersistentObjectForObject:v11 alreadyCopiedObjects:*(a1 + 32)];
      }
      v15 = ;
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v6;
      v17 = *(a1 + 48);
      v18 = [objc_opt_class() knownRelationshipWeakKeys];
      v19 = [v18 containsObject:v5];

      if (v19)
      {
        v15 = v16;
      }

      else
      {
        v15 = [v16 copy];
      }

LABEL_14:
      v7 = v15;

      [*(a1 + 40) forceChangeValue:v7 forKey:v5];
LABEL_15:

      goto LABEL_16;
    }

    v20 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __38__EKObject_Shared___changeSetForDiff___block_invoke_cold_1(v20);
    }
  }

LABEL_16:
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__EKObject_Shared___changeSetForDiff___block_invoke_2;
  v8[3] = &unk_1E77FF680;
  v12 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v5;
  v11 = *(a1 + 40);
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 56) duplicatedPersistentObjectForObject:v3 alreadyCopiedObjects:*(a1 + 32)];
LABEL_5:
    v5 = v4;
    [*(a1 + 48) replaceMultiChangeAddedObject:v3 withObject:v4 forKey:*(a1 + 40)];

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 copy];
    goto LABEL_5;
  }

  v6 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __38__EKObject_Shared___changeSetForDiff___block_invoke_2_cold_1(v6, v3, a1);
  }

LABEL_8:
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __38__EKObject_Shared___changeSetForDiff___block_invoke_2_72;
  v14 = &unk_1E77FF6D0;
  v15 = v5;
  v16 = v7;
  v8 = v7;
  v9 = v5;
  [v6 enumerateObjectsUsingBlock:&v11];
  v10 = [*(a1 + 32) multiValueRemovals];
  [v10 setObject:v8 forKeyedSubscript:v9];
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_2_72(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 backingObject];
LABEL_5:
    v5 = v4;
    [*(a1 + 40) addObject:v4];

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_5;
  }

  v6 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __38__EKObject_Shared___changeSetForDiff___block_invoke_2_72_cold_1(v6, v3, a1);
  }

LABEL_8:
}

+ (BOOL)_compareMultiValueRelationshipKey:(id)a3 forObject:(id)a4 againstObject:(id)a5 propertiesToIgnore:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v10 isPropertyUnavailable:v9] && (objc_msgSend(v11, "isPropertyUnavailable:", v9) & 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    v14 = [v10 valueForKey:v9];
    v15 = [v11 valueForKey:v9];
    v16 = [v14 count];
    if (v16 == [v15 count])
    {
      v37 = v10;
      v38 = v15;
      v36 = v11;
      v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v35 = v14;
      v18 = v14;
      v19 = [v18 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v45;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v45 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v44 + 1) + 8 * i);
            v24 = [v23 uniqueIdentifier];
            if (v24)
            {
              [v17 setObject:v23 forKeyedSubscript:v24];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v20);
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v25 = v38;
      v26 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v41;
        while (2)
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v41 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v40 + 1) + 8 * j);
            v31 = [v30 uniqueIdentifier];
            v32 = [v17 objectForKeyedSubscript:v31];
            LODWORD(v30) = [a1 _compareRelationshipObject1:v32 againstRelationshipObject2:v30 propertiesToIgnore:v12 relationshipObjectKey:v9];

            if (!v30)
            {
              v13 = 0;
              goto LABEL_25;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      v13 = 1;
LABEL_25:

      v11 = v36;
      v10 = v37;
      v14 = v35;
      v15 = v38;
    }

    else
    {
      v13 = 0;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)_compareNonRelationshipKeys:(id)a3 forObject:(id)a4 againstObject:(id)a5 propertiesToIgnore:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v10 == v11)
  {
    v14 = 1;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __91__EKObject_Shared___compareNonRelationshipKeys_forObject_againstObject_propertiesToIgnore___block_invoke;
    v16[3] = &unk_1E77FF720;
    v17 = v12;
    v18 = v10;
    v19 = v11;
    v20 = a1;
    v14 = [a3 indexOfObjectPassingTest:v16] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return v14;
}

uint64_t __91__EKObject_Shared___compareNonRelationshipKeys_forObject_againstObject_propertiesToIgnore___block_invoke(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([a1[4] containsObject:v6] & 1) != 0 || objc_msgSend(a1[5], "isPropertyUnavailable:", v6) && (objc_msgSend(a1[6], "isPropertyUnavailable:", v6))
  {
    v7 = 0;
  }

  else
  {
    v8 = [a1[5] valueForKey:v6];
    v9 = [a1[6] valueForKey:v6];
    v10 = [a1[7] canonicalizedEqualityTestValue1:v8 value2:v9 key:v6 object1:a1[5] object2:a1[6]];
    if ((v10 & 1) == 0)
    {
      *a4 = 1;
    }

    v7 = v10 ^ 1u;
  }

  return v7;
}

+ (BOOL)_compareSingleValueRelationshipKey:(id)a3 forObject:(id)a4 againstObject:(id)a5 propertiesToIgnore:(id)a6 ignoreIdentityKeys:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([v13 isPropertyUnavailable:v12] && (objc_msgSend(v14, "isPropertyUnavailable:", v12) & 1) != 0)
  {
    v16 = 1;
  }

  else
  {
    v17 = [v13 valueForKey:v12];
    v18 = [v14 valueForKey:v12];
    if (v7)
    {
      v19 = [objc_opt_class() knownIdentityKeysForComparison];
      v20 = [v15 setByAddingObjectsFromArray:v19];

      v21 = [objc_opt_class() knownSingleValueKeysToSkipForUIComparison];
      v15 = [v20 setByAddingObjectsFromArray:v21];
    }

    v16 = [a1 _compareRelationshipObject1:v17 againstRelationshipObject2:v18 propertiesToIgnore:v15 relationshipObjectKey:v12];
  }

  return v16;
}

+ (BOOL)_compareRelationshipObject1:(id)a3 againstRelationshipObject2:(id)a4 propertiesToIgnore:(id)a5 relationshipObjectKey:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ((v9 == 0) != (v10 == 0))
  {
    goto LABEL_5;
  }

  v13 = 1;
  if (v9 && v10)
  {
    v14 = [objc_opt_class() meltedClass];
    if (v14 != [objc_opt_class() meltedClass])
    {
LABEL_5:
      v13 = 0;
      goto LABEL_6;
    }

    if (([v14 isWeakRelationship] & 1) != 0 || (objc_msgSend(v14, "knownRelationshipWeakKeys"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", v12), v16, v17))
    {
      v18 = [v14 _compareIdentityKeysForObject:v9 againstObject:v10 propertiesToIgnore:v11];
    }

    else
    {
      v18 = [v9 isEqual:v10 ignoringProperties:v11];
    }

    v13 = v18;
  }

LABEL_6:

  return v13;
}

+ (BOOL)canonicalizedEqualityTestValue1:(id)a3 value2:(id)a4 key:(id)a5 object1:(id)a6 object2:(id)a7
{
  if (a3 | a4)
  {
    return [a3 isEqual:a4];
  }

  else
  {
    return 1;
  }
}

- (id)privacyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKObject *)self uniqueIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ uniqueIdentifier=[%@]>", v4, v5];

  return v6;
}

- (id)_convertBackingObjectsWithPath:(id)a3 updateBackingObjects:(BOOL)a4 allChangedBackingObjects:(id)a5 eventStore:(id)a6 updatedBackingObjectProvider:(id)a7
{
  v86 = *MEMORY[0x1E69E9840];
  v54 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__18;
  v82 = __Block_byref_object_dispose__18;
  v83 = 0;
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __137__EKObject_Shared___convertBackingObjectsWithPath_updateBackingObjects_allChangedBackingObjects_eventStore_updatedBackingObjectProvider___block_invoke;
  v77[3] = &unk_1E77FD530;
  v77[4] = self;
  v77[5] = &v78;
  [(EKObject *)self _performWithLock:v77];
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__18;
  v75 = __Block_byref_object_dispose__18;
  v76 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __137__EKObject_Shared___convertBackingObjectsWithPath_updateBackingObjects_allChangedBackingObjects_eventStore_updatedBackingObjectProvider___block_invoke_2;
  aBlock[3] = &unk_1E77FF748;
  aBlock[4] = &v71;
  v15 = _Block_copy(aBlock);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __137__EKObject_Shared___convertBackingObjectsWithPath_updateBackingObjects_allChangedBackingObjects_eventStore_updatedBackingObjectProvider___block_invoke_3;
  v63[3] = &unk_1E77FF770;
  v68 = a4;
  v44 = v12;
  v64 = v44;
  v45 = v13;
  v65 = v45;
  v46 = v14;
  v66 = v46;
  v69 = 1;
  v47 = v15;
  v67 = v47;
  v16 = _Block_copy(v63);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v79[5];
  v50 = [obj countByEnumeratingWithState:&v59 objects:v85 count:16];
  if (v50)
  {
    v49 = *v60;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v60 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v59 + 1) + 8 * i);
        v52 = [v79[5] objectForKeyedSubscript:v17];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([objc_opt_class() isWeakRelationObject:v52 forKey:v17])
          {
            goto LABEL_43;
          }

          v18 = v52;
          v53 = [(EKObject *)self backingObjectOfChildObject:v18 withRelationshipKey:v17];
          if (v54 && (-[EKObject changeSet](self, "changeSet"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 hasUnsavedChangeForKey:v17], v19, (v20 & 1) == 0))
          {
            v35 = [(EKObject *)self backingObject];
            v36 = [v35 remObjectID];

            if (v36)
            {
              [v54 addObject:v36];
              v21 = v54;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }

          v37 = v16[2](v16, v53, v18, v21);
          v38 = [(EKObject *)self changeSet];
          v39 = [v38 valueForSingleValueKey:v17 basedOn:0];

          if (v37 && v39)
          {
            [(EKObject *)self setSingleChangedValue:v37 forKey:v17];
          }

          else if (v39 != v53)
          {
            v40 = [(EKObject *)self changeSet];
            [v40 forceChangeValue:v53 forKey:v17];

            (*(v47 + 2))(v47, v53, v53);
          }

          if (v21)
          {
            [v54 removeLastObject];
          }
        }

        else
        {
          v22 = v52;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v53 = v22;
          v23 = [v53 countByEnumeratingWithState:&v55 objects:v84 count:16];
          if (v23)
          {
            v24 = *v56;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v56 != v24)
                {
                  objc_enumerationMutation(v53);
                }

                v26 = *(*(&v55 + 1) + 8 * j);
                v27 = [(EKObject *)self backingObjectOfChildObject:v26 withRelationshipKey:v17];
                if (v54 && (-[EKObject changeSet](self, "changeSet"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 isUniqueAddedObject:v26 forKey:v17], v28, (v29 & 1) == 0))
                {
                  v31 = [(EKObject *)self backingObject];
                  v32 = [v31 remObjectID];

                  if (v32)
                  {
                    [v54 addObject:v32];
                    v30 = v54;
                  }

                  else
                  {
                    v30 = 0;
                  }
                }

                else
                {
                  v30 = 0;
                }

                v33 = v16[2](v16, v27, v26, v30);
                if (v33)
                {
                  v34 = [(EKObject *)self changeSet];
                  [v34 replaceMultiChangeAddedObject:v27 withObject:v33 forKey:v17];
                }

                if (v30)
                {
                  [v54 removeLastObject];
                }
              }

              v23 = [v53 countByEnumeratingWithState:&v55 objects:v84 count:16];
            }

            while (v23);
          }
        }

LABEL_43:
      }

      v50 = [obj countByEnumeratingWithState:&v59 objects:v85 count:16];
    }

    while (v50);
  }

  v41 = v72[5];
  _Block_object_dispose(&v71, 8);

  _Block_object_dispose(&v78, 8);
  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

void __137__EKObject_Shared___convertBackingObjectsWithPath_updateBackingObjects_allChangedBackingObjects_eventStore_updatedBackingObjectProvider___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __137__EKObject_Shared___convertBackingObjectsWithPath_updateBackingObjects_allChangedBackingObjects_eventStore_updatedBackingObjectProvider___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = *(*(*(a1 + 32) + 8) + 40);
  }

  v10 = [v11 uniqueIdentifier];
  [v6 setObject:v5 forKeyedSubscript:v10];
}

id __137__EKObject_Shared___convertBackingObjectsWithPath_updateBackingObjects_allChangedBackingObjects_eventStore_updatedBackingObjectProvider___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 _convertBackingObjectsWithPath:v9 updateBackingObjects:*(a1 + 64) allChangedBackingObjects:*(a1 + 32) eventStore:*(a1 + 40) updatedBackingObjectProvider:*(a1 + 48)];
  objc_opt_class();
  if (*(a1 + 65) == (objc_opt_isKindOfClass() & 1))
  {
    if (*(a1 + 64) == 1)
    {
      v11 = *(a1 + 48);
      v12 = [v7 uniqueIdentifier];
      v13 = [v11 existingUpdatedObject:v12];

      if ([v10 count] || (objc_msgSend(v8, "hasUnsavedChanges") & 1) != 0 || v13)
      {
        if (!v13)
        {
          v13 = v7;
        }

        v14 = [v8 changeSet];
        v15 = [v13 updatedFrozenObjectWithChanges:v14 updatedChildren:v10];

        if (v15 != v13)
        {
          v16 = [v8 changeSet];
          [v16 markChangesAsSaved];

          [v8 setBackingObject:v15];
          (*(*(a1 + 56) + 16))();
          if (v9)
          {
            if (*(a1 + 32))
            {
              [v15 setPath:v9];
              [*(a1 + 32) addObject:v15];
            }
          }
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v17 = [objc_alloc(objc_msgSend(objc_opt_class() "alternateUniverseClass"))];
    v15 = v17;
    if (*(a1 + 64) == 1)
    {
      v18 = [v17 uncommittedChanges];
      v19 = [v8 changeSet];
      [v18 addChanges:v19];

      v20 = [v8 changeSet];
      [v20 markChangesAsSaved];
    }

    [v8 setBackingObject:v15];
    (*(*(a1 + 56) + 16))();
  }

  return v15;
}

- (id)backingObjectOfChildObject:(id)a3 withRelationshipKey:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 backingObject];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [(EKObject *)self changeSet];
    v11 = [v10 singleValueChanges];
    v9 = [v11 objectForKeyedSubscript:v7];

    if (!v9)
    {
      v12 = [v6 uniqueIdentifier];
      v13 = [(EKObject *)self changeSet];
      v14 = [v13 unsavedMultiValueAddedObjectsForKey:v7];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v15 = v14;
      v9 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        v16 = *v24;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v15);
            }

            v18 = *(*(&v23 + 1) + 8 * i);
            v19 = [v18 uniqueIdentifier];
            v20 = [v19 isEqualToString:v12];

            if (v20)
            {
              v9 = v18;
              goto LABEL_14;
            }
          }

          v9 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)prepareReminderKitObjectForSaveWithUpdatedBackingObjectProvider:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(EKObject *)self eventStore];
  v9 = [(EKObject *)self _convertBackingObjectsWithPath:v7 updateBackingObjects:1 allChangedBackingObjects:v6 eventStore:v8 updatedBackingObjectProvider:v5];

  v10 = [(EKObject *)self changeSet];
  if ([v10 hasUnsavedChanges])
  {
  }

  else
  {
    v11 = [v9 count];

    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v12 = [(EKObject *)self backingObject];
  v13 = [(EKObject *)self changeSet];
  v14 = [v12 updatedFrozenObjectWithChanges:v13 updatedChildren:v9];

  [(EKObject *)self setBackingObject:v14];
  v15 = [(EKObject *)self changeSet];
  [v15 markChangesAsSaved];

  [v6 addObject:v14];
LABEL_5:

  return v6;
}

- (id)cachedMeltedChildIdentifierToParentMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(EKObject *)self _cachedMeltedChildIdentifierToParentMap:v3];

  return v3;
}

- (void)_cachedMeltedChildIdentifierToParentMap:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__18;
  v42 = __Block_byref_object_dispose__18;
  v43 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __60__EKObject_Shared___cachedMeltedChildIdentifierToParentMap___block_invoke;
  v37[3] = &unk_1E77FD530;
  v37[4] = self;
  v37[5] = &v38;
  [(EKObject *)self _performWithLock:v37];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v39[5];
  v22 = [obj countByEnumeratingWithState:&v33 objects:v53 count:16];
  if (v22)
  {
    v21 = *v34;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * i);
        v24 = [v39[5] objectForKeyedSubscript:v5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v6 = v24;
          v7 = [v6 countByEnumeratingWithState:&v29 objects:v52 count:16];
          if (v7)
          {
            v8 = *v30;
            do
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v30 != v8)
                {
                  objc_enumerationMutation(v6);
                }

                v10 = *(*(&v29 + 1) + 8 * j);
                if (([objc_opt_class() isWeakRelationObject:v10 forKey:v5] & 1) == 0)
                {
                  v11 = [v10 uniqueIdentifier];
                  if (v11)
                  {
                    [v4 setObject:self forKeyedSubscript:v11];
                  }

                  else
                  {
                    v12 = EKLogHandle;
                    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
                    {
                      v28 = objc_opt_class();
                      v25 = objc_opt_class();
                      v27 = [v10 frozenObject];
                      v13 = [v27 REMObject];
                      *buf = 138544130;
                      v45 = v28;
                      v46 = 2114;
                      v47 = v5;
                      v48 = 2114;
                      v49 = v25;
                      v50 = 2112;
                      v51 = v13;
                      v26 = v13;
                      _os_log_fault_impl(&dword_1A805E000, v12, OS_LOG_TYPE_FAULT, "Got a nil unique identifier for object of type %{public}@ for relation key %{public}@ on object of type %{public}@. Backing object of bad object = %@", buf, 0x2Au);
                    }
                  }

                  [v10 _cachedMeltedChildIdentifierToParentMap:v4];
                }
              }

              v7 = [v6 countByEnumeratingWithState:&v29 objects:v52 count:16];
            }

            while (v7);
          }
        }

        else
        {
          if ([objc_opt_class() isWeakRelationObject:v24 forKey:v5])
          {
            goto LABEL_30;
          }

          v6 = [v24 uniqueIdentifier];
          if (v6)
          {
            [v4 setObject:self forKeyedSubscript:v6];
          }

          else
          {
            v14 = EKLogHandle;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              v15 = objc_opt_class();
              v16 = objc_opt_class();
              v17 = [v24 frozenObject];
              v18 = [v17 REMObject];
              *buf = 138544130;
              v45 = v15;
              v46 = 2114;
              v47 = v5;
              v48 = 2114;
              v49 = v16;
              v50 = 2112;
              v51 = v18;
              _os_log_fault_impl(&dword_1A805E000, v14, OS_LOG_TYPE_FAULT, "Got a nil unique identifier for object of type %{public}@ for relation key %{public}@ on object of type %{public}@. Backing object of bad object = %@", buf, 0x2Au);
            }
          }

          [v24 _cachedMeltedChildIdentifierToParentMap:v4];
        }

LABEL_30:
      }

      v22 = [obj countByEnumeratingWithState:&v33 objects:v53 count:16];
    }

    while (v22);
  }

  _Block_object_dispose(&v38, 8);
  v19 = *MEMORY[0x1E69E9840];
}

void __60__EKObject_Shared___cachedMeltedChildIdentifierToParentMap___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)meltedObjectInStore:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKObject.m" lineNumber:354 description:@"Cannot copy an object with changes from one event store to another"];
}

void __37__EKObject_Shared___resetMeltedCache__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = [OUTLINED_FUNCTION_5() callStackSymbols];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  OUTLINED_FUNCTION_5();
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_2_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a1;
  OUTLINED_FUNCTION_5();
  objc_opt_class();
  v6 = *(a3 + 40);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x16u);

  v14 = *MEMORY[0x1E69E9840];
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_2_72_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a1;
  OUTLINED_FUNCTION_5();
  objc_opt_class();
  v6 = *(a3 + 32);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v9, v10, v11, v12, v13, 0x16u);

  v14 = *MEMORY[0x1E69E9840];
}

@end