@interface PHCollectionListChangeRequest
+ (PHCollectionListChangeRequest)changeRequestForTopLevelCollectionListUserCollections:(PHFetchResult *)childCollections;
+ (PHCollectionListChangeRequest)creationRequestForCollectionListWithTitle:(NSString *)title;
+ (id)_changeRequestForCollectionList:(id)list optionalChildCollections:(id)collections;
+ (void)_deleteCollectionLists:(id)lists withOperation:(int64_t)operation topLevelSelector:(SEL)selector;
- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)customSortAscending;
- (NSString)description;
- (NSString)title;
- (PHCollectionListChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHCollectionListChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (PHObjectPlaceholder)placeholderForCreatedCollectionList;
- (id)_mutableObjectIDsAndUUIDs;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (unsigned)customSortKey;
- (void)_prepareAssetIDsIfNeeded;
- (void)_prepareWithFetchResult:(id)result;
- (void)addChildCollection:(id)collection;
- (void)addChildCollections:(id)collections;
- (void)encodeToXPCDict:(id)dict;
- (void)insertChildCollection:(id)collection inChildCollectionsAtIndex:(unint64_t)index;
- (void)insertChildCollections:(id)collections atIndexes:(NSIndexSet *)indexes;
- (void)moveChildCollectionsAtIndexes:(NSIndexSet *)indexes toIndex:(NSUInteger)toIndex;
- (void)removeChildCollection:(id)collection;
- (void)removeChildCollectionFromChildCollectionsAtIndex:(unint64_t)index;
- (void)removeChildCollections:(id)collections;
- (void)removeChildCollectionsAtIndexes:(NSIndexSet *)indexes;
- (void)replaceChildCollectionsAtIndex:(unint64_t)index withChildCollection:(id)collection;
- (void)replaceChildCollectionsAtIndexes:(NSIndexSet *)indexes withChildCollections:(id)collections;
- (void)setCustomSortAscending:(BOOL)ascending;
- (void)setCustomSortKey:(unsigned int)key;
- (void)setTitle:(NSString *)title;
@end

@implementation PHCollectionListChangeRequest

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = PHCollectionListChangeRequest;
  v3 = [(PHCollectionListChangeRequest *)&v8 description];
  title = [(PHCollectionListChangeRequest *)self title];
  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_collectionsHelper mutableObjectIDsAndUUIDs];
  v6 = [v3 stringByAppendingFormat:@" title=%@ hasAssetChanges=%d", title, mutableObjectIDsAndUUIDs != 0];

  return v6;
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v48[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  managedObjectContext = [objectCopy managedObjectContext];
  v9 = PLSafeEntityForNameInManagedObjectContext();

  if (!v9)
  {
    v15 = 0;
    v32 = 0;
    goto LABEL_17;
  }

  kindValue = [objectCopy kindValue];
  entity = [objectCopy entity];
  v12 = [entity isKindOfEntity:v9];

  if (!v12 || (kindValue - 3998) >= 3)
  {
    v34 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    collectionsHelper = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid collection list type"];
    v48[0] = collectionsHelper;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v33 = [v34 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v20];
    v32 = 0;
LABEL_11:

    v15 = v33;
    goto LABEL_12;
  }

  helper = [(PHChangeRequest *)self helper];
  v46 = 0;
  v14 = [helper applyMutationsToManagedObject:objectCopy error:&v46];
  v15 = v46;

  if (!v14)
  {
    v32 = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  collectionsHelper = [(PHCollectionListChangeRequest *)self collectionsHelper];
  mutableObjectIDsAndUUIDs = [collectionsHelper mutableObjectIDsAndUUIDs];

  if (mutableObjectIDsAndUUIDs)
  {
    v18 = objectCopy;
    [collectionsHelper setAllowsInsert:{objc_msgSend(v18, "canPerformEditOperation:", 4)}];
    [collectionsHelper setAllowsMove:{objc_msgSend(v18, "canPerformEditOperation:", 16)}];
    [collectionsHelper setAllowsRemove:{objc_msgSend(v18, "canPerformEditOperation:", 2)}];
    entityName = [MEMORY[0x1E69BE458] entityName];
    [collectionsHelper setDestinationEntityName:entityName];

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __82__PHCollectionListChangeRequest_applyMutationsToManagedObject_photoLibrary_error___block_invoke;
    v43[3] = &unk_1E75A4C70;
    v20 = v18;
    v44 = v20;
    v45 = kindValue;
    [collectionsHelper setIsDestinationObjectValid:v43];
    if ([(PHCollectionListChangeRequest *)self isTopLevelUserCollection])
    {
      v21 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
      librarySpecificFetchOptions = [v21 librarySpecificFetchOptions];

      v22 = MEMORY[0x1E696AB28];
      v23 = +[PHCollection predicateForUserCollections];
      v39 = [v22 notPredicateWithSubpredicate:v23];

      v38 = [PHQuery queryForTopLevelCollectionsMatchingPredicate:v39 options:librarySpecificFetchOptions];
      executeQuery = [v38 executeQuery];
      fetchedObjectIDs = [executeQuery fetchedObjectIDs];
      originalObjectIDs = [collectionsHelper originalObjectIDs];
      v37 = [fetchedObjectIDs arrayByAddingObjectsFromArray:originalObjectIDs];

      [collectionsHelper setOriginalObjectIDs:v37];
      mutableObjectIDsAndUUIDs2 = [collectionsHelper mutableObjectIDsAndUUIDs];
      fetchedObjectIDs2 = [executeQuery fetchedObjectIDs];
      v28 = MEMORY[0x1E696AC90];
      fetchedObjectIDs3 = [executeQuery fetchedObjectIDs];
      v30 = [v28 indexSetWithIndexesInRange:{0, objc_msgSend(fetchedObjectIDs3, "count")}];
      [mutableObjectIDsAndUUIDs2 insertObjects:fetchedObjectIDs2 atIndexes:v30];
    }

    albums = [v20 albums];
    v42 = v15;
    v32 = [collectionsHelper applyMutationsToManagedObject:v20 orderedMutableChildren:albums error:&v42];
    v33 = v42;

    goto LABEL_11;
  }

  v32 = 1;
LABEL_12:

  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  if ((v32 & 1) == 0)
  {
    v35 = v15;
    v32 = 0;
    *error = v15;
  }

LABEL_17:

  return v32;
}

uint64_t __82__PHCollectionListChangeRequest_applyMutationsToManagedObject_photoLibrary_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 objectID];
  v6 = v5;
  if (v4)
  {
    do
    {
      v7 = v4;
      v8 = [v4 objectID];
      v9 = [v6 isEqual:v8];

      v4 = [v7 parentFolder];
    }

    while (v4 && !v9);

    if (v9)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v10 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 isSmartAlbum];

    if (v11)
    {
      v12 = v10;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

LABEL_18:
        v17 = 0;
        goto LABEL_19;
      }

      v13 = [v12 isUserCreated];

      if (!v13)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
  }

  v14 = *(a1 + 40);
  v15 = v10;
  objc_opt_class();
  v16 = (objc_opt_isKindOfClass() & 1) != 0 && [v15 kindValue] == 1508;

  v17 = (v14 != 3998) ^ v16;
