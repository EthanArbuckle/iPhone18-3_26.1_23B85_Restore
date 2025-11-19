@interface PHCollectionListChangeRequest
+ (PHCollectionListChangeRequest)changeRequestForTopLevelCollectionListUserCollections:(PHFetchResult *)childCollections;
+ (PHCollectionListChangeRequest)creationRequestForCollectionListWithTitle:(NSString *)title;
+ (id)_changeRequestForCollectionList:(id)a3 optionalChildCollections:(id)a4;
+ (void)_deleteCollectionLists:(id)a3 withOperation:(int64_t)a4 topLevelSelector:(SEL)a5;
- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)customSortAscending;
- (NSString)description;
- (NSString)title;
- (PHCollectionListChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHCollectionListChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (PHObjectPlaceholder)placeholderForCreatedCollectionList;
- (id)_mutableObjectIDsAndUUIDs;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (unsigned)customSortKey;
- (void)_prepareAssetIDsIfNeeded;
- (void)_prepareWithFetchResult:(id)a3;
- (void)addChildCollection:(id)a3;
- (void)addChildCollections:(id)collections;
- (void)encodeToXPCDict:(id)a3;
- (void)insertChildCollection:(id)a3 inChildCollectionsAtIndex:(unint64_t)a4;
- (void)insertChildCollections:(id)collections atIndexes:(NSIndexSet *)indexes;
- (void)moveChildCollectionsAtIndexes:(NSIndexSet *)indexes toIndex:(NSUInteger)toIndex;
- (void)removeChildCollection:(id)a3;
- (void)removeChildCollectionFromChildCollectionsAtIndex:(unint64_t)a3;
- (void)removeChildCollections:(id)collections;
- (void)removeChildCollectionsAtIndexes:(NSIndexSet *)indexes;
- (void)replaceChildCollectionsAtIndex:(unint64_t)a3 withChildCollection:(id)a4;
- (void)replaceChildCollectionsAtIndexes:(NSIndexSet *)indexes withChildCollections:(id)collections;
- (void)setCustomSortAscending:(BOOL)a3;
- (void)setCustomSortKey:(unsigned int)a3;
- (void)setTitle:(NSString *)title;
@end

@implementation PHCollectionListChangeRequest

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = PHCollectionListChangeRequest;
  v3 = [(PHCollectionListChangeRequest *)&v8 description];
  v4 = [(PHCollectionListChangeRequest *)self title];
  v5 = [(PHRelationshipChangeRequestHelper *)self->_collectionsHelper mutableObjectIDsAndUUIDs];
  v6 = [v3 stringByAppendingFormat:@" title=%@ hasAssetChanges=%d", v4, v5 != 0];

  return v6;
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v48[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 managedObjectContext];
  v9 = PLSafeEntityForNameInManagedObjectContext();

  if (!v9)
  {
    v15 = 0;
    v32 = 0;
    goto LABEL_17;
  }

  v10 = [v7 kindValue];
  v11 = [v7 entity];
  v12 = [v11 isKindOfEntity:v9];

  if (!v12 || (v10 - 3998) >= 3)
  {
    v34 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid collection list type"];
    v48[0] = v16;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v33 = [v34 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v20];
    v32 = 0;
LABEL_11:

    v15 = v33;
    goto LABEL_12;
  }

  v13 = [(PHChangeRequest *)self helper];
  v46 = 0;
  v14 = [v13 applyMutationsToManagedObject:v7 error:&v46];
  v15 = v46;

  if (!v14)
  {
    v32 = 0;
    if (!a5)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v16 = [(PHCollectionListChangeRequest *)self collectionsHelper];
  v17 = [v16 mutableObjectIDsAndUUIDs];

  if (v17)
  {
    v18 = v7;
    [v16 setAllowsInsert:{objc_msgSend(v18, "canPerformEditOperation:", 4)}];
    [v16 setAllowsMove:{objc_msgSend(v18, "canPerformEditOperation:", 16)}];
    [v16 setAllowsRemove:{objc_msgSend(v18, "canPerformEditOperation:", 2)}];
    v19 = [MEMORY[0x1E69BE458] entityName];
    [v16 setDestinationEntityName:v19];

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __82__PHCollectionListChangeRequest_applyMutationsToManagedObject_photoLibrary_error___block_invoke;
    v43[3] = &unk_1E75A4C70;
    v20 = v18;
    v44 = v20;
    v45 = v10;
    [v16 setIsDestinationObjectValid:v43];
    if ([(PHCollectionListChangeRequest *)self isTopLevelUserCollection])
    {
      v21 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
      v40 = [v21 librarySpecificFetchOptions];

      v22 = MEMORY[0x1E696AB28];
      v23 = +[PHCollection predicateForUserCollections];
      v39 = [v22 notPredicateWithSubpredicate:v23];

      v38 = [PHQuery queryForTopLevelCollectionsMatchingPredicate:v39 options:v40];
      v41 = [v38 executeQuery];
      v24 = [v41 fetchedObjectIDs];
      v25 = [v16 originalObjectIDs];
      v37 = [v24 arrayByAddingObjectsFromArray:v25];

      [v16 setOriginalObjectIDs:v37];
      v26 = [v16 mutableObjectIDsAndUUIDs];
      v27 = [v41 fetchedObjectIDs];
      v28 = MEMORY[0x1E696AC90];
      v29 = [v41 fetchedObjectIDs];
      v30 = [v28 indexSetWithIndexesInRange:{0, objc_msgSend(v29, "count")}];
      [v26 insertObjects:v27 atIndexes:v30];
    }

    v31 = [v20 albums];
    v42 = v15;
    v32 = [v16 applyMutationsToManagedObject:v20 orderedMutableChildren:v31 error:&v42];
    v33 = v42;

    goto LABEL_11;
  }

  v32 = 1;
LABEL_12:

  if (!a5)
  {
    goto LABEL_17;
  }

LABEL_15:
  if ((v32 & 1) == 0)
  {
    v35 = v15;
    v32 = 0;
    *a5 = v15;
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

- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PHChangeRequest *)self helper];
  v24 = 0;
  v11 = [v10 allowMutationToManagedObject:v8 propertyKey:v9 error:&v24];
  v12 = v24;

  if (!v11)
  {
    goto LABEL_5;
  }

  if (![v9 isEqualToString:@"title"])
  {
    if (([v9 isEqualToString:@"customSortKey"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"customSortAscending") & 1) == 0)
    {
      v19 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid property %@", v9];
      v26 = v20;
      v18 = 1;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v22 = [v19 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v21];

      v12 = v22;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ([v8 canPerformEditOperation:64])
  {
LABEL_9:
    v18 = 1;
    goto LABEL_12;
  }

  v13 = MEMORY[0x1E696ABC0];
  v27 = *MEMORY[0x1E696A578];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on property %@", v9];
  v28[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v16 = [v13 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v15];

  v12 = v16;
LABEL_5:
  if (a5)
  {
    v17 = v12;
    v18 = 0;
    *a5 = v12;
  }

  else
  {
    v18 = 0;
  }

LABEL_12:

  return v18;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PHChangeRequest *)self helper];
  v24 = 0;
  v8 = [MEMORY[0x1E69BE558] entityName];
  v23 = 0;
  v9 = [v7 getCloudGUIDIfReserved:&v24 entityName:v8 photoLibrary:v6 error:&v23];
  v10 = v24;
  v11 = v23;

  if (!v9)
  {
    goto LABEL_7;
  }

  v12 = [MEMORY[0x1E69BE558] insertNewFolderWithTitle:0 kind:4000 intoLibrary:v6];
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
    if (a4)
    {
      v21 = v20;
      v13 = 0;
      *a4 = v15;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_10;
  }

  v13 = v12;
  v14 = [(PHChangeRequest *)self uuid];
  [v13 setUuid:v14];

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
    v7 = 0;
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
        if (!v7)
        {
          [(PHChangeRequest *)self didMutate];
          v7 = [MEMORY[0x1E695DF70] array];
        }

        v11 = PLObjectIDOrUUIDFromPHObject(v10);
        [v7 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
    if (v7)
    {
      v12 = [(PHCollectionListChangeRequest *)self _mutableObjectIDsAndUUIDs];
      [v12 removeObjectsInArray:v7];
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
    v7 = 0;
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
        if (!v7)
        {
          [(PHChangeRequest *)self didMutate];
          v7 = [MEMORY[0x1E695DF70] array];
        }

        v11 = PLObjectIDOrUUIDFromPHObject(v10);
        [v7 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
    if (v7)
    {
      v12 = [(PHCollectionListChangeRequest *)self _mutableObjectIDsAndUUIDs];
      [v12 addObjectsFromArray:v7];
    }
  }
}

- (void)removeChildCollection:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];

    [(PHCollectionListChangeRequest *)self removeChildCollections:v6, v7, v8];
  }
}

