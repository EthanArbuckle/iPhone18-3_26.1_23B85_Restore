@interface PHFaceChangeRequest
+ (id)changeRequestForFace:(id)face;
+ (id)creationRequestForFace;
+ (void)deleteFaces:(id)faces;
- (BOOL)_associateFace:(id)face withPersonInPhotoLibrary:(id)library error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)hasFaceMask;
- (BOOL)hasSmile;
- (BOOL)isHidden;
- (BOOL)isInTrash;
- (BOOL)isInVIPModel;
- (BOOL)isLeftEyeClosed;
- (BOOL)isRightEyeClosed;
- (BOOL)manual;
- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error;
- (CGRect)gazeRect;
- (NSString)groupingIdentifier;
- (NSString)thumbnailIdentifier;
- (PHFaceChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHFaceChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (PHObjectPlaceholder)placeholderForCreatedFace;
- (double)blurScore;
- (double)bodyCenterX;
- (double)bodyCenterY;
- (double)bodyHeight;
- (double)bodyWidth;
- (double)centerX;
- (double)centerY;
- (double)duration;
- (double)gazeCenterX;
- (double)gazeCenterY;
- (double)poseYaw;
- (double)quality;
- (double)roll;
- (double)size;
- (double)startTime;
- (float)gazeAngle;
- (float)gazeConfidence;
- (id)_copyPersonWithPersonUUID:(id)d toLibrary:(id)library error:(id *)error;
- (id)adjustmentVersion;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (int64_t)clusterSequenceNumber;
- (int64_t)faceAlgorithmVersion;
- (int64_t)qualityMeasure;
- (int64_t)sourceHeight;
- (int64_t)sourceWidth;
- (int64_t)vuObservationID;
- (signed)detectionType;
- (unsigned)ageType;
- (unsigned)ethnicityType;
- (unsigned)eyeMakeupType;
- (unsigned)eyesState;
- (unsigned)faceExpressionType;
- (unsigned)facialHairType;
- (unsigned)gazeType;
- (unsigned)glassesType;
- (unsigned)hairColorType;
- (unsigned)hairType;
- (unsigned)headgearType;
- (unsigned)lipMakeupType;
- (unsigned)poseType;
- (unsigned)sexType;
- (unsigned)skintoneType;
- (unsigned)smileType;
- (void)associateFaceWithPersonUUID:(id)d;
- (void)encodeToXPCDict:(id)dict;
- (void)setAdjustmentVersion:(id)version;
- (void)setAgeType:(unsigned __int16)type;
- (void)setBlurScore:(double)score;
- (void)setBodyCenterX:(double)x;
- (void)setBodyCenterY:(double)y;
- (void)setBodyHeight:(double)height;
- (void)setBodyWidth:(double)width;
- (void)setCenterX:(double)x;
- (void)setCenterY:(double)y;
- (void)setClusterSequenceNumber:(int64_t)number;
- (void)setDetectionTraits:(id)traits;
- (void)setDetectionType:(signed __int16)type;
- (void)setDuration:(double)duration;
- (void)setEthnicityType:(unsigned __int16)type;
- (void)setEyeMakeupType:(unsigned __int16)type;
- (void)setEyesState:(unsigned __int16)state;
- (void)setFaceAlgorithmVersion:(int64_t)version;
- (void)setFaceExpressionType:(unsigned __int16)type;
- (void)setFaceprint:(id)faceprint;
- (void)setFacialHairType:(unsigned __int16)type;
- (void)setGazeAngle:(float)angle;
- (void)setGazeCenterX:(double)x;
- (void)setGazeCenterY:(double)y;
- (void)setGazeConfidence:(float)confidence;
- (void)setGazeRect:(CGRect)rect;
- (void)setGazeType:(unsigned __int16)type;
- (void)setGlassesType:(unsigned __int16)type;
- (void)setGroupingIdentifier:(id)identifier;
- (void)setHairColorType:(unsigned __int16)type;
- (void)setHairType:(unsigned __int16)type;
- (void)setHasFaceMask:(BOOL)mask;
- (void)setHasSmile:(BOOL)smile;
- (void)setHeadgearType:(unsigned __int16)type;
- (void)setHidden:(BOOL)hidden;
- (void)setInTrash:(BOOL)trash;
- (void)setIsInVIPModel:(BOOL)model;
- (void)setLeftEyeClosed:(BOOL)closed;
- (void)setLipMakeupType:(unsigned __int16)type;
- (void)setManual:(BOOL)manual;
- (void)setNameSource:(int64_t)source;
- (void)setPoseType:(unsigned __int16)type;
- (void)setPoseYaw:(double)yaw;
- (void)setQuality:(double)quality;
- (void)setQualityMeasure:(int64_t)measure;
- (void)setRightEyeClosed:(BOOL)closed;
- (void)setRoll:(double)roll;
- (void)setSexType:(unsigned __int16)type;
- (void)setShouldClearFaceCropGenerationState:(BOOL)state;
- (void)setSize:(double)size;
- (void)setSkintoneType:(unsigned __int16)type;
- (void)setSmileType:(unsigned __int16)type;
- (void)setSourceHeight:(int64_t)height;
- (void)setSourceWidth:(int64_t)width;
- (void)setStartTime:(double)time;
- (void)setThumbnailIdentifier:(id)identifier;
- (void)setVuObservationID:(int64_t)d;
@end

@implementation PHFaceChangeRequest

- (void)setShouldClearFaceCropGenerationState:(BOOL)state
{
  self->_shouldClearFaceCropGenerationState = state;
  if (state)
  {
    [(PHChangeRequest *)self didMutate];
  }
}

- (id)_copyPersonWithPersonUUID:(id)d toLibrary:(id)library error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  libraryCopy = library;
  managedObjectContext = [libraryCopy managedObjectContext];
  associatedPersonLibraryURL = self->_associatedPersonLibraryURL;
  if (associatedPersonLibraryURL)
  {
    v12 = [MEMORY[0x1E69BE670] newPhotoLibraryWithName:"-[PHFaceChangeRequest _copyPersonWithPersonUUID:toLibrary:error:]" loadedFromURL:associatedPersonLibraryURL options:0 error:0];
    v13 = 0;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = v13;
    v25 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = self->_associatedPersonLibraryURL;
      if (!v26)
      {
        v26 = @"SYSTEM";
      }

      *buf = 138412290;
      v37 = v26;
      _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "source photo library (%@) could not be opened", buf, 0xCu);
    }

    v27 = v24;
    goto LABEL_15;
  }

  v35[1] = 0;
  v12 = PLCreateShortLivedSystemPhotoLibrary();
  v13 = 0;
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  errorCopy = error;
  v14 = managedObjectContext;
  newTransferOptionsForPersonFromSystemToSyndication = [MEMORY[0x1E69BE4C8] newTransferOptionsForPersonFromSystemToSyndication];
  [newTransferOptionsForPersonFromSystemToSyndication setSkipContextSave:1];
  v16 = [objc_alloc(MEMORY[0x1E69BE4C0]) initWithSourceLibrary:v12 destinationLibrary:libraryCopy options:newTransferOptionsForPersonFromSystemToSyndication];
  v35[0] = 0;
  v17 = [v16 transferPersonWithUuid:dCopy error:v35];
  v18 = v35[0];
  v19 = dCopy;
  v20 = v18;
  if (v17)
  {
    v21 = v19;
    v22 = [MEMORY[0x1E69BE608] personWithUUID:? inManagedObjectContext:?];
    v23 = 0;
  }

  else
  {
    v21 = v19;
    v23 = v18;
    v28 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      associatedPersonUUID = self->_associatedPersonUUID;
      *buf = 138543618;
      v37 = associatedPersonUUID;
      v38 = 2112;
      v39 = v23;
      _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_ERROR, "transfer person failed for %{public}@: %@", buf, 0x16u);
    }

    v22 = 0;
  }

  v27 = v23;
  managedObjectContext = v14;
  dCopy = v21;
  v13 = v32;
  error = v34;
  if (!v22)
  {
LABEL_15:
    if (error)
    {
      v30 = v27;
      v22 = 0;
      *error = v27;
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (BOOL)_associateFace:(id)face withPersonInPhotoLibrary:(id)library error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  libraryCopy = library;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHFaceChangeRequest.m" lineNumber:423 description:{@"Invalid parameter not satisfying: %@", @"PLIsAssetsd()"}];
  }

  if (!self->_didSetAssociatedPersonUUID)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHFaceChangeRequest.m" lineNumber:424 description:{@"Invalid parameter not satisfying: %@", @"_didSetAssociatedPersonUUID"}];
  }

  if (self->_associatedPersonUUID)
  {
    managedObjectContext = [libraryCopy managedObjectContext];
    v12 = [MEMORY[0x1E69BE608] personWithUUID:self->_associatedPersonUUID inManagedObjectContext:managedObjectContext];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
    }

    else
    {
      associatedPersonUUID = self->_associatedPersonUUID;
      v33 = 0;
      v13 = [(PHFaceChangeRequest *)self _copyPersonWithPersonUUID:associatedPersonUUID toLibrary:libraryCopy error:&v33];
      v14 = v33;
      if (!v13)
      {
LABEL_16:
        v25 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          uuid = [faceCopy uuid];
          v27 = self->_associatedPersonUUID;
          *buf = 138543618;
          v35 = uuid;
          v36 = 2114;
          v37 = v27;
          _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Unable to associate face %{public}@ with target person %{public}@ (person not found)", buf, 0x16u);
        }

        if (error)
        {
          v28 = v14;
          v17 = 0;
          *error = v14;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_22;
      }
    }

    if ([v13 verifiedType] == -2)
    {
      mergeTargetPerson = [v13 mergeTargetPerson];

      v20 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v32 = libraryCopy;
        v21 = v14;
        errorCopy = error;
        v23 = self->_associatedPersonUUID;
        personUUID = [mergeTargetPerson personUUID];
        *buf = 138543618;
        v35 = v23;
        error = errorCopy;
        v14 = v21;
        libraryCopy = v32;
        v36 = 2114;
        v37 = personUUID;
        _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_INFO, "Attempt to associate a face with a tombstone person %{public}@, will associate with merge target %{public}@", buf, 0x16u);
      }

      if (!mergeTargetPerson)
      {
        goto LABEL_16;
      }
    }

    else
    {
      mergeTargetPerson = v13;
    }

    [faceCopy setAssociatedPerson:mergeTargetPerson];

    v17 = 1;