LABEL_19:

  return v17;
}

- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  helper = [(PHChangeRequest *)self helper];
  v24 = 0;
  v11 = [helper allowMutationToManagedObject:objectCopy propertyKey:keyCopy error:&v24];
  v12 = v24;

  if (!v11)
  {
    goto LABEL_5;
  }

  if (![keyCopy isEqualToString:@"title"])
  {
    if (([keyCopy isEqualToString:@"customSortKey"] & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"customSortAscending") & 1) == 0)
    {
      v19 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid property %@", keyCopy];
      v26 = keyCopy;
      v18 = 1;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v22 = [v19 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v21];

      v12 = v22;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ([objectCopy canPerformEditOperation:64])
  {
LABEL_9:
    v18 = 1;
    goto LABEL_12;
  }

  v13 = MEMORY[0x1E696ABC0];
  v27 = *MEMORY[0x1E696A578];
  keyCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on property %@", keyCopy];
  v28[0] = keyCopy2;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v16 = [v13 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v15];

  v12 = v16;
LABEL_5:
  if (error)
  {
    v17 = v12;
    v18 = 0;
    *error = v12;
  }

  else
  {
    v18 = 0;
  }

LABEL_12:

  return v18;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  helper = [(PHChangeRequest *)self helper];
  v24 = 0;
  entityName = [MEMORY[0x1E69BE558] entityName];
  v23 = 0;
  v9 = [helper getCloudGUIDIfReserved:&v24 entityName:entityName photoLibrary:libraryCopy error:&v23];
  v10 = v24;
  v11 = v23;

  if (!v9)
  {
    goto LABEL_7;
  }

  v12 = [MEMORY[0x1E69BE558] insertNewFolderWithTitle:0 kind:4000 intoLibrary:libraryCopy];
  if (!v12)
  {
    v16 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create collection list"];
    v26[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v19 = [v16 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v18];

    v11 = v19;
LABEL_7:
    v20 = v11;
    v15 = v20;
    if (error)
    {
      v21 = v20;
      v13 = 0;
      *error = v15;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_10;
  }

  v13 = v12;
  uuid = [(PHChangeRequest *)self uuid];
  [v13 setUuid:uuid];

  if (v10)
  {
    [v13 setCloudGUID:v10];
  }

  v15 = v11;
LABEL_10:

  return v13;
}

- (void)removeChildCollections:(id)collections
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = collections;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    array = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (!array)
        {
          [(PHChangeRequest *)self didMutate];
          array = [MEMORY[0x1E695DF70] array];
        }

        v11 = PLObjectIDOrUUIDFromPHObject(v10);
        [array addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
    if (array)
    {
      _mutableObjectIDsAndUUIDs = [(PHCollectionListChangeRequest *)self _mutableObjectIDsAndUUIDs];
      [_mutableObjectIDsAndUUIDs removeObjectsInArray:array];
    }
  }
}

- (void)addChildCollections:(id)collections
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = collections;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    array = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (!array)
        {
          [(PHChangeRequest *)self didMutate];
          array = [MEMORY[0x1E695DF70] array];
        }

        v11 = PLObjectIDOrUUIDFromPHObject(v10);
        [array addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
    if (array)
    {
      _mutableObjectIDsAndUUIDs = [(PHCollectionListChangeRequest *)self _mutableObjectIDsAndUUIDs];
      [_mutableObjectIDsAndUUIDs addObjectsFromArray:array];
    }
  }
}