- (void)addChildCollection:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];

    [(PHCollectionListChangeRequest *)self addChildCollections:v6, v7, v8];
  }
}

- (void)moveChildCollectionsAtIndexes:(NSIndexSet *)indexes toIndex:(NSUInteger)toIndex
{
  v10 = indexes;
  if ([(NSIndexSet *)v10 count])
  {
    [(PHChangeRequest *)self didMutate];
    v6 = [(PHCollectionListChangeRequest *)self _mutableObjectIDsAndUUIDs];
    v7 = [v6 objectsAtIndexes:v10];
    [v6 removeObjectsAtIndexes:v10];
    v8 = [(NSIndexSet *)v10 count];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{toIndex, v8}];
    [v6 insertObjects:v7 atIndexes:v9];
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
    v10 = 0;
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
        if (!v10)
        {
          [(PHChangeRequest *)self didMutate];
          v10 = [MEMORY[0x1E695DF70] array];
        }

        v14 = PLObjectIDOrUUIDFromPHObject(v13);
        [v10 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
    if (v10)
    {
      v15 = [(PHCollectionListChangeRequest *)self _mutableObjectIDsAndUUIDs];
      [v15 replaceObjectsAtIndexes:v6 withObjects:v10];
    }
  }
}

- (void)replaceChildCollectionsAtIndex:(unint64_t)a3 withChildCollection:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = MEMORY[0x1E696AC90];
    v7 = a4;
    v8 = [v6 indexSetWithIndex:a3];
    v10[0] = v7;
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
    v4 = [(PHCollectionListChangeRequest *)self _mutableObjectIDsAndUUIDs];
    [v4 removeObjectsAtIndexes:v5];
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
    v10 = 0;
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
        if (!v10)
        {
          [(PHChangeRequest *)self didMutate];
          v10 = [MEMORY[0x1E695DF70] array];
        }

        v14 = PLObjectIDOrUUIDFromPHObject(v13);
        [v10 addObject:v14];
      }

      v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
    if (v10)
    {
      v15 = [(PHCollectionListChangeRequest *)self _mutableObjectIDsAndUUIDs];
      [v15 insertObjects:v10 atIndexes:v7];
    }
  }
}

