@interface PHFaceCropChangeRequest
+ (id)_creationRequestForFaceCropWithOriginatingFace:(id)a3 resourceData:(id)a4 person:(id)a5;
+ (id)_creationRequestForFaceCropWithOriginatingFace:(id)a3 resourceData:(id)a4 personLocalIdentifier:(id)a5;
+ (id)creationRequestForFaceCropCopyFromFaceCrop:(id)a3 withType:(signed __int16)a4 onPerson:(id)a5;
+ (id)creationRequestsForFaceCropsWithOriginatingFace:(id)a3 resourceData:(id)a4;
+ (void)deleteFaceCrops:(id)a3;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (NSData)resourceData;
- (PHFaceCropChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHFaceCropChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (PHObjectPlaceholder)placeholderForCreatedFaceCrop;
- (id)_mutableFaceObjectIDsAndUUIDs;
- (id)_mutablePersonObjectIDsAndUUIDs;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (signed)state;
- (signed)type;
- (void)_prepareFaceHelperIfNeeded;
- (void)_preparePersonHelperIfNeeded;
- (void)encodeToXPCDict:(id)a3;
- (void)setFace:(id)a3;
- (void)setResourceData:(id)a3;
- (void)setState:(signed __int16)a3;
- (void)setType:(signed __int16)a3;
@end

@implementation PHFaceCropChangeRequest

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PHChangeRequest *)self helper];
  v43 = 0;
  v11 = [v10 applyMutationsToManagedObject:v8 error:&v43];
  v12 = v43;

  v13 = [(PHFaceCropChangeRequest *)self faceHelper];
  v14 = v13;
  if (v11)
  {
    v15 = [v13 mutableObjectIDsAndUUIDs];
    v16 = [v15 count];

    if (v16)
    {
      v17 = v8;
      v18 = [v17 face];
      [v14 setAllowsInsert:1];
      [v14 setDestinationEntityName:@"DetectedFace"];
      [v14 setIsDestinationObjectValid:&__block_literal_global_112];
      v42 = v12;
      v19 = [v14 applyMutationsToManagedObjectToOneRelationship:v17 error:&v42];
      v40 = v42;

      if (v19)
      {
        v38 = v18;
        v20 = v17;
        v21 = [v20 face];
        v39 = [v21 objectID];

        [v20 applyPropertiesToTrainingFace];
        v22 = [v20 face];
        v23 = [v22 trainingType];
        v24 = v23 != 0;

        if (!v23)
        {
          v25 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Adding a training face to a face crop with 'None' type is invalid"];

          v40 = v25;
        }

        v18 = v38;
        v26 = v39;
        if (v38)
        {
          if (v39)
          {
            v27 = [v38 objectID];
            v28 = [v27 isEqual:v39];

            v18 = v38;
            v26 = v39;
            if ((v28 & 1) == 0)
            {
              v29 = [v9 managedObjectContext];
              [v29 deleteObject:v38];

              v18 = v38;
              v26 = v39;
            }
          }
        }
      }

      else
      {
        v24 = 0;
      }

      v12 = v40;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v30 = [(PHFaceCropChangeRequest *)self personHelper];
  v31 = v30;
  if (v24)
  {
    v32 = [v30 mutableObjectIDsAndUUIDs];
    v33 = [v32 count];

    if (!v33)
    {

      v34 = 1;
      goto LABEL_23;
    }

    [v31 setAllowsInsert:1];
    [v31 setDestinationEntityName:@"Person"];
    [v31 setDestinationUUIDKeyPath:@"personUUID"];
    [v31 setIsDestinationObjectValid:&__block_literal_global_118];
    v41 = v12;
    v34 = [v31 applyMutationsToManagedObjectToOneRelationship:v8 error:&v41];
    v35 = v41;

    v12 = v35;
  }

  else
  {
    v34 = 0;
  }

  if (a5 && (v34 & 1) == 0)
  {
    v36 = v12;
    v34 = 0;
    *a5 = v12;
  }

LABEL_23:

  return v34;
}

BOOL __76__PHFaceCropChangeRequest_applyMutationsToManagedObject_photoLibrary_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 associatedPersonForFaceOrTorso:1 orTemporal:0];

  if (v2)
  {
    v3 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_ERROR, "Setting a detected face which already has a person on a face crop is invalid", v5, 2u);
    }
  }

  return v2 == 0;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PHFaceCropChangeRequest *)self originatingFaceCropUUID];

  if (!v7)
  {
    v20 = MEMORY[0x1E69BE3D0];
    v21 = [(PHFaceCropChangeRequest *)self originatingFaceUUID];
    v22 = [v6 managedObjectContext];
    v23 = [v20 detectedFaceWithUUID:v21 inManagedObjectContext:v22];

    v24 = [v23 associatedAssetForFaceOrTorso:0 orTemporal:0];
    if (v24)
    {
      v14 = 0;
    }

    else
    {
      v25 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Attempting to create a face crop for a face with no asset, this is not allowed", buf, 2u);
      }

      v14 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:{@"Attempting to create a face crop for a face with no asset, this is not allowed"}];
    }

    v26 = [(PHFaceCropChangeRequest *)self _mutablePersonObjectIDsAndUUIDs];
    v27 = [v26 firstObject];

    v28 = MEMORY[0x1E69BE608];
    v29 = [v6 managedObjectContext];
    v30 = [v28 personWithUUID:v27 inManagedObjectContext:v29];

    if (!v24)
    {
      goto LABEL_39;
    }

    v31 = [v23 rejectedPersons];
    v32 = [v31 containsObject:v30];

    if (v32)
    {
      v55 = v23;
      v58 = v27;
      v33 = v30;
      v34 = 2;
LABEL_19:
      v35 = MEMORY[0x1E69BE410];
      v36 = [(PHChangeRequest *)self uuid];
      v37 = [(PHFaceCropChangeRequest *)self resourceData];
      v11 = [v35 insertIntoPhotoLibrary:v6 withUUID:v36 resourceData:v37 type:v34];

      if (v11)
      {
        [v11 setAsset:v24];
        v30 = v33;
        if (v34 == 2)
        {
          v23 = v55;
          v38 = [v55 associatedPersonForFaceOrTorso:1 orTemporal:0];
          v39 = [v30 invalidMergeCandidates];
          v40 = [v39 containsObject:v38];

          if (v40)
          {
            v41 = [v38 personUUID];
            [v11 setInvalidMergeCandidatePersonUUID:v41];
          }

          v42 = 1;
          v27 = v58;
        }

        else
        {
          v42 = 1;
          v23 = v55;
          v27 = v58;
        }

        goto LABEL_44;
      }

      v44 = PLPhotoKitGetLog();
      v30 = v33;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v44, OS_LOG_TYPE_ERROR, "Unable to insert face crop into photo library", buf, 2u);
      }

      v45 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Unable to insert face crop into photo library"];
      v43 = v14;
      v23 = v55;
      v27 = v58;
      goto LABEL_38;
    }

    v43 = [v23 associatedPersonForFaceOrTorso:1 orTemporal:0];
    if ([v43 isEqual:v30])
    {
      if ([v43 verifiedType] == 1)
      {
        if ([v23 nameSource] == 1)
        {
          v55 = v23;
          v58 = v27;
          v34 = 1;
LABEL_49:
          v33 = v30;

          goto LABEL_19;
        }

        if ([v23 nameSource] == 3)
        {
          v55 = v23;
          v58 = v27;
          v34 = 3;
          goto LABEL_49;
        }

        v61 = MEMORY[0x1E696AEC0];
        v54 = [v23 namingDescription];
        v57 = [v30 pointerDescription];
        v60 = [v61 stringWithFormat:@"Cannot create face crop for face %@ with invalid nameSource for user-verified person %@", v54, v57];

        v53 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

        *buf = 138412290;
        v64 = v60;
LABEL_54:
        _os_log_impl(&dword_19C86F000, v53, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
LABEL_55:

        v45 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:{@"%@", v60}];

LABEL_38:
        v14 = v45;
LABEL_39:
        if (a4)
        {
          if (!v14)
          {
            v47 = MEMORY[0x1E696ABC0];
            v48 = [(PHFaceCropChangeRequest *)self originatingFaceUUID];
            v14 = [v47 ph_genericErrorWithLocalizedDescription:{@"Unable to create face crops for originating face UUID %@ and person UUID %@", v48, v27}];
          }

          v49 = v14;
          v42 = 0;
          v11 = 0;
          *a4 = v14;
        }

        else
        {
          v42 = 0;
          v11 = 0;
        }

LABEL_44:

        if ((v42 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_45;
      }

      if ([v43 verifiedType] == 2)
      {
        if ([v23 nameSource] == 5)
        {
          v55 = v23;
          v58 = v27;
          v34 = 5;
          goto LABEL_49;
        }

        v59 = MEMORY[0x1E696AEC0];
        v52 = [v23 namingDescription];
        v56 = [v30 pointerDescription];
        v60 = [v59 stringWithFormat:@"Cannot create face crop for face %@ with invalid nameSource for graph-verified person %@", v52, v56];

        v53 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

        *buf = 138412290;
        v64 = v60;
        goto LABEL_54;
      }
    }

    v46 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v46, OS_LOG_TYPE_ERROR, "Creating a faceCrop with 'None' type is invalid, possible race condition, correct resolution is to retry faceCrop creation request", buf, 2u);
    }

    v45 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:{@"Creating a faceCrop with 'None' type is invalid, possible race condition, correct resolution is to retry faceCrop creation request"}];
    v43 = v14;
    goto LABEL_38;
  }

  v8 = MEMORY[0x1E69BE410];
  v9 = [(PHChangeRequest *)self uuid];
  v10 = [(PHFaceCropChangeRequest *)self resourceData];
  v11 = [v8 insertIntoPhotoLibrary:v6 withUUID:v9 resourceData:v10 type:{-[PHFaceCropChangeRequest type](self, "type")}];

  [v11 setState:0];
  v12 = [(PHFaceCropChangeRequest *)self personHelper];
  v13 = [v12 mutableObjectIDsAndUUIDs];
  v14 = [v13 count];

  if (!v14)
  {

    goto LABEL_45;
  }

  [v12 setAllowsInsert:1];
  [v12 setDestinationEntityName:@"Person"];
  [v12 setDestinationUUIDKeyPath:@"personUUID"];
  [v12 setIsDestinationObjectValid:&__block_literal_global_17808];
  v62 = 0;
  v15 = [v12 applyMutationsToManagedObjectToOneRelationship:v11 error:&v62];
  v14 = v62;

  if (!a4 || (v15 & 1) != 0)
  {
    if ((v15 & 1) == 0)
    {
LABEL_12:
      v19 = 0;
      goto LABEL_46;
    }

LABEL_45:
    v19 = v11;
    goto LABEL_46;
  }

  if (!v14)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = [(PHFaceCropChangeRequest *)self originatingFaceCropUUID];
    v14 = [v16 ph_genericErrorWithLocalizedDescription:{@"Unable to create face crops from originating face crop with UUID %@", v17}];
  }

  v18 = v14;
  v19 = 0;
  *a4 = v14;
