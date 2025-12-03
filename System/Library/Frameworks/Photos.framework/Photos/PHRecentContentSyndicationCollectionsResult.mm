@interface PHRecentContentSyndicationCollectionsResult
+ (id)pointerComparableIdentifiersFromIdentifiers:(id)identifiers;
- (BOOL)isEqual:(id)equal;
- (PHRecentContentSyndicationCollectionsResult)initWithObjects:(id)objects photoLibrary:(id)library fetchOptions:(id)options maxNumberOfStacks:(int64_t)stacks maxNumberOfAssetsPerStack:(int64_t)stack fetchType:(id)type fetchPropertySets:(id)sets identifier:(id)self0 registerIfNeeded:(BOOL)self1;
- (id)_transientCollectionForAssetOID:(id)d;
- (id)_transientCollectionForIdentifier:(id)identifier;
- (id)additionalChangedIdentifiersFromPreviousIdentifiers:(id)identifiers currentIdentifiers:(id)currentIdentifiers inFetchResultBeforeChanges:(id)changes;
- (id)changeHandlingValueUsingSeedOids:(id)oids withChange:(id)change usingManagedObjectContext:(id)context;
- (id)copyWithOptions:(id)options;
- (id)description;
- (id)objectIDAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (unint64_t)possibleChangesForChange:(id)change propertiesFetchResult:(id)result;
@end

@implementation PHRecentContentSyndicationCollectionsResult

- (id)description
{
  v4.receiver = self;
  v4.super_class = PHRecentContentSyndicationCollectionsResult;
  v2 = [(PHFetchResult *)&v4 description];

  return v2;
}

- (unint64_t)possibleChangesForChange:(id)change propertiesFetchResult:(id)result
{
  v61 = *MEMORY[0x1E69E9840];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  changeCopy = change;
  insertedObjectIDs = [changeCopy insertedObjectIDs];
  v5 = [insertedObjectIDs countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v54;
    v8 = 1;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v54 != v7)
      {
        objc_enumerationMutation(insertedObjectIDs);
      }

      entity = [*(*(&v53 + 1) + 8 * v9) entity];
      name = [entity name];
      entityName = [MEMORY[0x1E69BE540] entityName];
      v13 = [name isEqualToString:entityName];

      if (v13)
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [insertedObjectIDs countByEnumeratingWithState:&v53 objects:v60 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  deletedObjectIDs = [changeCopy deletedObjectIDs];
  v15 = [deletedObjectIDs countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v15)
  {
    v16 = v15;
    v41 = v8;
    v17 = *v50;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(deletedObjectIDs);
        }

        v19 = *(*(&v49 + 1) + 8 * i);
        entity2 = [v19 entity];
        name2 = [entity2 name];
        entityName2 = [MEMORY[0x1E69BE540] entityName];
        v23 = [name2 isEqualToString:entityName2];

        if (v23)
        {
          v24 = [(PHRecentContentSyndicationCollectionsResult *)self _transientCollectionForAssetOID:v19];

          if (v24)
          {
            v8 = v41 | 0xA;
            goto LABEL_21;
          }
        }
      }

      v16 = [deletedObjectIDs countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v8 = v41;
  }

LABEL_21:

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  updatedObjectIDs = [changeCopy updatedObjectIDs];
  v26 = [updatedObjectIDs countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v26)
  {
    v27 = v26;
    v42 = v8;
    v28 = *v46;
    while (2)
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v46 != v28)
        {
          objc_enumerationMutation(updatedObjectIDs);
        }

        v30 = *(*(&v45 + 1) + 8 * j);
        entity3 = [v30 entity];
        name3 = [entity3 name];
        entityName3 = [MEMORY[0x1E69BE540] entityName];
        v34 = [name3 isEqualToString:entityName3];

        if (v34)
        {
          v35 = MEMORY[0x1E69BE6F8];
          v57[0] = @"syndicationState";
          v57[1] = @"savedAssetType";
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
          entityName4 = [MEMORY[0x1E69BE540] entityName];
          v38 = [v35 indexValueForAttributeNames:v36 entity:entityName4];

          entity4 = [v30 entity];
          LOBYTE(v38) = [changeCopy anyUpdatedObjectsWithChangedAttributes:v38 ofEntity:entity4];

          if (v38)
          {
            v8 = 11;
            goto LABEL_32;
          }
        }
      }

      v27 = [updatedObjectIDs countByEnumeratingWithState:&v45 objects:v58 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }

    v8 = v42;
  }

