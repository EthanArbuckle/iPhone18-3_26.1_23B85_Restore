@interface PHFaceGroupChangeRequest
+ (id)changeRequestForFaceGroup:(id)a3;
+ (id)creationRequestForFaceGroup;
+ (void)deleteFaceGroups:(id)a3;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (PHFaceGroupChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHFaceGroupChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (PHObjectPlaceholder)placeholderForCreatedFaceGroup;
- (id)_existentFaceObjectIDs;
- (id)_mutableKeyFaceObjectIDsAndUUIDs;
- (id)_mutableObjectIDsAndUUIDs;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (int64_t)personBuilderState;
- (int64_t)unnamedFaceCount;
- (void)_prefetchFacesAndPersonRelationship:(id)a3 inContext:(id)a4;
- (void)_prepareFacesHelperIfNeeded;
- (void)_prepareKeyFaceHelperIfNeeded;
- (void)addFaces:(id)a3;
- (void)encodeToXPCDict:(id)a3;
- (void)removeFaces:(id)a3;
- (void)setKeyFace:(id)a3;
- (void)setPersonBuilderState:(int64_t)a3;
- (void)setUnnamedFaceCount:(int64_t)a3;
@end

@implementation PHFaceGroupChangeRequest

- (void)setPersonBuilderState:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"personBuilderState"];
}

- (int64_t)personBuilderState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"personBuilderState"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setKeyFace:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PHFaceGroupChangeRequest.m" lineNumber:305 description:{@"keyFace has incorrect class: %@", v5}];

    if (!v5)
    {
      goto LABEL_10;
    }
  }

  [(PHChangeRequest *)self didMutate];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = PLObjectIDOrUUIDFromPHObject(v5);
  [v6 addObject:v7];
  v8 = MEMORY[0x1E695DFA8];
  v9 = [(PHFaceGroupChangeRequest *)self _existentFaceObjectIDs];
  v10 = [v8 setWithArray:v9];

  v11 = [(PHRelationshipChangeRequestHelper *)self->_facesHelper mutableObjectIDsAndUUIDs];
  if ([v11 count])
  {
    v12 = [MEMORY[0x1E695DFD8] setWithArray:v11];
    [v10 unionSet:v12];
  }

  if (([v10 containsObject:v7] & 1) == 0)
  {
    v16[0] = v5;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [(PHFaceGroupChangeRequest *)self addFaces:v13];
  }

  if (v6)
  {
    v14 = [(PHFaceGroupChangeRequest *)self _mutableKeyFaceObjectIDsAndUUIDs];
    [v14 addObjectsFromArray:v6];
  }

LABEL_10:
}

- (void)removeFaces:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v12 = [(PHFaceGroupChangeRequest *)self _mutableObjectIDsAndUUIDs];
      [v12 removeObjectsInArray:v7];
    }
  }
}

- (void)addFaces:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v12 = [(PHFaceGroupChangeRequest *)self _mutableObjectIDsAndUUIDs];
      [v12 addObjectsFromArray:v7];
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
  v3 = [(PHRelationshipChangeRequestHelper *)self->_facesHelper originalObjectIDs];

  if (!v3)
  {
    if (self->_originalFaceGroup)
    {
      v4 = [(PHFaceGroupChangeRequest *)self _existentFaceObjectIDs];
      v5 = [(PHRelationshipChangeRequestHelper *)self->_facesHelper originalObjectIDs];

      if (!v5)
      {
        [(PHRelationshipChangeRequestHelper *)self->_facesHelper setOriginalObjectIDs:v4];
      }
    }

    v6 = [(PHRelationshipChangeRequestHelper *)self->_facesHelper originalObjectIDs];

    if (!v6)
    {
      [(PHRelationshipChangeRequestHelper *)self->_facesHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
    }
  }

  v7 = [(PHRelationshipChangeRequestHelper *)self->_facesHelper mutableObjectIDsAndUUIDs];

  if (!v7)
  {
    facesHelper = self->_facesHelper;
    v10 = [(PHRelationshipChangeRequestHelper *)facesHelper originalObjectIDs];
    v9 = [v10 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)facesHelper setMutableObjectIDsAndUUIDs:v9];
  }
}

- (void)_prepareKeyFaceHelperIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper originalObjectIDs];

  if (!v3)
  {
    v4 = [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper originalObjectIDs];

    if (!v4)
    {
      [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
    }
  }

  v5 = [(PHRelationshipChangeRequestHelper *)self->_keyFaceHelper mutableObjectIDsAndUUIDs];

  if (!v5)
  {
    keyFaceHelper = self->_keyFaceHelper;
    v8 = [(PHRelationshipChangeRequestHelper *)keyFaceHelper originalObjectIDs];
    v7 = [v8 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)keyFaceHelper setMutableObjectIDsAndUUIDs:v7];
  }
}

- (id)_existentFaceObjectIDs
{
  if (self->_originalFaceGroup)
  {
    v3 = [(PHChangeRequest *)self photoLibrary];
    v4 = [v3 librarySpecificFetchOptions];

    [v4 setIncludedDetectionTypes:&unk_1F102DE50];
    v5 = [PHQuery queryForFacesInFaceGroup:self->_originalFaceGroup options:v4];
    v6 = [v5 executeQuery];
    v7 = [v6 fetchedObjectIDs];
  }

  else
  {
    v7 = [MEMORY[0x1E695DEC8] array];
  }

  return v7;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE3D8];
  v7 = [a3 managedObjectContext];
  v8 = [v6 insertInManagedObjectContext:v7];

  if (!a4 || v8)
  {
    v12 = [(PHChangeRequest *)self uuid];
    [v8 setUuid:v12];
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create face group"];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [v9 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v11];
  }

  return v8;
}