- (void)removeChildCollection:(id)collection
{
  v8 = *MEMORY[0x1E69E9840];
  if (collection)
  {
    collectionCopy = collection;
    v4 = MEMORY[0x1E695DEC8];
    collectionCopy2 = collection;
    v6 = [v4 arrayWithObjects:&collectionCopy count:1];

    [(PHCollectionListChangeRequest *)self removeChildCollections:v6, collectionCopy, v8];
  }
}

- (void)addChildCollection:(id)collection
{
  v8 = *MEMORY[0x1E69E9840];
  if (collection)
  {
    collectionCopy = collection;
    v4 = MEMORY[0x1E695DEC8];
    collectionCopy2 = collection;
    v6 = [v4 arrayWithObjects:&collectionCopy count:1];

    [(PHCollectionListChangeRequest *)self addChildCollections:v6, collectionCopy, v8];
  }
}

- (void)moveChildCollectionsAtIndexes:(NSIndexSet *)indexes toIndex:(NSUInteger)toIndex
{
  v10 = indexes;
  if ([(NSIndexSet *)v10 count])
  {
    [(PHChangeRequest *)self didMutate];
    _mutableObjectIDsAndUUIDs = [(PHCollectionListChangeRequest *)self _mutableObjectIDsAndUUIDs];
    v7 = [_mutableObjectIDsAndUUIDs objectsAtIndexes:v10];
    [_mutableObjectIDsAndUUIDs removeObjectsAtIndexes:v10];
    v8 = [(NSIndexSet *)v10 count];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{toIndex, v8}];
    [_mutableObjectIDsAndUUIDs insertObjects:v7 atIndexes:v9];
  }
}

- (void)replaceChildCollectionsAtIndexes:(NSIndexSet *)indexes withChildCollections:(id)collections
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = indexes;
  v7 = collections;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    array = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (!array)
        {
          [(PHChangeRequest *)self didMutate];
          array = [MEMORY[0x1E695DF70] array];
        }

        v14 = PLObjectIDOrUUIDFromPHObject(v13);
        [array addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
    if (array)
    {
      _mutableObjectIDsAndUUIDs = [(PHCollectionListChangeRequest *)self _mutableObjectIDsAndUUIDs];
      [_mutableObjectIDsAndUUIDs replaceObjectsAtIndexes:v6 withObjects:array];
    }
  }
}