LABEL_22:

    goto LABEL_23;
  }

  v15 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    uuid2 = [faceCopy uuid];
    *buf = 138543362;
    v35 = uuid2;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_INFO, "setting person relationship to nil for face %{public}@", buf, 0xCu);
  }

  [faceCopy setAssociatedPerson:0];
  v17 = 1;
LABEL_23:

  return v17;
}

- (void)associateFaceWithPersonUUID:(id)d
{
  dCopy = d;
  [(PHChangeRequest *)self didMutate];
  self->_didSetAssociatedPersonUUID = 1;
  associatedPersonUUID = self->_associatedPersonUUID;
  self->_associatedPersonUUID = dCopy;
}

- (void)setNameSource:(int64_t)source
{
  sourceCopy = source;
  [(PHChangeRequest *)self didMutate];
  self->_didSetNameSource = 1;
  self->_nameSource = sourceCopy;
}

- (void)setDetectionTraits:(id)traits
{
  traitsCopy = traits;
  [(PHChangeRequest *)self didMutate];
  array = traitsCopy;
  self->_didSetDetectionTraits = 1;
  if (!traitsCopy)
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v6 = array;
  [(NSMutableArray *)self->_detectionTraits setArray:array];
}

- (CGRect)gazeRect
{
  [MEMORY[0x1E69BE3D0] cgRectFromGazeRectString:self->_gazeRectString];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setGazeRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PHChangeRequest *)self didMutate];
  self->_didSetGazeRect = 1;
  self->_gazeRectString = [MEMORY[0x1E69BE3D0] stringFromGazeRect:{x, y, width, height}];

  MEMORY[0x1EEE66BB8]();
}