- (void)_prefetchFacesAndPersonRelationship:(id)a3 inContext:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = MEMORY[0x1E695D5E0];
  v9 = [MEMORY[0x1E69BE3D0] entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v5];
  [v10 setPredicate:v11];

  v19[0] = @"personForFace";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v10 setRelationshipKeyPathsForPrefetching:v12];

  [v10 setReturnsObjectsAsFaults:0];
  v16 = 0;
  v13 = [v6 executeFetchRequest:v10 error:&v16];
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

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(PHChangeRequest *)self helper];
  v46 = 0;
  v9 = [v8 applyMutationsToManagedObject:v7 error:&v46];
  v10 = v46;

  if (v9)
  {
    v11 = [v7 associatedPerson];
    if (!v11)
    {
      [MEMORY[0x1E69BE608] createAssociatedPersonForFaceGroup:v7];
      v11 = [v7 associatedPerson];
    }

    v12 = [(PHFaceGroupChangeRequest *)self facesHelper];
    v13 = [v12 mutableObjectIDsAndUUIDs];

    if (v13)
    {
      [v12 setAllowsInsert:1];
      [v12 setAllowsMove:0];
      [v12 setAllowsRemove:1];
      [v12 setDestinationEntityName:@"DetectedFace"];
      v14 = [v7 mutableDetectedFaces];
      v45 = v10;
      v38 = [v12 applyMutationsToManagedObject:v7 unorderedMutableChildren:v14 error:&v45];
      v39 = v45;

      v15 = [v7 managedObjectContext];
      [(PHFaceGroupChangeRequest *)self _prefetchFacesAndPersonRelationship:v14 inContext:v15];

      v16 = [v14 _pl_filter:&__block_literal_global_8122];
      [v11 setDetectedFaces:v16];
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v17 = v14;
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

      v22 = [(PHFaceGroupChangeRequest *)self keyFaceHelper];
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
      v22 = [(PHFaceGroupChangeRequest *)self keyFaceHelper];
    }

    v24 = [v22 mutableObjectIDsAndUUIDs];

    if (v24)
    {
      [v22 setAllowsInsert:1];
      [v22 setDestinationEntityName:@"DetectedFace"];
      v40 = v10;
      v23 = [v22 applyMutationsToManagedObjectToOneRelationship:v7 error:&v40];
      v25 = v40;

      v10 = v25;
    }

    else
    {
      v23 = 1;
    }

LABEL_21:
    v26 = [v7 keyFace];
    if (v26 && ([v11 detectedFaces], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "containsObject:", v26), v27, (v28 & 1) == 0))
    {
      v34 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v11 faceGroupDescription];
        *buf = 138412546;
        v48 = v7;
        v49 = 2112;
        v50 = v35;
        _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_DEFAULT, "Cleearing key face for face group %@ and associated person : %@", buf, 0x16u);
      }

      [v7 setKeyFace:0];
      v33 = 0;
    }

    else
    {
      v29 = [v26 personBeingKeyFace];

      if (v29)
      {
        goto LABEL_33;
      }

      v30 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v48 = v7;
        v49 = 2112;
        v50 = v26;
        _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEBUG, "Face group should have key face: %@, %@", buf, 0x16u);
      }

      v31 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v11 faceGroupDescription];
        *buf = 138412546;
        v48 = v32;
        v49 = 2112;
        v50 = v26;
        _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_DEFAULT, "Setting key face of associated person %@ to face %@", buf, 0x16u);
      }

      v33 = v26;
    }

    [v11 setKeyFace:v33 pickSource:0];
LABEL_33:

    if (!a5)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v23 = 0;
  if (!a5)
  {
    goto LABEL_36;
  }

LABEL_34:
  if ((v23 & 1) == 0)
  {
    v36 = v10;
    *a5 = v10;
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

- (void)setUnnamedFaceCount:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"unnamedFaceCount"];
}

- (int64_t)unnamedFaceCount
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"unnamedFaceCount"];

  v6 = [v5 intValue];
  return v6;
}

- (PHObjectPlaceholder)placeholderForCreatedFaceGroup
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

  v6 = [(PHFaceGroupChangeRequest *)self facesHelper];
  [v6 encodeToXPCDict:v4];

  v7 = [(PHFaceGroupChangeRequest *)self keyFaceHelper];
  [v7 encodeToXPCDict:v4];
}

- (PHFaceGroupChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PHFaceGroupChangeRequest;
  v11 = [(PHChangeRequest *)&v19 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"faces" xpcDict:v8 changeRequestHelper:v11->super._helper];
      facesHelper = v11->_facesHelper;
      v11->_facesHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyFace" xpcDict:v8 changeRequestHelper:v11->super._helper];
      keyFaceHelper = v11->_keyFaceHelper;
      v11->_keyFaceHelper = v16;
    }
  }

  return v11;
}

- (PHFaceGroupChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PHFaceGroupChangeRequest;
  v8 = [(PHChangeRequest *)&v16 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
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

+ (void)deleteFaceGroups:(id)a3
{
  v5 = a3;
  v4 = [(PHObjectDeleteRequest *)PHFaceGroupDeleteRequest deleteRequestsForObjects:v5 ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForFaceGroup:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [PHChangeRequestHelper changeRequestForObject:v3];
    [v4 _setOriginalFaceGroup:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)creationRequestForFaceGroup
{
  v2 = [[PHFaceGroupChangeRequest alloc] initForNewObject];

  return v2;
}

@end