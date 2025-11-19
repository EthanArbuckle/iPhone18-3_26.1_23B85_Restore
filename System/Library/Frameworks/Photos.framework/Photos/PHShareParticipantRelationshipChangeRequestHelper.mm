@interface PHShareParticipantRelationshipChangeRequestHelper
- (BOOL)applyMutationsToManagedObject:(id)a3 error:(id *)a4;
- (PHObject)originalAsset;
- (PHShare)originalShare;
- (id)_mutableParticipantsObjectIDsAndUUIDs;
- (void)_prepareParticipantsHelperIfNeeded;
- (void)_prepareParticipantsWithFetchResult:(id)a3;
- (void)addParticipants:(id)a3 toChangeRequest:(id)a4;
- (void)removeParticipants:(id)a3 toChangeRequest:(id)a4;
- (void)setParticipants:(id)a3 toChangeRequest:(id)a4;
@end

@implementation PHShareParticipantRelationshipChangeRequestHelper

- (PHObject)originalAsset
{
  WeakRetained = objc_loadWeakRetained(&self->_originalAsset);

  return WeakRetained;
}

- (PHShare)originalShare
{
  WeakRetained = objc_loadWeakRetained(&self->_originalShare);

  return WeakRetained;
}

- (BOOL)applyMutationsToManagedObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHRelationshipChangeRequestHelper *)self mutableObjectIDsAndUUIDs];

  if (v7)
  {
    [(PHRelationshipChangeRequestHelper *)self setAllowsInsert:1];
    [(PHRelationshipChangeRequestHelper *)self setAllowsMove:0];
    [(PHRelationshipChangeRequestHelper *)self setAllowsRemove:1];
    [(PHRelationshipChangeRequestHelper *)self setDestinationEntityName:@"ShareParticipant"];
    v8 = [(PHRelationshipChangeRequestHelper *)self relationshipName];
    v9 = [v6 mutableSetValueForKey:v8];

    v10 = [(PHRelationshipChangeRequestHelper *)self applyMutationsToManagedObject:v6 unorderedMutableChildren:v9 error:a4];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)setParticipants:(id)a3 toChangeRequest:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PHShareParticipantRelationshipChangeRequestHelper *)self _mutableParticipantsObjectIDsAndUUIDs];
  [v8 removeAllObjects];

  v9 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = PLObjectIDOrUUIDFromPHObject(*(*(&v17 + 1) + 8 * v14));
        [v9 addObject:{v15, v17}];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    [v7 didMutate];
    v16 = [(PHShareParticipantRelationshipChangeRequestHelper *)self _mutableParticipantsObjectIDsAndUUIDs];
    [v16 addObjectsFromArray:v9];
  }
}

- (void)removeParticipants:(id)a3 toChangeRequest:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = PLObjectIDOrUUIDFromPHObject(*(*(&v16 + 1) + 8 * v13));
        [v8 addObject:{v14, v16}];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    [v7 didMutate];
    v15 = [(PHShareParticipantRelationshipChangeRequestHelper *)self _mutableParticipantsObjectIDsAndUUIDs];
    [v15 removeObjectsInArray:v8];
  }
}

- (void)addParticipants:(id)a3 toChangeRequest:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = PLObjectIDOrUUIDFromPHObject(*(*(&v16 + 1) + 8 * v13));
        [v8 addObject:{v14, v16}];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    [v7 didMutate];
    v15 = [(PHShareParticipantRelationshipChangeRequestHelper *)self _mutableParticipantsObjectIDsAndUUIDs];
    [v15 addObjectsFromArray:v8];
  }
}

- (id)_mutableParticipantsObjectIDsAndUUIDs
{
  [(PHShareParticipantRelationshipChangeRequestHelper *)self _prepareParticipantsHelperIfNeeded];

  return [(PHRelationshipChangeRequestHelper *)self mutableObjectIDsAndUUIDs];
}

- (void)_prepareParticipantsHelperIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHRelationshipChangeRequestHelper *)self originalObjectIDs];

  if (v3)
  {
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_originalShare);

  if (WeakRetained)
  {
    v5 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
    v6 = [v5 librarySpecificFetchOptions];

    v7 = objc_loadWeakRetained(&self->_originalShare);
    v8 = [PHQuery queryForShareParticipantsInShare:v7 options:v6];

    v9 = [v8 executeQuery];
    [(PHShareParticipantRelationshipChangeRequestHelper *)self _prepareParticipantsWithFetchResult:v9];
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_originalAsset);

    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
    v6 = [v11 librarySpecificFetchOptions];

    v12 = objc_loadWeakRetained(&self->_originalAsset);
    v8 = [PHShareParticipant fetchContributorsForAsset:v12 options:v6];

    [(PHShareParticipantRelationshipChangeRequestHelper *)self _prepareParticipantsWithFetchResult:v8];
  }

LABEL_7:
  v13 = [(PHRelationshipChangeRequestHelper *)self originalObjectIDs];

  if (!v13)
  {
    [(PHRelationshipChangeRequestHelper *)self setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

LABEL_9:
  v14 = [(PHRelationshipChangeRequestHelper *)self mutableObjectIDsAndUUIDs];

  if (!v14)
  {
    v16 = [(PHRelationshipChangeRequestHelper *)self originalObjectIDs];
    v15 = [v16 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)self setMutableObjectIDsAndUUIDs:v15];
  }
}

- (void)_prepareParticipantsWithFetchResult:(id)a3
{
  v6 = a3;
  +[PHPhotoLibrary assertTransaction];
  v4 = [(PHRelationshipChangeRequestHelper *)self originalObjectIDs];

  if (!v4)
  {
    v5 = [v6 fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)self setOriginalObjectIDs:v5];
  }
}

@end