- (void)setFaceprint:(id)faceprint
{
  faceprintCopy = faceprint;
  [(PHChangeRequest *)self didMutate];
  self->_didSetFaceprint = 1;
  faceprint = self->_faceprint;
  self->_faceprint = faceprintCopy;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE3D0];
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
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create face"];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v9 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v11];
  }

  return v8;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  detectionType = [(PHFaceChangeRequest *)self detectionType];
  v6 = detectionType;
  if (error && detectionType == 2)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A278];
    v11[0] = @"PHDetectionTypePet is not a valid value to assign to PHFace.detectionType";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3111 userInfo:v8];
  }

  return v6 != 2;
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  libraryCopy = library;
  nameSource = [objectCopy nameSource];
  helper = [(PHChangeRequest *)self helper];
  v59 = 0;
  v11 = [helper applyMutationsToManagedObject:objectCopy error:&v59];
  v12 = v59;

  if (!v11)
  {
    v42 = 0;
    goto LABEL_38;
  }

  if (self->_didSetNameSource)
  {
    [objectCopy setEffectiveNameSource:self->_nameSource];
  }

  if ([objectCopy effectiveNameSource] == 1 && nameSource != 1)
  {
    [objectCopy setConfirmedFaceCropGenerationState:1];
  }

  if (self->_didSetDetectionTraits)
  {
    v13 = [MEMORY[0x1E695DFA8] set];
    managedObjectContext = [objectCopy managedObjectContext];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v48 = objectCopy;
    detectionTraits = [objectCopy detectionTraits];
    v16 = [detectionTraits countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v56;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v56 != v18)
          {
            objc_enumerationMutation(detectionTraits);
          }

          [managedObjectContext deleteObject:*(*(&v55 + 1) + 8 * i)];
        }

        v17 = [detectionTraits countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v17);
    }

    v45 = v12;
    v47 = libraryCopy;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    selfCopy = self;
    obj = self->_detectionTraits;
    v20 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v52;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v51 + 1) + 8 * j);
          v25 = MEMORY[0x1E69BE3E8];
          type = [v24 type];
          value = [v24 value];
          [v24 score];
          v29 = v28;
          [v24 startTime];
          v31 = v30;
          [v24 duration];
          v33 = v32;
          thumbnailIdentifier = [v24 thumbnailIdentifier];
          v35 = [v25 insertIntoManagedObjectContext:managedObjectContext type:type value:value score:thumbnailIdentifier startTime:v29 duration:v31 thumbnailIdentifier:v33];

          [v13 addObject:v35];
        }

        v21 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v21);
    }

    objectCopy = v48;
    [v48 setDetectionTraits:v13];

    self = selfCopy;
    libraryCopy = v47;
    v12 = v45;
  }

  if (self->_didSetFaceprint)
  {
    [objectCopy removeFaceprint];
    if (self->_faceprint)
    {
      v36 = MEMORY[0x1E69BE3E0];
      managedObjectContext2 = [objectCopy managedObjectContext];
      v38 = [v36 insertInManagedObjectContext:managedObjectContext2];

      [v38 setFace:objectCopy];
      faceprintData = [(PHFaceprint *)self->_faceprint faceprintData];
      [v38 setData:faceprintData];

      [v38 setFaceprintVersion:{-[PHFaceprint faceprintVersion](self->_faceprint, "faceprintVersion")}];
      [objectCopy setFaceprint:v38];
    }
  }

  if (self->_didSetAssociatedPersonUUID)
  {
    v50 = v12;
    v40 = [(PHFaceChangeRequest *)self _associateFace:objectCopy withPersonInPhotoLibrary:libraryCopy error:&v50];
    v41 = v50;

    if (self->_didSetGazeRect)
    {
      [objectCopy setGazeRectString:self->_gazeRectString];
      if (!v40)
      {
LABEL_29:
        v42 = 0;
        v12 = v41;
        goto LABEL_38;
      }
    }

    else if (!v40)
    {
      goto LABEL_29;
    }

    v12 = v41;
  }

  else if (self->_didSetGazeRect)
  {
    [objectCopy setGazeRectString:self->_gazeRectString];
  }

  if (self->_shouldClearFaceCropGenerationState)
  {
    [objectCopy setConfirmedFaceCropGenerationState:0];
    v43 = [MEMORY[0x1E695DFD8] set];
    [objectCopy setRejectedPersonsNeedingFaceCrops:v43];
  }

  [objectCopy fixAssetRelationshipsForFaceTorsoOrTemporal];
  [objectCopy fixPersonRelationshipsForFaceTorsoOrTemporal];
  v42 = 1;