LABEL_46:
  v50 = v19;

  return v19;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v6 = [(PHFaceCropChangeRequest *)self originatingFaceCropUUID];

  if (v6)
  {
    return 1;
  }

  v8 = [(PHFaceCropChangeRequest *)self originatingFaceUUID];

  if (v8)
  {
    v9 = [(PHFaceCropChangeRequest *)self _mutablePersonObjectIDsAndUUIDs];
    v10 = [v9 count];

    if (v10 == 1)
    {
      return 1;
    }

    if (a4)
    {
      v11 = @"All FaceCrops require a person";
LABEL_9:
      v12 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:v11];
      v13 = v12;
      result = 0;
      *a4 = v12;
      return result;
    }
  }

  else if (a4)
  {
    v11 = @"All FaceCrops require an originating face UUID";
    goto LABEL_9;
  }

  return 0;
}

- (void)encodeToXPCDict:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 encodeToXPCDict:v4];

  v6 = [(PHFaceCropChangeRequest *)self faceHelper];
  [v6 encodeToXPCDict:v4];

  v7 = [(PHFaceCropChangeRequest *)self personHelper];
  [v7 encodeToXPCDict:v4];

  v8 = [(PHFaceCropChangeRequest *)self originatingFaceUUID];
  PLXPCDictionarySetString();

  v9 = [(PHFaceCropChangeRequest *)self originatingFaceCropUUID];
  PLXPCDictionarySetString();
}

