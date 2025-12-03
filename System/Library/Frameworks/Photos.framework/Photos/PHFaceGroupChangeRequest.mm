@interface PHFaceGroupChangeRequest
+ (id)changeRequestForFaceGroup:(id)group;
+ (id)creationRequestForFaceGroup;
+ (void)deleteFaceGroups:(id)groups;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (PHFaceGroupChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHFaceGroupChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (PHObjectPlaceholder)placeholderForCreatedFaceGroup;
- (id)_existentFaceObjectIDs;
- (id)_mutableKeyFaceObjectIDsAndUUIDs;
- (id)_mutableObjectIDsAndUUIDs;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (int64_t)personBuilderState;
- (int64_t)unnamedFaceCount;
- (void)_prefetchFacesAndPersonRelationship:(id)relationship inContext:(id)context;
- (void)_prepareFacesHelperIfNeeded;
- (void)_prepareKeyFaceHelperIfNeeded;
- (void)addFaces:(id)faces;
- (void)encodeToXPCDict:(id)dict;
- (void)removeFaces:(id)faces;
- (void)setKeyFace:(id)face;
- (void)setPersonBuilderState:(int64_t)state;
- (void)setUnnamedFaceCount:(int64_t)count;
@end

@implementation PHFaceGroupChangeRequest

- (void)setPersonBuilderState:(int64_t)state
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"personBuilderState"];
}

- (int64_t)personBuilderState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"personBuilderState"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setKeyFace:(id)face
{
  v16[1] = *MEMORY[0x1E69E9840];
  faceCopy = face;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (!faceCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHFaceGroupChangeRequest.m" lineNumber:305 description:{@"keyFace has incorrect class: %@", faceCopy}];

    if (!faceCopy)
    {
      goto LABEL_10;
    }
  }

  [(PHChangeRequest *)self didMutate];
  array = [MEMORY[0x1E695DF70] array];
  v7 = PLObjectIDOrUUIDFromPHObject(faceCopy);
  [array addObject:v7];
  v8 = MEMORY[0x1E695DFA8];
  _existentFaceObjectIDs = [(PHFaceGroupChangeRequest *)self _existentFaceObjectIDs];
  v10 = [v8 setWithArray:_existentFaceObjectIDs];

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_facesHelper mutableObjectIDsAndUUIDs];
  if ([mutableObjectIDsAndUUIDs count])
  {
    v12 = [MEMORY[0x1E695DFD8] setWithArray:mutableObjectIDsAndUUIDs];
    [v10 unionSet:v12];
  }

  if (([v10 containsObject:v7] & 1) == 0)
  {
    v16[0] = faceCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [(PHFaceGroupChangeRequest *)self addFaces:v13];
  }

  if (array)
  {
    _mutableKeyFaceObjectIDsAndUUIDs = [(PHFaceGroupChangeRequest *)self _mutableKeyFaceObjectIDsAndUUIDs];
    [_mutableKeyFaceObjectIDsAndUUIDs addObjectsFromArray:array];
  }

LABEL_10:
}

- (void)removeFaces:(id)faces
{
  v18 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [facesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(facesCopy);
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

      v6 = [facesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
    if (array)
    {
      _mutableObjectIDsAndUUIDs = [(PHFaceGroupChangeRequest *)self _mutableObjectIDsAndUUIDs];
      [_mutableObjectIDsAndUUIDs removeObjectsInArray:array];
    }
  }
}

- (void)addFaces:(id)faces
{
  v18 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [facesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(facesCopy);
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

      v6 = [facesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
    if (array)
    {
      _mutableObjectIDsAndUUIDs = [(PHFaceGroupChangeRequest *)self _mutableObjectIDsAndUUIDs];
      [_mutableObjectIDsAndUUIDs addObjectsFromArray:array];
    }
  }
}

- (id)_mutableKeyFaceObjectIDsAndUUIDs
{
  [(PHFaceGroupChangeRequest *)self _prepareKeyFaceHelperIfNeeded];
  keyFaceHelper = self->_keyFaceHelper;

  return [(PHRelationshipChangeRequestHelper *)keyFaceHelper mutableObjectIDsAndUUIDs];
}

- (id)_mutableObjectIDsAndUUIDs
{
  [(PHFaceGroupChangeRequest *)self _prepareFacesHelperIfNeeded];
  facesHelper = self->_facesHelper;

  return [(PHRelationshipChangeRequestHelper *)facesHelper mutableObjectIDsAndUUIDs];
}

- (void)_prepareFacesHelperIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_facesHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    if (self->_originalFaceGroup)
    {
      _existentFaceObjectIDs = [(PHFaceGroupChangeRequest *)self _existentFaceObjectIDs];
      originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)self->_facesHelper originalObjectIDs];

      if (!originalObjectIDs2)
      {
        [(PHRelationshipChangeRequestHelper *)self->_facesHelper setOriginalObjectIDs:_existentFaceObjectIDs];
      }
    }

    originalObjectIDs3 = [(PHRelationshipChangeRequestHelper *)self->_facesHelper originalObjectIDs];

    if (!originalObjectIDs3)
    {
      [(PHRelationshipChangeRequestHelper *)self->_facesHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
    }
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_facesHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    facesHelper = self->_facesHelper;
    originalObjectIDs4 = [(PHRelationshipChangeRequestHelper *)facesHelper originalObjectIDs];
    v9 = [originalObjectIDs4 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)facesHelper setMutableObjectIDsAndUUIDs:v9];
  }
}

- (void)_prepareKeyFaceHelperIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper originalObjectIDs];

    if (!originalObjectIDs2)
    {
      [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
    }
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    keyFaceHelper = self->_keyFaceHelper;
    originalObjectIDs3 = [(PHRelationshipChangeRequestHelper *)keyFaceHelper originalObjectIDs];
    v7 = [originalObjectIDs3 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)keyFaceHelper setMutableObjectIDsAndUUIDs:v7];
  }
}

- (id)_existentFaceObjectIDs
{
  if (self->_originalFaceGroup)
  {
    photoLibrary = [(PHChangeRequest *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F102DE50];
    v5 = [PHQuery queryForFacesInFaceGroup:self->_originalFaceGroup options:librarySpecificFetchOptions];
    executeQuery = [v5 executeQuery];
    fetchedObjectIDs = [executeQuery fetchedObjectIDs];
  }

  else
  {
    fetchedObjectIDs = [MEMORY[0x1E695DEC8] array];
  }

  return fetchedObjectIDs;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE3D8];
  managedObjectContext = [library managedObjectContext];
  v8 = [v6 insertInManagedObjectContext:managedObjectContext];

  if (!error || v8)
  {
    uuid = [(PHChangeRequest *)self uuid];
    [v8 setUuid:uuid];
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create face group"];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v9 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v11];
  }

  return v8;
}

- (void)_prefetchFacesAndPersonRelationship:(id)relationship inContext:(id)context
{
  v19[1] = *MEMORY[0x1E69E9840];
  relationshipCopy = relationship;
  contextCopy = context;
  v7 = objc_autoreleasePoolPush();
  v8 = MEMORY[0x1E695D5E0];
  entityName = [MEMORY[0x1E69BE3D0] entityName];
  v10 = [v8 fetchRequestWithEntityName:entityName];

  relationshipCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", relationshipCopy];
  [v10 setPredicate:relationshipCopy];

  v19[0] = @"personForFace";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v10 setRelationshipKeyPathsForPrefetching:v12];

  [v10 setReturnsObjectsAsFaults:0];
  v16 = 0;
  v13 = [contextCopy executeFetchRequest:v10 error:&v16];
  v14 = v16;
  if (!v13)
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Unable to prefetch faces: %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v46 = 0;
  v9 = [helper applyMutationsToManagedObject:objectCopy error:&v46];
  v10 = v46;

  if (v9)
  {
    associatedPerson = [objectCopy associatedPerson];
    if (!associatedPerson)
    {
      [MEMORY[0x1E69BE608] createAssociatedPersonForFaceGroup:objectCopy];
      associatedPerson = [objectCopy associatedPerson];
    }

    facesHelper = [(PHFaceGroupChangeRequest *)self facesHelper];
    mutableObjectIDsAndUUIDs = [facesHelper mutableObjectIDsAndUUIDs];

    if (mutableObjectIDsAndUUIDs)
    {
      [facesHelper setAllowsInsert:1];
      [facesHelper setAllowsMove:0];
      [facesHelper setAllowsRemove:1];
      [facesHelper setDestinationEntityName:@"DetectedFace"];
      mutableDetectedFaces = [objectCopy mutableDetectedFaces];
      v45 = v10;
      v38 = [facesHelper applyMutationsToManagedObject:objectCopy unorderedMutableChildren:mutableDetectedFaces error:&v45];
      v39 = v45;

      managedObjectContext = [objectCopy managedObjectContext];
      [(PHFaceGroupChangeRequest *)self _prefetchFacesAndPersonRelationship:mutableDetectedFaces inContext:managedObjectContext];

      v16 = [mutableDetectedFaces _pl_filter:&__block_literal_global_8122];
      [associatedPerson setDetectedFaces:v16];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v17 = mutableDetectedFaces;
      v18 = [v17 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v42;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v42 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [*(*(&v41 + 1) + 8 * i) fixPersonRelationshipsForFaceTorsoOrTemporal];
          }

          v19 = [v17 countByEnumeratingWithState:&v41 objects:v51 count:16];
        }

        while (v19);
      }

      keyFaceHelper = [(PHFaceGroupChangeRequest *)self keyFaceHelper];
      if (!v38)
      {
        v23 = 0;
        v10 = v39;
        goto LABEL_21;
      }

      v10 = v39;
    }

    else
    {
      keyFaceHelper = [(PHFaceGroupChangeRequest *)self keyFaceHelper];
    }

    mutableObjectIDsAndUUIDs2 = [keyFaceHelper mutableObjectIDsAndUUIDs];

    if (mutableObjectIDsAndUUIDs2)
    {
      [keyFaceHelper setAllowsInsert:1];
      [keyFaceHelper setDestinationEntityName:@"DetectedFace"];
      v40 = v10;
      v23 = [keyFaceHelper applyMutationsToManagedObjectToOneRelationship:objectCopy error:&v40];
      v25 = v40;

      v10 = v25;
    }

    else
    {
      v23 = 1;
    }