LABEL_38:

  return v42;
}

- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v20 = 0;
  v8 = [helper validateMutationsToManagedObject:objectCopy error:&v20];

  v9 = v20;
  if (v8)
  {
    helper2 = [(PHChangeRequest *)self helper];
    mutations = [helper2 mutations];
    v12 = [mutations objectForKeyedSubscript:@"detectionType"];
    v13 = [v12 isEqual:&unk_1F102CFF8];

    if (!v13)
    {
      v18 = 1;
      goto LABEL_8;
    }

    v14 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A278];
    v22[0] = @"PHDetectionTypePet is not a valid value to assign to DetectedFace.detectionType";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v16 = [v14 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3111 userInfo:v15];

    v9 = v16;
  }

  if (error)
  {
    v17 = v9;
    v18 = 0;
    *error = v9;
  }

  else
  {
    v18 = 0;
  }

LABEL_8:

  return v18;
}

- (void)setThumbnailIdentifier:(id)identifier
{
  identifierCopy = identifier;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (identifierCopy)
  {
    [mutations setObject:identifierCopy forKeyedSubscript:@"thumbnailIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"thumbnailIdentifier"];
  }

  else
  {
    [mutations removeObjectForKey:@"thumbnailIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"thumbnailIdentifier"];
  }
}

- (NSString)thumbnailIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"thumbnailIdentifier"];

  return v5;
}

