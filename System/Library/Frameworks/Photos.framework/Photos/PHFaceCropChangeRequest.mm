@interface PHFaceCropChangeRequest
+ (id)_creationRequestForFaceCropWithOriginatingFace:(id)face resourceData:(id)data person:(id)person;
+ (id)_creationRequestForFaceCropWithOriginatingFace:(id)face resourceData:(id)data personLocalIdentifier:(id)identifier;
+ (id)creationRequestForFaceCropCopyFromFaceCrop:(id)crop withType:(signed __int16)type onPerson:(id)person;
+ (id)creationRequestsForFaceCropsWithOriginatingFace:(id)face resourceData:(id)data;
+ (void)deleteFaceCrops:(id)crops;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (NSData)resourceData;
- (PHFaceCropChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHFaceCropChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (PHObjectPlaceholder)placeholderForCreatedFaceCrop;
- (id)_mutableFaceObjectIDsAndUUIDs;
- (id)_mutablePersonObjectIDsAndUUIDs;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (signed)state;
- (signed)type;
- (void)_prepareFaceHelperIfNeeded;
- (void)_preparePersonHelperIfNeeded;
- (void)encodeToXPCDict:(id)dict;
- (void)setFace:(id)face;
- (void)setResourceData:(id)data;
- (void)setState:(signed __int16)state;
- (void)setType:(signed __int16)type;
@end

@implementation PHFaceCropChangeRequest

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  objectCopy = object;
  libraryCopy = library;
  helper = [(PHChangeRequest *)self helper];
  v43 = 0;
  v11 = [helper applyMutationsToManagedObject:objectCopy error:&v43];
  v12 = v43;

  faceHelper = [(PHFaceCropChangeRequest *)self faceHelper];
  v14 = faceHelper;
  if (v11)
  {
    mutableObjectIDsAndUUIDs = [faceHelper mutableObjectIDsAndUUIDs];
    v16 = [mutableObjectIDsAndUUIDs count];

    if (v16)
    {
      v17 = objectCopy;
      face = [v17 face];
      [v14 setAllowsInsert:1];
      [v14 setDestinationEntityName:@"DetectedFace"];
      [v14 setIsDestinationObjectValid:&__block_literal_global_112];
      v42 = v12;
      v19 = [v14 applyMutationsToManagedObjectToOneRelationship:v17 error:&v42];
      v40 = v42;

      if (v19)
      {
        v38 = face;
        v20 = v17;
        face2 = [v20 face];
        objectID = [face2 objectID];

        [v20 applyPropertiesToTrainingFace];
        face3 = [v20 face];
        trainingType = [face3 trainingType];
        v24 = trainingType != 0;

        if (!trainingType)
        {
          v25 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Adding a training face to a face crop with 'None' type is invalid"];

          v40 = v25;
        }

        face = v38;
        v26 = objectID;
        if (v38)
        {
          if (objectID)
          {
            objectID2 = [v38 objectID];
            v28 = [objectID2 isEqual:objectID];

            face = v38;
            v26 = objectID;
            if ((v28 & 1) == 0)
            {
              managedObjectContext = [libraryCopy managedObjectContext];
              [managedObjectContext deleteObject:v38];

              face = v38;
              v26 = objectID;
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

  personHelper = [(PHFaceCropChangeRequest *)self personHelper];
  v31 = personHelper;
  if (v24)
  {
    mutableObjectIDsAndUUIDs2 = [personHelper mutableObjectIDsAndUUIDs];
    v33 = [mutableObjectIDsAndUUIDs2 count];

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
    v34 = [v31 applyMutationsToManagedObjectToOneRelationship:objectCopy error:&v41];
    v35 = v41;

    v12 = v35;
  }

  else
  {
    v34 = 0;
  }

  if (error && (v34 & 1) == 0)
  {
    v36 = v12;
    v34 = 0;
    *error = v12;
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

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  originatingFaceCropUUID = [(PHFaceCropChangeRequest *)self originatingFaceCropUUID];

  if (!originatingFaceCropUUID)
  {
    v20 = MEMORY[0x1E69BE3D0];
    originatingFaceUUID = [(PHFaceCropChangeRequest *)self originatingFaceUUID];
    managedObjectContext = [libraryCopy managedObjectContext];
    v23 = [v20 detectedFaceWithUUID:originatingFaceUUID inManagedObjectContext:managedObjectContext];

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

    _mutablePersonObjectIDsAndUUIDs = [(PHFaceCropChangeRequest *)self _mutablePersonObjectIDsAndUUIDs];
    firstObject = [_mutablePersonObjectIDsAndUUIDs firstObject];

    v28 = MEMORY[0x1E69BE608];
    managedObjectContext2 = [libraryCopy managedObjectContext];
    v30 = [v28 personWithUUID:firstObject inManagedObjectContext:managedObjectContext2];

    if (!v24)
    {
      goto LABEL_39;
    }

    rejectedPersons = [v23 rejectedPersons];
    v32 = [rejectedPersons containsObject:v30];

    if (v32)
    {
      v55 = v23;
      v58 = firstObject;
      v33 = v30;
      v34 = 2;
LABEL_19:
      v35 = MEMORY[0x1E69BE410];
      uuid = [(PHChangeRequest *)self uuid];
      resourceData = [(PHFaceCropChangeRequest *)self resourceData];
      v11 = [v35 insertIntoPhotoLibrary:libraryCopy withUUID:uuid resourceData:resourceData type:v34];

      if (v11)
      {
        [v11 setAsset:v24];
        v30 = v33;
        if (v34 == 2)
        {
          v23 = v55;
          v38 = [v55 associatedPersonForFaceOrTorso:1 orTemporal:0];
          invalidMergeCandidates = [v30 invalidMergeCandidates];
          v40 = [invalidMergeCandidates containsObject:v38];

          if (v40)
          {
            personUUID = [v38 personUUID];
            [v11 setInvalidMergeCandidatePersonUUID:personUUID];
          }

          v42 = 1;
          firstObject = v58;
        }

        else
        {
          v42 = 1;
          v23 = v55;
          firstObject = v58;
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
      firstObject = v58;
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
          v58 = firstObject;
          v34 = 1;
LABEL_49:
          v33 = v30;

          goto LABEL_19;
        }

        if ([v23 nameSource] == 3)
        {
          v55 = v23;
          v58 = firstObject;
          v34 = 3;
          goto LABEL_49;
        }

        v61 = MEMORY[0x1E696AEC0];
        namingDescription = [v23 namingDescription];
        pointerDescription = [v30 pointerDescription];
        v60 = [v61 stringWithFormat:@"Cannot create face crop for face %@ with invalid nameSource for user-verified person %@", namingDescription, pointerDescription];

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
        if (error)
        {
          if (!v14)
          {
            v47 = MEMORY[0x1E696ABC0];
            originatingFaceUUID2 = [(PHFaceCropChangeRequest *)self originatingFaceUUID];
            v14 = [v47 ph_genericErrorWithLocalizedDescription:{@"Unable to create face crops for originating face UUID %@ and person UUID %@", originatingFaceUUID2, firstObject}];
          }

          v49 = v14;
          v42 = 0;
          v11 = 0;
          *error = v14;
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
          v58 = firstObject;
          v34 = 5;
          goto LABEL_49;
        }

        v59 = MEMORY[0x1E696AEC0];
        namingDescription2 = [v23 namingDescription];
        pointerDescription2 = [v30 pointerDescription];
        v60 = [v59 stringWithFormat:@"Cannot create face crop for face %@ with invalid nameSource for graph-verified person %@", namingDescription2, pointerDescription2];

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
  uuid2 = [(PHChangeRequest *)self uuid];
  resourceData2 = [(PHFaceCropChangeRequest *)self resourceData];
  v11 = [v8 insertIntoPhotoLibrary:libraryCopy withUUID:uuid2 resourceData:resourceData2 type:{-[PHFaceCropChangeRequest type](self, "type")}];

  [v11 setState:0];
  personHelper = [(PHFaceCropChangeRequest *)self personHelper];
  mutableObjectIDsAndUUIDs = [personHelper mutableObjectIDsAndUUIDs];
  v14 = [mutableObjectIDsAndUUIDs count];

  if (!v14)
  {

    goto LABEL_45;
  }

  [personHelper setAllowsInsert:1];
  [personHelper setDestinationEntityName:@"Person"];
  [personHelper setDestinationUUIDKeyPath:@"personUUID"];
  [personHelper setIsDestinationObjectValid:&__block_literal_global_17808];
  v62 = 0;
  v15 = [personHelper applyMutationsToManagedObjectToOneRelationship:v11 error:&v62];
  v14 = v62;

  if (!error || (v15 & 1) != 0)
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
    originatingFaceCropUUID2 = [(PHFaceCropChangeRequest *)self originatingFaceCropUUID];
    v14 = [v16 ph_genericErrorWithLocalizedDescription:{@"Unable to create face crops from originating face crop with UUID %@", originatingFaceCropUUID2}];
  }

  v18 = v14;
  v19 = 0;
  *error = v14;
LABEL_46:
  v50 = v19;

  return v19;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  originatingFaceCropUUID = [(PHFaceCropChangeRequest *)self originatingFaceCropUUID];

  if (originatingFaceCropUUID)
  {
    return 1;
  }

  originatingFaceUUID = [(PHFaceCropChangeRequest *)self originatingFaceUUID];

  if (originatingFaceUUID)
  {
    _mutablePersonObjectIDsAndUUIDs = [(PHFaceCropChangeRequest *)self _mutablePersonObjectIDsAndUUIDs];
    v10 = [_mutablePersonObjectIDsAndUUIDs count];

    if (v10 == 1)
    {
      return 1;
    }

    if (error)
    {
      v11 = @"All FaceCrops require a person";
LABEL_9:
      v12 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:v11];
      v13 = v12;
      result = 0;
      *error = v12;
      return result;
    }
  }

  else if (error)
  {
    v11 = @"All FaceCrops require an originating face UUID";
    goto LABEL_9;
  }

  return 0;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];

  faceHelper = [(PHFaceCropChangeRequest *)self faceHelper];
  [faceHelper encodeToXPCDict:dictCopy];

  personHelper = [(PHFaceCropChangeRequest *)self personHelper];
  [personHelper encodeToXPCDict:dictCopy];

  originatingFaceUUID = [(PHFaceCropChangeRequest *)self originatingFaceUUID];
  PLXPCDictionarySetString();

  originatingFaceCropUUID = [(PHFaceCropChangeRequest *)self originatingFaceCropUUID];
  PLXPCDictionarySetString();
}

- (PHFaceCropChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v23.receiver = self;
  v23.super_class = PHFaceCropChangeRequest;
  v11 = [(PHChangeRequest *)&v23 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"face" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      faceHelper = v11->_faceHelper;
      v11->_faceHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"person" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
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

- (void)setType:(signed __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"type"];
}

- (signed)type
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"type"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setState:(signed __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"state"];
}

- (signed)state
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"state"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setResourceData:(id)data
{
  dataCopy = data;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dataCopy)
  {
    [mutations setObject:dataCopy forKeyedSubscript:@"resourceData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"resourceData"];
  }

  else
  {
    [mutations removeObjectForKey:@"resourceData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"resourceData"];
  }
}

- (NSData)resourceData
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"resourceData"];

  return v5;
}

- (void)setFace:(id)face
{
  faceCopy = face;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHFaceCropChangeRequest.m" lineNumber:160 description:{@"face has incorrect class: %@", faceCopy}];
    }
  }

  v5 = PLObjectIDOrUUIDFromPHObject(faceCopy);
  _mutableFaceObjectIDsAndUUIDs = [(PHFaceCropChangeRequest *)self _mutableFaceObjectIDsAndUUIDs];
  [_mutableFaceObjectIDsAndUUIDs removeAllObjects];

  _mutableFaceObjectIDsAndUUIDs2 = [(PHFaceCropChangeRequest *)self _mutableFaceObjectIDsAndUUIDs];
  [_mutableFaceObjectIDsAndUUIDs2 addObject:v5];
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
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_personHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    [(PHRelationshipChangeRequestHelper *)self->_personHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_personHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    personHelper = self->_personHelper;
    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)personHelper originalObjectIDs];
    v6 = [originalObjectIDs2 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)personHelper setMutableObjectIDsAndUUIDs:v6];
  }
}

- (void)_prepareFaceHelperIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_faceHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    [(PHRelationshipChangeRequestHelper *)self->_faceHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_faceHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    faceHelper = self->_faceHelper;
    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)faceHelper originalObjectIDs];
    v6 = [originalObjectIDs2 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)faceHelper setMutableObjectIDsAndUUIDs:v6];
  }
}