- (PHFaceCropChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = PHFaceCropChangeRequest;
  v11 = [(PHChangeRequest *)&v23 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"face" xpcDict:v8 changeRequestHelper:v11->super._helper];
      faceHelper = v11->_faceHelper;
      v11->_faceHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"person" xpcDict:v8 changeRequestHelper:v11->super._helper];
      personHelper = v11->_personHelper;
      v11->_personHelper = v16;

      v18 = PLStringFromXPCDictionary();
      originatingFaceUUID = v11->_originatingFaceUUID;
      v11->_originatingFaceUUID = v18;

      v20 = PLStringFromXPCDictionary();
      originatingFaceCropUUID = v11->_originatingFaceCropUUID;
      v11->_originatingFaceCropUUID = v20;
    }
  }

  return v11;
}

- (void)setType:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"type"];
}

- (signed)type
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"type"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"state"];
}

- (signed)state
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"state"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setResourceData:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"resourceData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"resourceData"];
  }

  else
  {
    [v6 removeObjectForKey:@"resourceData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"resourceData"];
  }
}

- (NSData)resourceData
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"resourceData"];

  return v5;
}

- (void)setFace:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PHFaceCropChangeRequest.m" lineNumber:160 description:{@"face has incorrect class: %@", v9}];
    }
  }

  v5 = PLObjectIDOrUUIDFromPHObject(v9);
  v6 = [(PHFaceCropChangeRequest *)self _mutableFaceObjectIDsAndUUIDs];
  [v6 removeAllObjects];

  v7 = [(PHFaceCropChangeRequest *)self _mutableFaceObjectIDsAndUUIDs];
  [v7 addObject:v5];
}