- (void)setAdjustmentVersion:(id)version
{
  versionCopy = version;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (versionCopy)
  {
    [mutations setObject:versionCopy forKeyedSubscript:@"adjustmentVersion"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"adjustmentVersion"];
  }

  else
  {
    [mutations removeObjectForKey:@"adjustmentVersion"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"adjustmentVersion"];
  }
}

- (id)adjustmentVersion
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"adjustmentVersion"];

  return v5;
}

- (void)setGroupingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (identifierCopy)
  {
    [mutations setObject:identifierCopy forKeyedSubscript:@"groupingIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"groupingIdentifier"];
  }

  else
  {
    [mutations removeObjectForKey:@"groupingIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"groupingIdentifier"];
  }
}

- (NSString)groupingIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"groupingIdentifier"];

  return v5;
}

- (void)setDuration:(double)duration
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"duration"];
}

- (double)duration
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"duration"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setStartTime:(double)time
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"startTime"];
}

- (double)startTime
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"startTime"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setGazeConfidence:(float)confidence
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  *&v6 = confidence;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v9 forKeyedSubscript:@"gazeConfidence"];
}

- (float)gazeConfidence
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"gazeConfidence"];

  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (void)setGazeAngle:(float)angle
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  *&v6 = angle;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v9 forKeyedSubscript:@"gazeAngle"];
}