- (PHObjectPlaceholder)placeholderForCreatedFaceCrop
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (PHFaceCropChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = PHFaceCropChangeRequest;
  v8 = [(PHChangeRequest *)&v16 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
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

+ (void)deleteFaceCrops:(id)crops
{
  cropsCopy = crops;
  v4 = [(PHObjectDeleteRequest *)PHFaceCropDeleteRequest deleteRequestsForObjects:cropsCopy ofType:objc_opt_class() forSelector:a2];
}

+ (id)creationRequestsForFaceCropsWithOriginatingFace:(id)face resourceData:(id)data
{
  v33 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  dataCopy = data;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  photoLibrary = [faceCopy photoLibrary];
  managedObjectContextForCurrentQueueQoS = [photoLibrary managedObjectContextForCurrentQueueQoS];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __88__PHFaceCropChangeRequest_creationRequestsForFaceCropsWithOriginatingFace_resourceData___block_invoke;
  v28[3] = &unk_1E75AB248;
  v10 = faceCopy;
  v29 = v10;
  v30 = managedObjectContextForCurrentQueueQoS;
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
        v19 = [self _creationRequestForFaceCropWithOriginatingFace:v10 resourceData:dataCopy personLocalIdentifier:v18];
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

+ (id)_creationRequestForFaceCropWithOriginatingFace:(id)face resourceData:(id)data person:(id)person
{
  dataCopy = data;
  faceCopy = face;
  localIdentifier = [person localIdentifier];
  v11 = [self _creationRequestForFaceCropWithOriginatingFace:faceCopy resourceData:dataCopy personLocalIdentifier:localIdentifier];

  return v11;
}

+ (id)_creationRequestForFaceCropWithOriginatingFace:(id)face resourceData:(id)data personLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  faceCopy = face;
  initForNewObject = [[self alloc] initForNewObject];
  [initForNewObject setResourceData:dataCopy];

  uuid = [faceCopy uuid];

  [initForNewObject setOriginatingFaceUUID:uuid];
  _mutablePersonObjectIDsAndUUIDs = [initForNewObject _mutablePersonObjectIDsAndUUIDs];
  v14 = [PHObject uuidFromLocalIdentifier:identifierCopy];

  [_mutablePersonObjectIDsAndUUIDs addObject:v14];

  return initForNewObject;
}

+ (id)creationRequestForFaceCropCopyFromFaceCrop:(id)crop withType:(signed __int16)type onPerson:(id)person
{
  typeCopy = type;
  personCopy = person;
  cropCopy = crop;
  initForNewObject = [[self alloc] initForNewObject];
  uuid = [cropCopy uuid];
  [initForNewObject setOriginatingFaceCropUUID:uuid];

  resourceData = [cropCopy resourceData];

  [initForNewObject setResourceData:resourceData];
  [initForNewObject setType:typeCopy];
  _mutablePersonObjectIDsAndUUIDs = [initForNewObject _mutablePersonObjectIDsAndUUIDs];
  v14 = PLObjectIDOrUUIDFromPHObject(personCopy);

  [_mutablePersonObjectIDsAndUUIDs addObject:v14];

  return initForNewObject;
}

@end