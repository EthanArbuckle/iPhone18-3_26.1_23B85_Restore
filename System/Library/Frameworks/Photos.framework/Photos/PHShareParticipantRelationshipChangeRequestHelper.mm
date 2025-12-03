@interface PHShareParticipantRelationshipChangeRequestHelper
- (BOOL)applyMutationsToManagedObject:(id)object error:(id *)error;
- (PHObject)originalAsset;
- (PHShare)originalShare;
- (id)_mutableParticipantsObjectIDsAndUUIDs;
- (void)_prepareParticipantsHelperIfNeeded;
- (void)_prepareParticipantsWithFetchResult:(id)result;
- (void)addParticipants:(id)participants toChangeRequest:(id)request;
- (void)removeParticipants:(id)participants toChangeRequest:(id)request;
- (void)setParticipants:(id)participants toChangeRequest:(id)request;
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

- (BOOL)applyMutationsToManagedObject:(id)object error:(id *)error
{
  objectCopy = object;
  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self mutableObjectIDsAndUUIDs];

  if (mutableObjectIDsAndUUIDs)
  {
    [(PHRelationshipChangeRequestHelper *)self setAllowsInsert:1];
    [(PHRelationshipChangeRequestHelper *)self setAllowsMove:0];
    [(PHRelationshipChangeRequestHelper *)self setAllowsRemove:1];
    [(PHRelationshipChangeRequestHelper *)self setDestinationEntityName:@"ShareParticipant"];
    relationshipName = [(PHRelationshipChangeRequestHelper *)self relationshipName];
    v9 = [objectCopy mutableSetValueForKey:relationshipName];

    v10 = [(PHRelationshipChangeRequestHelper *)self applyMutationsToManagedObject:objectCopy unorderedMutableChildren:v9 error:error];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)setParticipants:(id)participants toChangeRequest:(id)request
{
  v22 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  requestCopy = request;
  _mutableParticipantsObjectIDsAndUUIDs = [(PHShareParticipantRelationshipChangeRequestHelper *)self _mutableParticipantsObjectIDsAndUUIDs];
  [_mutableParticipantsObjectIDsAndUUIDs removeAllObjects];

  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = participantsCopy;
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
        [array addObject:{v15, v17}];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  if ([array count])
  {
    [requestCopy didMutate];
    _mutableParticipantsObjectIDsAndUUIDs2 = [(PHShareParticipantRelationshipChangeRequestHelper *)self _mutableParticipantsObjectIDsAndUUIDs];
    [_mutableParticipantsObjectIDsAndUUIDs2 addObjectsFromArray:array];
  }
}

- (void)removeParticipants:(id)participants toChangeRequest:(id)request
{
  v21 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  requestCopy = request;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = participantsCopy;
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
        [array addObject:{v14, v16}];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if ([array count])
  {
    [requestCopy didMutate];
    _mutableParticipantsObjectIDsAndUUIDs = [(PHShareParticipantRelationshipChangeRequestHelper *)self _mutableParticipantsObjectIDsAndUUIDs];
    [_mutableParticipantsObjectIDsAndUUIDs removeObjectsInArray:array];
  }
}

- (void)addParticipants:(id)participants toChangeRequest:(id)request
{
  v21 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  requestCopy = request;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = participantsCopy;
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
        [array addObject:{v14, v16}];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if ([array count])
  {
    [requestCopy didMutate];
    _mutableParticipantsObjectIDsAndUUIDs = [(PHShareParticipantRelationshipChangeRequestHelper *)self _mutableParticipantsObjectIDsAndUUIDs];
    [_mutableParticipantsObjectIDsAndUUIDs addObjectsFromArray:array];
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
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self originalObjectIDs];

  if (originalObjectIDs)
  {
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_originalShare);

  if (WeakRetained)
  {
    v5 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
    librarySpecificFetchOptions = [v5 librarySpecificFetchOptions];

    v7 = objc_loadWeakRetained(&self->_originalShare);
    v8 = [PHQuery queryForShareParticipantsInShare:v7 options:librarySpecificFetchOptions];

    executeQuery = [v8 executeQuery];
    [(PHShareParticipantRelationshipChangeRequestHelper *)self _prepareParticipantsWithFetchResult:executeQuery];
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_originalAsset);

    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
    librarySpecificFetchOptions = [v11 librarySpecificFetchOptions];

    v12 = objc_loadWeakRetained(&self->_originalAsset);
    v8 = [PHShareParticipant fetchContributorsForAsset:v12 options:librarySpecificFetchOptions];

    [(PHShareParticipantRelationshipChangeRequestHelper *)self _prepareParticipantsWithFetchResult:v8];
  }

LABEL_7:
  originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)self originalObjectIDs];

  if (!originalObjectIDs2)
  {
    [(PHRelationshipChangeRequestHelper *)self setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

LABEL_9:
  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    originalObjectIDs3 = [(PHRelationshipChangeRequestHelper *)self originalObjectIDs];
    v15 = [originalObjectIDs3 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)self setMutableObjectIDsAndUUIDs:v15];
  }
}

- (void)_prepareParticipantsWithFetchResult:(id)result
{
  resultCopy = result;
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self originalObjectIDs];

  if (!originalObjectIDs)
  {
    fetchedObjectIDs = [resultCopy fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)self setOriginalObjectIDs:fetchedObjectIDs];
  }
}

@end