LABEL_21:
    keyFace = [objectCopy keyFace];
    if (keyFace && ([associatedPerson detectedFaces], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "containsObject:", keyFace), v27, (v28 & 1) == 0))
    {
      v34 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        faceGroupDescription = [associatedPerson faceGroupDescription];
        *buf = 138412546;
        v48 = objectCopy;
        v49 = 2112;
        v50 = faceGroupDescription;
        _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_DEFAULT, "Cleearing key face for face group %@ and associated person : %@", buf, 0x16u);
      }

      [objectCopy setKeyFace:0];
      v33 = 0;
    }

    else
    {
      personBeingKeyFace = [keyFace personBeingKeyFace];

      if (personBeingKeyFace)
      {
        goto LABEL_33;
      }

      v30 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v48 = objectCopy;
        v49 = 2112;
        v50 = keyFace;
        _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEBUG, "Face group should have key face: %@, %@", buf, 0x16u);
      }

      v31 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        faceGroupDescription2 = [associatedPerson faceGroupDescription];
        *buf = 138412546;
        v48 = faceGroupDescription2;
        v49 = 2112;
        v50 = keyFace;
        _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_DEFAULT, "Setting key face of associated person %@ to face %@", buf, 0x16u);
      }

      v33 = keyFace;
    }

    [associatedPerson setKeyFace:v33 pickSource:0];
LABEL_33:

    if (!error)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v23 = 0;
  if (!error)
  {
    goto LABEL_36;
  }

LABEL_34:
  if ((v23 & 1) == 0)
  {
    v36 = v10;
    *error = v10;
  }

LABEL_36:

  return v23;
}

BOOL __77__PHFaceGroupChangeRequest_applyMutationsToManagedObject_photoLibrary_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = 1;
  v3 = [a2 associatedPersonForFaceOrTorso:1 orTemporal:0];
  v4 = v3;
  if (v3)
  {
    v2 = [v3 verifiedType] == 0;
  }

  return v2;
}

- (void)setUnnamedFaceCount:(int64_t)count
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:count];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"unnamedFaceCount"];
}

- (int64_t)unnamedFaceCount
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"unnamedFaceCount"];

  intValue = [v5 intValue];
  return intValue;
}

- (PHObjectPlaceholder)placeholderForCreatedFaceGroup
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

  facesHelper = [(PHFaceGroupChangeRequest *)self facesHelper];
  [facesHelper encodeToXPCDict:dictCopy];

  keyFaceHelper = [(PHFaceGroupChangeRequest *)self keyFaceHelper];
  [keyFaceHelper encodeToXPCDict:dictCopy];
}

- (PHFaceGroupChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v19.receiver = self;
  v19.super_class = PHFaceGroupChangeRequest;
  v11 = [(PHChangeRequest *)&v19 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"faces" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      facesHelper = v11->_facesHelper;
      v11->_facesHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyFace" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      keyFaceHelper = v11->_keyFaceHelper;
      v11->_keyFaceHelper = v16;
    }
  }

  return v11;
}

- (PHFaceGroupChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = PHFaceGroupChangeRequest;
  v8 = [(PHChangeRequest *)&v16 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"faces" changeRequestHelper:v8->super._helper];
    facesHelper = v8->_facesHelper;
    v8->_facesHelper = v11;

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyFace" changeRequestHelper:v8->super._helper];
    keyFaceHelper = v8->_keyFaceHelper;
    v8->_keyFaceHelper = v13;
  }

  return v8;
}

- (id)initForNewObject
{
  v10.receiver = self;
  v10.super_class = PHFaceGroupChangeRequest;
  v2 = [(PHChangeRequest *)&v10 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v5 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"faces" changeRequestHelper:v2->super._helper];
    facesHelper = v2->_facesHelper;
    v2->_facesHelper = v5;

    v7 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyFace" changeRequestHelper:v2->super._helper];
    keyFaceHelper = v2->_keyFaceHelper;
    v2->_keyFaceHelper = v7;
  }

  return v2;
}

+ (void)deleteFaceGroups:(id)groups
{
  groupsCopy = groups;
  v4 = [(PHObjectDeleteRequest *)PHFaceGroupDeleteRequest deleteRequestsForObjects:groupsCopy ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForFaceGroup:(id)group
{
  if (group)
  {
    groupCopy = group;
    v4 = [PHChangeRequestHelper changeRequestForObject:groupCopy];
    [v4 _setOriginalFaceGroup:groupCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)creationRequestForFaceGroup
{
  initForNewObject = [[PHFaceGroupChangeRequest alloc] initForNewObject];

  return initForNewObject;
}

@end