- (id)_mutablePersonObjectIDsAndUUIDs
{
  [(PHFaceCropChangeRequest *)self _preparePersonHelperIfNeeded];
  personHelper = self->_personHelper;

  return [(PHRelationshipChangeRequestHelper *)personHelper mutableObjectIDsAndUUIDs];
}

- (id)_mutableFaceObjectIDsAndUUIDs
{
  [(PHFaceCropChangeRequest *)self _prepareFaceHelperIfNeeded];
  faceHelper = self->_faceHelper;

  return [(PHRelationshipChangeRequestHelper *)faceHelper mutableObjectIDsAndUUIDs];
}

- (void)_preparePersonHelperIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHRelationshipChangeRequestHelper *)self->_personHelper originalObjectIDs];

  if (!v3)
  {
    [(PHRelationshipChangeRequestHelper *)self->_personHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  v4 = [(PHRelationshipChangeRequestHelper *)self->_personHelper mutableObjectIDsAndUUIDs];

  if (!v4)
  {
    personHelper = self->_personHelper;
    v7 = [(PHRelationshipChangeRequestHelper *)personHelper originalObjectIDs];
    v6 = [v7 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)personHelper setMutableObjectIDsAndUUIDs:v6];
  }
}

- (void)_prepareFaceHelperIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHRelationshipChangeRequestHelper *)self->_faceHelper originalObjectIDs];

  if (!v3)
  {
    [(PHRelationshipChangeRequestHelper *)self->_faceHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  v4 = [(PHRelationshipChangeRequestHelper *)self->_faceHelper mutableObjectIDsAndUUIDs];

  if (!v4)
  {
    faceHelper = self->_faceHelper;
    v7 = [(PHRelationshipChangeRequestHelper *)faceHelper originalObjectIDs];
    v6 = [v7 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)faceHelper setMutableObjectIDsAndUUIDs:v6];
  }
}

- (PHObjectPlaceholder)placeholderForCreatedFaceCrop
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (PHFaceCropChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PHFaceCropChangeRequest;
  v8 = [(PHChangeRequest *)&v16 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"face" changeRequestHelper:v8->super._helper];
    faceHelper = v8->_faceHelper;
    v8->_faceHelper = v11;

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"person" changeRequestHelper:v8->super._helper];
    personHelper = v8->_personHelper;
    v8->_personHelper = v13;
  }

  return v8;
}