LABEL_32:

  return v8;
}

- (id)objectIDAtIndex:(unint64_t)index
{
  objects = [(PHRecentContentSyndicationCollectionsResult *)self objects];
  v5 = [objects objectAtIndex:index];
  objectID = [v5 objectID];

  return objectID;
}

- (id)additionalChangedIdentifiersFromPreviousIdentifiers:(id)identifiers currentIdentifiers:(id)currentIdentifiers inFetchResultBeforeChanges:(id)changes
{
  v36 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  currentIdentifiersCopy = currentIdentifiers;
  changesCopy = changes;
  v26 = identifiersCopy;
  v11 = [MEMORY[0x1E695DFA8] setWithArray:identifiersCopy];
  v25 = currentIdentifiersCopy;
  v12 = [MEMORY[0x1E695DFD8] setWithArray:currentIdentifiersCopy];
  [v11 intersectSet:v12];

  v30 = changesCopy;
  selfCopy = self;
  v27 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v11, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [v30 _transientCollectionForIdentifier:v17];
        v20 = [(PHRecentContentSyndicationCollectionsResult *)selfCopy _transientCollectionForIdentifier:v17];
        assetOids = [v19 assetOids];
        assetOids2 = [v20 assetOids];
        v23 = [assetOids isEqualToArray:assetOids2];

        if ((v23 & 1) == 0)
        {
          [v27 addObject:v17];
        }

        objc_autoreleasePoolPop(v18);
      }

      v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  return v27;
}

- (id)changeHandlingValueUsingSeedOids:(id)oids withChange:(id)change usingManagedObjectContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_30448];
  deletedObjectIDs = [changeCopy deletedObjectIDs];
  v9 = [deletedObjectIDs filteredSetUsingPredicate:v7];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(PHRecentContentSyndicationCollectionsResult *)self _transientCollectionForAssetOID:*(*(&v22 + 1) + 8 * i), v22];

        if (v15)
        {

          goto LABEL_12;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  updatedObjectIDs = [changeCopy updatedObjectIDs];
  v17 = [updatedObjectIDs filteredSetUsingPredicate:v7];

  v18 = [v17 count];
  if (v18)
  {
LABEL_12:
    selfCopy = [PHAssetCollection fetchRecentContentSyndicationAssetCollectionsWithOptions:self->_fetchOptions maxNumberOfStacks:self->_maxNumberOfStacks maxNumberOfAssetsPerStack:self->_maxNumberOfAssetsPerStack, v22];
  }

  else
  {
    selfCopy = self;
  }

  v20 = selfCopy;

  return v20;
}

uint64_t __117__PHRecentContentSyndicationCollectionsResult_changeHandlingValueUsingSeedOids_withChange_usingManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 entity];
  v3 = [v2 name];
  v4 = [MEMORY[0x1E69BE540] entityName];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)copyWithOptions:(id)options
{
  objects = [(PHRecentContentSyndicationCollectionsResult *)self objects];
  v5 = [PHRecentContentSyndicationCollectionsResult alloc];
  photoLibrary = self->_photoLibrary;
  fetchOptions = self->_fetchOptions;
  maxNumberOfStacks = self->_maxNumberOfStacks;
  maxNumberOfAssetsPerStack = self->_maxNumberOfAssetsPerStack;
  fetchType = self->super._fetchType;
  fetchPropertySets = self->super._fetchPropertySets;
  identifier = self->_identifier;
  LOBYTE(v15) = [(PHFetchResult *)self isRegisteredForChangeNotificationDeltas];
  v13 = [(PHRecentContentSyndicationCollectionsResult *)v5 initWithObjects:objects photoLibrary:photoLibrary fetchOptions:fetchOptions maxNumberOfStacks:maxNumberOfStacks maxNumberOfAssetsPerStack:maxNumberOfAssetsPerStack fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:identifier registerIfNeeded:v15];

  return v13;
}