- (float)gazeAngle
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"gazeAngle"];

  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (void)setGazeCenterY:(double)y
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"gazeCenterY"];
}

- (double)gazeCenterY
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"gazeCenterY"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setGazeCenterX:(double)x
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:x];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"gazeCenterX"];
}

- (double)gazeCenterX
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"gazeCenterX"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setGazeType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"gazeType"];
}

- (unsigned)gazeType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"gazeType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setHasFaceMask:(BOOL)mask
{
  maskCopy = mask;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:maskCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"hasFaceMask"];
}

- (BOOL)hasFaceMask
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"hasFaceMask"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setEthnicityType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"ethnicityType"];
}

- (unsigned)ethnicityType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"ethnicityType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setSkintoneType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"skintoneType"];
}

- (unsigned)skintoneType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"skintoneType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setPoseType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"poseType"];
}

- (unsigned)poseType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"poseType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setHairType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"hairType"];
}

- (unsigned)hairType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"hairType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setHeadgearType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"headgearType"];
}

- (unsigned)headgearType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"headgearType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setFaceExpressionType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"faceExpressionType"];
}

- (unsigned)faceExpressionType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"faceExpressionType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setLipMakeupType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"lipMakeupType"];
}

- (unsigned)lipMakeupType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"lipMakeupType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setEyeMakeupType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"eyeMakeupType"];
}

- (unsigned)eyeMakeupType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"eyeMakeupType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setGlassesType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"glassesType"];
}

- (unsigned)glassesType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"glassesType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setHairColorType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"hairColorType"];
}

- (unsigned)hairColorType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"hairColorType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setFacialHairType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"facialHairType"];
}

- (unsigned)facialHairType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"facialHairType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setSmileType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"smileType"];
}

- (unsigned)smileType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"smileType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setEyesState:(unsigned __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"eyesState"];
}

- (unsigned)eyesState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"eyesState"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setSexType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"genderType"];
}

- (unsigned)sexType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"genderType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setAgeType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"ageType"];
}

- (unsigned)ageType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"ageType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setVuObservationID:(int64_t)d
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:d];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"vuObservationID"];
}

- (int64_t)vuObservationID
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"vuObservationID"];

  integerValue = [v5 integerValue];
  return integerValue;
}

- (void)setQuality:(double)quality
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:quality];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"quality"];
}

- (double)quality
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"quality"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setQualityMeasure:(int64_t)measure
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:measure];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"qualityMeasure"];
}

- (int64_t)qualityMeasure
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"qualityMeasure"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setClusterSequenceNumber:(int64_t)number
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:number];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"clusterSequenceNumber"];
}

- (int64_t)clusterSequenceNumber
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"clusterSequenceNumber"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setFaceAlgorithmVersion:(int64_t)version
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:version];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"faceAlgorithmVersion"];
}

- (int64_t)faceAlgorithmVersion
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"faceAlgorithmVersion"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setPoseYaw:(double)yaw
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:yaw];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"poseYaw"];
}

- (double)poseYaw
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"poseYaw"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setRightEyeClosed:(BOOL)closed
{
  closedCopy = closed;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:closedCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"isRightEyeClosed"];
}

- (BOOL)isRightEyeClosed
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"isRightEyeClosed"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setLeftEyeClosed:(BOOL)closed
{
  closedCopy = closed;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:closedCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"isLeftEyeClosed"];
}

- (BOOL)isLeftEyeClosed
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"isLeftEyeClosed"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setBlurScore:(double)score
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:score];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"blurScore"];
}

- (double)blurScore
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"blurScore"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setHasSmile:(BOOL)smile
{
  smileCopy = smile;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:smileCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"hasSmile"];
}