- (id)initForNewObject
{
  v10.receiver = self;
  v10.super_class = PHFaceCropChangeRequest;
  v2 = [(PHChangeRequest *)&v10 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v5 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"face" changeRequestHelper:v2->super._helper];
    faceHelper = v2->_faceHelper;
    v2->_faceHelper = v5;

    v7 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"person" changeRequestHelper:v2->super._helper];
    personHelper = v2->_personHelper;
    v2->_personHelper = v7;
  }

  return v2;
}

+ (void)deleteFaceCrops:(id)a3
{
  v5 = a3;
  v4 = [(PHObjectDeleteRequest *)PHFaceCropDeleteRequest deleteRequestsForObjects:v5 ofType:objc_opt_class() forSelector:a2];
}

+ (id)creationRequestsForFaceCropsWithOriginatingFace:(id)a3 resourceData:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [v6 photoLibrary];
  v9 = [v8 managedObjectContextForCurrentQueueQoS];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __88__PHFaceCropChangeRequest_creationRequestsForFaceCropsWithOriginatingFace_resourceData___block_invoke;
  v28[3] = &unk_1E75AB248;
  v10 = v6;
  v29 = v10;
  v30 = v9;
  v11 = v7;
  v31 = v11;
  v22 = v30;
  [v30 performBlockAndWait:v28];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(PHObject *)PHPerson localIdentifierWithUUID:*(*(&v24 + 1) + 8 * i)];
        v19 = [a1 _creationRequestForFaceCropWithOriginatingFace:v10 resourceData:v23 personLocalIdentifier:v18];
        [v12 addObject:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  v20 = [PHFaceChangeRequest changeRequestForFace:v10];
  [v20 setShouldClearFaceCropGenerationState:1];

  return v12;
}

void __88__PHFaceCropChangeRequest_creationRequestsForFaceCropsWithOriginatingFace_resourceData___block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE608] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x1E69BE608];
  v6 = [*(a1 + 32) objectID];
  v7 = [v5 predicateForPersonsNeedingFaceCropGenerationForFaceObjectID:v6];
  [v4 setPredicate:v7];

  [v4 setResultType:2];
  v29[0] = @"personUUID";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [v4 setPropertiesToFetch:v8];

  v9 = *(a1 + 40);
  v23 = 0;
  v10 = [v9 executeFetchRequest:v4 error:&v23];
  v11 = v23;
  if (v10)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v19 + 1) + 8 * i) objectForKey:{@"personUUID", v19}];
          [*(a1 + 48) addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *buf = 138412546;
      v26 = v18;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Error fetching persons needing face crop generation for face %@, error %@", buf, 0x16u);
    }
  }
}

+ (id)_creationRequestForFaceCropWithOriginatingFace:(id)a3 resourceData:(id)a4 person:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 localIdentifier];
  v11 = [a1 _creationRequestForFaceCropWithOriginatingFace:v9 resourceData:v8 personLocalIdentifier:v10];

  return v11;
}

+ (id)_creationRequestForFaceCropWithOriginatingFace:(id)a3 resourceData:(id)a4 personLocalIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initForNewObject];
  [v11 setResourceData:v9];

  v12 = [v10 uuid];

  [v11 setOriginatingFaceUUID:v12];
  v13 = [v11 _mutablePersonObjectIDsAndUUIDs];
  v14 = [PHObject uuidFromLocalIdentifier:v8];

  [v13 addObject:v14];

  return v11;
}

+ (id)creationRequestForFaceCropCopyFromFaceCrop:(id)a3 withType:(signed __int16)a4 onPerson:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initForNewObject];
  v11 = [v9 uuid];
  [v10 setOriginatingFaceCropUUID:v11];

  v12 = [v9 resourceData];

  [v10 setResourceData:v12];
  [v10 setType:v5];
  v13 = [v10 _mutablePersonObjectIDsAndUUIDs];
  v14 = PLObjectIDOrUUIDFromPHObject(v8);

  [v13 addObject:v14];

  return v10;
}

@end