- (void)removeChildCollectionFromChildCollectionsAtIndex:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x1E696AC90] indexSetWithIndex:?];
    [(PHCollectionListChangeRequest *)self removeChildCollectionsAtIndexes:v5];
  }
}

- (void)insertChildCollection:(id)a3 inChildCollectionsAtIndex:(unint64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = a3;
    v6 = MEMORY[0x1E695DEC8];
    v7 = a3;
    v8 = [v6 arrayWithObjects:&v10 count:1];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{a4, v10, v11}];

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
  v3 = [(PHRelationshipChangeRequestHelper *)self->_collectionsHelper originalObjectIDs];

  if (!v3)
  {
    if (self->_originalCollectionList)
    {
      v4 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
      v5 = [v4 librarySpecificFetchOptions];

      if ([(PHCollectionListChangeRequest *)self isTopLevelUserCollection])
      {
        [PHQuery queryForTopLevelUserCollectionsWithOptions:v5];
      }

      else
      {
        [PHQuery queryForCollectionsInCollectionList:self->_originalCollectionList options:v5];
      }
      v6 = ;
      v7 = [v6 executeQuery];
      [(PHCollectionListChangeRequest *)self _prepareWithFetchResult:v7];
    }

    v8 = [(PHRelationshipChangeRequestHelper *)self->_collectionsHelper originalObjectIDs];

    if (!v8)
    {
      [(PHRelationshipChangeRequestHelper *)self->_collectionsHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
    }
  }

  v9 = [(PHRelationshipChangeRequestHelper *)self->_collectionsHelper mutableObjectIDsAndUUIDs];

  if (!v9)
  {
    collectionsHelper = self->_collectionsHelper;
    v12 = [(PHRelationshipChangeRequestHelper *)collectionsHelper originalObjectIDs];
    v11 = [v12 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)collectionsHelper setMutableObjectIDsAndUUIDs:v11];
  }
}