- (void)replaceChildCollectionsAtIndex:(unint64_t)index withChildCollection:(id)collection
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (collection)
  {
    v6 = MEMORY[0x1E696AC90];
    collectionCopy = collection;
    v8 = [v6 indexSetWithIndex:index];
    v10[0] = collectionCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

    [(PHCollectionListChangeRequest *)self replaceChildCollectionsAtIndexes:v8 withChildCollections:v9];
  }
}

- (void)removeChildCollectionsAtIndexes:(NSIndexSet *)indexes
{
  v5 = indexes;
  if ([(NSIndexSet *)v5 count])
  {
    [(PHChangeRequest *)self didMutate];
    _mutableObjectIDsAndUUIDs = [(PHCollectionListChangeRequest *)self _mutableObjectIDsAndUUIDs];
    [_mutableObjectIDsAndUUIDs removeObjectsAtIndexes:v5];
  }
}

- (void)insertChildCollections:(id)collections atIndexes:(NSIndexSet *)indexes
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = collections;
  v7 = indexes;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    array = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (!array)
        {
          [(PHChangeRequest *)self didMutate];
          array = [MEMORY[0x1E695DF70] array];
        }

        v14 = PLObjectIDOrUUIDFromPHObject(v13);
        [array addObject:v14];
      }

      v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
    if (array)
    {
      _mutableObjectIDsAndUUIDs = [(PHCollectionListChangeRequest *)self _mutableObjectIDsAndUUIDs];
      [_mutableObjectIDsAndUUIDs insertObjects:array atIndexes:v7];
    }
  }
}

- (void)removeChildCollectionFromChildCollectionsAtIndex:(unint64_t)index
{
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x1E696AC90] indexSetWithIndex:?];
    [(PHCollectionListChangeRequest *)self removeChildCollectionsAtIndexes:v5];
  }
}

- (void)insertChildCollection:(id)collection inChildCollectionsAtIndex:(unint64_t)index
{
  v11 = *MEMORY[0x1E69E9840];
  if (collection)
  {
    collectionCopy = collection;
    v6 = MEMORY[0x1E695DEC8];
    collectionCopy2 = collection;
    v8 = [v6 arrayWithObjects:&collectionCopy count:1];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{index, collectionCopy, v11}];

    [(PHCollectionListChangeRequest *)self insertChildCollections:v8 atIndexes:v9];
  }
}

- (id)_mutableObjectIDsAndUUIDs
{
  [(PHCollectionListChangeRequest *)self _prepareAssetIDsIfNeeded];
  collectionsHelper = self->_collectionsHelper;

  return [(PHRelationshipChangeRequestHelper *)collectionsHelper mutableObjectIDsAndUUIDs];
}

- (void)_prepareAssetIDsIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_collectionsHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    if (self->_originalCollectionList)
    {
      v4 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
      librarySpecificFetchOptions = [v4 librarySpecificFetchOptions];

      if ([(PHCollectionListChangeRequest *)self isTopLevelUserCollection])
      {
        [PHQuery queryForTopLevelUserCollectionsWithOptions:librarySpecificFetchOptions];
      }

      else
      {
        [PHQuery queryForCollectionsInCollectionList:self->_originalCollectionList options:librarySpecificFetchOptions];
      }
      v6 = ;
      executeQuery = [v6 executeQuery];
      [(PHCollectionListChangeRequest *)self _prepareWithFetchResult:executeQuery];
    }

    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)self->_collectionsHelper originalObjectIDs];

    if (!originalObjectIDs2)
    {
      [(PHRelationshipChangeRequestHelper *)self->_collectionsHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
    }
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_collectionsHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    collectionsHelper = self->_collectionsHelper;
    originalObjectIDs3 = [(PHRelationshipChangeRequestHelper *)collectionsHelper originalObjectIDs];
    v11 = [originalObjectIDs3 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)collectionsHelper setMutableObjectIDsAndUUIDs:v11];
  }
}