- (BOOL)hasSmile
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"hasSmile"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setManual:(BOOL)manual
{
  manualCopy = manual;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:manualCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"manual"];
}

- (BOOL)manual
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"manual"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setInTrash:(BOOL)trash
{
  trashCopy = trash;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:trashCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"isInTrash"];
}

- (BOOL)isInTrash
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"isInTrash"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:hiddenCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"hidden"];
}

- (BOOL)isHidden
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"hidden"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setIsInVIPModel:(BOOL)model
{
  modelCopy = model;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:modelCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"vipModelType"];
}

- (BOOL)isInVIPModel
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"vipModelType"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setRoll:(double)roll
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:roll];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"roll"];
}

- (double)roll
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"roll"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setSourceHeight:(int64_t)height
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:height];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"sourceHeight"];
}

- (int64_t)sourceHeight
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"sourceHeight"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setSourceWidth:(int64_t)width
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:width];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"sourceWidth"];
}

- (int64_t)sourceWidth
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"sourceWidth"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setDetectionType:(signed __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"detectionType"];
}

- (signed)detectionType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"detectionType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setBodyHeight:(double)height
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"bodyHeight"];
}

- (double)bodyHeight
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"bodyHeight"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setBodyWidth:(double)width
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"bodyWidth"];
}

- (double)bodyWidth
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"bodyWidth"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setBodyCenterY:(double)y
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"bodyCenterY"];
}

- (double)bodyCenterY
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"bodyCenterY"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setBodyCenterX:(double)x
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:x];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"bodyCenterX"];
}

- (double)bodyCenterX
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"bodyCenterX"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setCenterY:(double)y
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"centerY"];
}

- (double)centerY
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"centerY"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setCenterX:(double)x
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:x];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"centerX"];
}

- (double)centerX
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"centerX"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setSize:(double)size
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:size];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"size"];
}

- (double)size
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"size"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (PHObjectPlaceholder)placeholderForCreatedFace
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)dict
{
  v20 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];

  xpc_dictionary_set_BOOL(dictCopy, "didSetDetectionTraits", self->_didSetDetectionTraits);
  if (self->_didSetDetectionTraits)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_detectionTraits, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_detectionTraits;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          propertyListRepresentation = [*(*(&v15 + 1) + 8 * i) propertyListRepresentation];
          [v6 addObject:propertyListRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    PLXPCDictionarySetArray();
  }

  xpc_dictionary_set_BOOL(dictCopy, "didSetFaceprint", self->_didSetFaceprint);
  if (self->_didSetFaceprint)
  {
    faceprint = self->_faceprint;
    if (faceprint)
    {
      dictionaryRepresentation = [(PHFaceprint *)faceprint dictionaryRepresentation];
      PLXPCDictionarySetDictionary();
    }
  }

  xpc_dictionary_set_BOOL(dictCopy, "shouldClearFaceCropGenerationState", self->_shouldClearFaceCropGenerationState);
  xpc_dictionary_set_BOOL(dictCopy, "didSetAssociatedPersonUUID", self->_didSetAssociatedPersonUUID);
  if (self->_didSetAssociatedPersonUUID)
  {
    PLXPCDictionarySetString();
    PLXPCDictionarySetURL();
  }

  xpc_dictionary_set_BOOL(dictCopy, "didSetGazeRect", self->_didSetGazeRect);
  if (self->_didSetGazeRect)
  {
    PLXPCDictionarySetString();
  }

  xpc_dictionary_set_BOOL(dictCopy, "didSetNameSource", self->_didSetNameSource);
  if (self->_didSetNameSource)
  {
    xpc_dictionary_set_int64(dictCopy, "nameSource", self->_nameSource);
  }
}