- (void)_prepareWithFetchResult:(id)a3
{
  v7 = a3;
  +[PHPhotoLibrary assertTransaction];
  v4 = [(PHRelationshipChangeRequestHelper *)self->_collectionsHelper originalObjectIDs];

  if (!v4)
  {
    collectionsHelper = self->_collectionsHelper;
    v6 = [v7 fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)collectionsHelper setOriginalObjectIDs:v6];
  }
}

- (void)setTitle:(NSString *)title
{
  v10 = title;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"title"];
  }

  else
  {
    [v6 removeObjectForKey:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"title"];
  }
}

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"title"];

  return v5;
}

- (void)setCustomSortAscending:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"customSortAscending"];
}

- (BOOL)customSortAscending
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"customSortAscending"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setCustomSortKey:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"customSortKey"];
}

- (unsigned)customSortKey
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"customSortKey"];

  LODWORD(v3) = [v5 intValue];
  return v3;
}

- (PHObjectPlaceholder)placeholderForCreatedCollectionList
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 encodeToXPCDict:v4];

  v6 = [(PHCollectionListChangeRequest *)self collectionsHelper];
  [v6 encodeToXPCDict:v4];
}

- (PHCollectionListChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PHCollectionListChangeRequest;
  v11 = [(PHChangeRequest *)&v17 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"childCollections" xpcDict:v8 changeRequestHelper:v11->super._helper];
      collectionsHelper = v11->_collectionsHelper;
      v11->_collectionsHelper = v14;
    }
  }

  return v11;
}

- (PHCollectionListChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PHCollectionListChangeRequest;
  v8 = [(PHChangeRequest *)&v14 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
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

+ (void)_deleteCollectionLists:(id)a3 withOperation:(int64_t)a4 topLevelSelector:(SEL)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  [PHObject assertAllObjects:v7 forSelector:a5 areOfType:objc_opt_class()];
  +[PHPhotoLibrary assertTransaction];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
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

        v13 = [(PHTrashableObjectDeleteRequest *)PHCollectionDeleteRequest deleteRequestForObject:*(*(&v14 + 1) + 8 * v12++) operation:a4, v14];
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
  v4 = [[PHCollectionListChangeRequest alloc] initForNewObject];
  [v4 setTitle:v3];

  return v4;
}

+ (PHCollectionListChangeRequest)changeRequestForTopLevelCollectionListUserCollections:(PHFetchResult *)childCollections
{
  v4 = childCollections;
  v5 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
  v6 = [v5 librarySpecificFetchOptions];
  v7 = [PHCollectionList fetchRootAlbumCollectionListWithOptions:v6];
  v8 = [v7 firstObject];

  v9 = [a1 _changeRequestForCollectionList:v8 optionalChildCollections:v4];

  [v9 setIsTopLevelUserCollection:1];

  return v9;
}

+ (id)_changeRequestForCollectionList:(id)a3 optionalChildCollections:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isTransient])
  {
    v7 = 0;
  }

  else
  {
    v8 = [PHCollectionListChangeRequest alloc];
    v9 = [v5 uuid];
    v10 = [v5 objectID];
    v7 = [(PHCollectionListChangeRequest *)v8 initWithUUID:v9 objectID:v10];

    [(PHCollectionListChangeRequest *)v7 _setOriginalCollectionList:v5];
    if (v6)
    {
      [(PHCollectionListChangeRequest *)v7 _prepareWithFetchResult:v6];
    }
  }

  return v7;
}

@end