- (unint64_t)hash
{
  identifier = [(PHRecentContentSyndicationCollectionsResult *)self identifier];
  v4 = identifier;
  if (identifier)
  {
    v5 = [identifier hash];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PHRecentContentSyndicationCollectionsResult;
    v5 = [(PHRecentContentSyndicationCollectionsResult *)&v8 hash];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = PHRecentContentSyndicationCollectionsResult;
  if ([(PHRecentContentSyndicationCollectionsResult *)&v9 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    identifier = [(PHRecentContentSyndicationCollectionsResult *)self identifier];
    if (identifier && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      identifier2 = [equalCopy identifier];
      v5 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (PHRecentContentSyndicationCollectionsResult)initWithObjects:(id)objects photoLibrary:(id)library fetchOptions:(id)options maxNumberOfStacks:(int64_t)stacks maxNumberOfAssetsPerStack:(int64_t)stack fetchType:(id)type fetchPropertySets:(id)sets identifier:(id)self0 registerIfNeeded:(BOOL)self1
{
  objectsCopy = objects;
  libraryCopy = library;
  optionsCopy = options;
  typeCopy = type;
  setsCopy = sets;
  identifierCopy = identifier;
  v36.receiver = self;
  v36.super_class = PHRecentContentSyndicationCollectionsResult;
  v23 = [(PHFetchResult *)&v36 init];
  if (v23)
  {
    v24 = [objectsCopy copy];
    objects = v23->_objects;
    v23->_objects = v24;

    v26 = [typeCopy copy];
    fetchType = v23->super._fetchType;
    v23->super._fetchType = v26;

    v28 = [optionsCopy copy];
    fetchOptions = v23->_fetchOptions;
    v23->_fetchOptions = v28;

    v30 = [setsCopy copy];
    fetchPropertySets = v23->super._fetchPropertySets;
    v23->super._fetchPropertySets = v30;

    v23->_maxNumberOfStacks = stacks;
    v23->_maxNumberOfAssetsPerStack = stack;
    v32 = libraryCopy;
    if (!v32)
    {
      firstObject = [objectsCopy firstObject];
      v32 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:firstObject];
    }

    objc_storeStrong(&v23->_photoLibrary, v32);
    if (!identifierCopy)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      identifierCopy = [uUID UUIDString];
    }

    objc_storeStrong(&v23->_identifier, identifierCopy);
    if (needed)
    {
      [(PHFetchResult *)v23 setRegisteredForChangeNotificationDeltas:1];
    }
  }

  return v23;
}

- (id)_transientCollectionForAssetOID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  memset(v10, 0, sizeof(v10));
  v5 = self->_objects;
  if ([(NSArray *)v5 countByEnumeratingWithState:v10 objects:v11 count:16])
  {
    v6 = **(&v10[0] + 1);
    assetOids = [**(&v10[0] + 1) assetOids];
    [assetOids containsObject:dCopy];

    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_transientCollectionForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_objects;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        transientIdentifier = [v9 transientIdentifier];
        v11 = [transientIdentifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)pointerComparableIdentifiersFromIdentifiers:(id)identifiers
{
  v26 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v4 = identifiersCopy;
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          longLongValue = [*(*(&v19 + 1) + 8 * i) longLongValue];
          v12 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
          v13 = v12;
          if (longLongValue < 1 || (v12 & 0x8000000000000000) == 0)
          {
            v14 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v24 = longLongValue;
              _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "Unable to translate value: %lld in PHRecentContentSyndicationCollectionsResult to a tagged pointer equivalent.", buf, 0xCu);
            }

            goto LABEL_15;
          }

          [v5 addObject:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    if (v5)
    {
      v15 = [v5 count];
      if (v15 == [v6 count])
      {
        v16 = v5;
        v5 = v16;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = identifiersCopy;
LABEL_20:
  v17 = v16;

  return v17;
}

@end