- (PHFaceChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  v42 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v40.receiver = self;
  v40.super_class = PHFaceChangeRequest;
  v11 = [(PHChangeRequest *)&v40 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v11->_didSetDetectionTraits = xpc_dictionary_get_BOOL(dictCopy, "didSetDetectionTraits");
      v11->_didSetFaceprint = xpc_dictionary_get_BOOL(dictCopy, "didSetFaceprint");
      v11->_didSetAssociatedPersonUUID = xpc_dictionary_get_BOOL(dictCopy, "didSetAssociatedPersonUUID");
      v11->_didSetGazeRect = xpc_dictionary_get_BOOL(dictCopy, "didSetGazeRect");
      v11->_didSetNameSource = xpc_dictionary_get_BOOL(dictCopy, "didSetNameSource");
      if (v11->_didSetDetectionTraits)
      {
        v35 = authorizationCopy;
        v14 = PLArrayFromXPCDictionary();
        v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v37;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v37 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [[PHDetectionTrait alloc] initWithPropertyListRepresentation:*(*(&v36 + 1) + 8 * i)];
              [(NSMutableArray *)v15 addObject:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
          }

          while (v18);
        }

        detectionTraits = v11->_detectionTraits;
        v11->_detectionTraits = v15;
        v23 = v15;

        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [requestCopy recordUpdateRequest:v11];

        authorizationCopy = v35;
      }

      if (v11->_didSetFaceprint)
      {
        v24 = PLDictionaryFromXPCDictionary();
        if (v24)
        {
          v25 = [[PHFaceprint alloc] initWithDictionaryRepresentation:v24];
          faceprint = v11->_faceprint;
          v11->_faceprint = v25;
        }

        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [requestCopy recordUpdateRequest:v11];
      }

      v27 = xpc_dictionary_get_BOOL(dictCopy, "shouldClearFaceCropGenerationState");
      v11->_shouldClearFaceCropGenerationState = v27;
      if (v27)
      {
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [requestCopy recordUpdateRequest:v11];
      }

      if (v11->_didSetAssociatedPersonUUID)
      {
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [requestCopy recordUpdateRequest:v11];
        v28 = PLStringFromXPCDictionary();
        associatedPersonUUID = v11->_associatedPersonUUID;
        v11->_associatedPersonUUID = v28;

        v30 = PLURLFromXPCDictionary();
        associatedPersonLibraryURL = v11->_associatedPersonLibraryURL;
        v11->_associatedPersonLibraryURL = v30;
      }

      if (v11->_didSetGazeRect)
      {
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [requestCopy recordUpdateRequest:v11];
        v32 = PLStringFromXPCDictionary();
        gazeRectString = v11->_gazeRectString;
        v11->_gazeRectString = v32;
      }

      if (v11->_didSetNameSource)
      {
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [requestCopy recordUpdateRequest:v11];
        v11->_nameSource = xpc_dictionary_get_int64(dictCopy, "nameSource");
      }
    }
  }

  return v11;
}

- (PHFaceChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = PHFaceChangeRequest;
  v8 = [(PHChangeRequest *)&v14 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    detectionTraits = v8->_detectionTraits;
    v8->_detectionTraits = v11;
  }

  return v8;
}

- (id)initForNewObject
{
  v8.receiver = self;
  v8.super_class = PHFaceChangeRequest;
  v2 = [(PHChangeRequest *)&v8 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    detectionTraits = v2->_detectionTraits;
    v2->_detectionTraits = v5;
  }

  return v2;
}

+ (void)deleteFaces:(id)faces
{
  facesCopy = faces;
  v4 = [(PHObjectDeleteRequest *)PHFaceDeleteRequest deleteRequestsForObjects:facesCopy ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForFace:(id)face
{
  if (face)
  {
    v4 = [PHChangeRequestHelper changeRequestForObject:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)creationRequestForFace
{
  initForNewObject = [[PHFaceChangeRequest alloc] initForNewObject];

  return initForNewObject;
}

@end