- (void)_prepareWithFetchResult:(id)result
{
  resultCopy = result;
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_collectionsHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    collectionsHelper = self->_collectionsHelper;
    fetchedObjectIDs = [resultCopy fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)collectionsHelper setOriginalObjectIDs:fetchedObjectIDs];
  }
}

- (void)setTitle:(NSString *)title
{
  v10 = title;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (v10)
  {
    [mutations setObject:v10 forKeyedSubscript:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"title"];
  }

  else
  {
    [mutations removeObjectForKey:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"title"];
  }
}

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"title"];

  return v5;
}

- (void)setCustomSortAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:ascendingCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"customSortAscending"];
}

- (BOOL)customSortAscending
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"customSortAscending"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setCustomSortKey:(unsigned int)key
{
  v3 = *&key;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"customSortKey"];
}

- (unsigned)customSortKey
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"customSortKey"];

  LODWORD(helper) = [v5 intValue];
  return helper;
}

- (PHObjectPlaceholder)placeholderForCreatedCollectionList
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];

  collectionsHelper = [(PHCollectionListChangeRequest *)self collectionsHelper];
  [collectionsHelper encodeToXPCDict:dictCopy];
}

- (PHCollectionListChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v17.receiver = self;
  v17.super_class = PHCollectionListChangeRequest;
  v11 = [(PHChangeRequest *)&v17 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"childCollections" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      collectionsHelper = v11->_collectionsHelper;
      v11->_collectionsHelper = v14;
    }
  }

  return v11;
}

- (PHCollectionListChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = PHCollectionListChangeRequest;
  v8 = [(PHChangeRequest *)&v14 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"childCollections" changeRequestHelper:v8->super._helper];
    collectionsHelper = v8->_collectionsHelper;
    v8->_collectionsHelper = v11;
  }

  return v8;
}

- (id)initForNewObject
{
  v8.receiver = self;
  v8.super_class = PHCollectionListChangeRequest;
  v2 = [(PHChangeRequest *)&v8 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v5 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"childCollections" changeRequestHelper:v2->super._helper];
    collectionsHelper = v2->_collectionsHelper;
    v2->_collectionsHelper = v5;
  }

  return v2;
}

+ (void)_deleteCollectionLists:(id)lists withOperation:(int64_t)operation topLevelSelector:(SEL)selector
{
  v19 = *MEMORY[0x1E69E9840];
  listsCopy = lists;
  [PHObject assertAllObjects:listsCopy forSelector:selector areOfType:objc_opt_class()];
  +[PHPhotoLibrary assertTransaction];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = listsCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(PHTrashableObjectDeleteRequest *)PHCollectionDeleteRequest deleteRequestForObject:*(*(&v14 + 1) + 8 * v12++) operation:operation, v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

+ (PHCollectionListChangeRequest)creationRequestForCollectionListWithTitle:(NSString *)title
{
  v3 = title;
  initForNewObject = [[PHCollectionListChangeRequest alloc] initForNewObject];
  [initForNewObject setTitle:v3];

  return initForNewObject;
}

+ (PHCollectionListChangeRequest)changeRequestForTopLevelCollectionListUserCollections:(PHFetchResult *)childCollections
{
  v4 = childCollections;
  v5 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
  librarySpecificFetchOptions = [v5 librarySpecificFetchOptions];
  v7 = [PHCollectionList fetchRootAlbumCollectionListWithOptions:librarySpecificFetchOptions];
  firstObject = [v7 firstObject];

  v9 = [self _changeRequestForCollectionList:firstObject optionalChildCollections:v4];

  [v9 setIsTopLevelUserCollection:1];

  return v9;
}

+ (id)_changeRequestForCollectionList:(id)list optionalChildCollections:(id)collections
{
  listCopy = list;
  collectionsCopy = collections;
  if ([listCopy isTransient])
  {
    v7 = 0;
  }

  else
  {
    v8 = [PHCollectionListChangeRequest alloc];
    uuid = [listCopy uuid];
    objectID = [listCopy objectID];
    v7 = [(PHCollectionListChangeRequest *)v8 initWithUUID:uuid objectID:objectID];

    [(PHCollectionListChangeRequest *)v7 _setOriginalCollectionList:listCopy];
    if (collectionsCopy)
    {
      [(PHCollectionListChangeRequest *)v7 _prepareWithFetchResult:collectionsCopy];
    }
  }

  return v7;
}

@end