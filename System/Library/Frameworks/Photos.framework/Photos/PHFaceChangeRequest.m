@interface PHFaceChangeRequest
+ (id)changeRequestForFace:(id)a3;
+ (id)creationRequestForFace;
+ (void)deleteFaces:(id)a3;
- (BOOL)_associateFace:(id)a3 withPersonInPhotoLibrary:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)hasFaceMask;
- (BOOL)hasSmile;
- (BOOL)isHidden;
- (BOOL)isInTrash;
- (BOOL)isInVIPModel;
- (BOOL)isLeftEyeClosed;
- (BOOL)isRightEyeClosed;
- (BOOL)manual;
- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4;
- (CGRect)gazeRect;
- (NSString)groupingIdentifier;
- (NSString)thumbnailIdentifier;
- (PHFaceChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHFaceChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
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
- (id)_copyPersonWithPersonUUID:(id)a3 toLibrary:(id)a4 error:(id *)a5;
- (id)adjustmentVersion;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
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
- (void)associateFaceWithPersonUUID:(id)a3;
- (void)encodeToXPCDict:(id)a3;
- (void)setAdjustmentVersion:(id)a3;
- (void)setAgeType:(unsigned __int16)a3;
- (void)setBlurScore:(double)a3;
- (void)setBodyCenterX:(double)a3;
- (void)setBodyCenterY:(double)a3;
- (void)setBodyHeight:(double)a3;
- (void)setBodyWidth:(double)a3;
- (void)setCenterX:(double)a3;
- (void)setCenterY:(double)a3;
- (void)setClusterSequenceNumber:(int64_t)a3;
- (void)setDetectionTraits:(id)a3;
- (void)setDetectionType:(signed __int16)a3;
- (void)setDuration:(double)a3;
- (void)setEthnicityType:(unsigned __int16)a3;
- (void)setEyeMakeupType:(unsigned __int16)a3;
- (void)setEyesState:(unsigned __int16)a3;
- (void)setFaceAlgorithmVersion:(int64_t)a3;
- (void)setFaceExpressionType:(unsigned __int16)a3;
- (void)setFaceprint:(id)a3;
- (void)setFacialHairType:(unsigned __int16)a3;
- (void)setGazeAngle:(float)a3;
- (void)setGazeCenterX:(double)a3;
- (void)setGazeCenterY:(double)a3;
- (void)setGazeConfidence:(float)a3;
- (void)setGazeRect:(CGRect)a3;
- (void)setGazeType:(unsigned __int16)a3;
- (void)setGlassesType:(unsigned __int16)a3;
- (void)setGroupingIdentifier:(id)a3;
- (void)setHairColorType:(unsigned __int16)a3;
- (void)setHairType:(unsigned __int16)a3;
- (void)setHasFaceMask:(BOOL)a3;
- (void)setHasSmile:(BOOL)a3;
- (void)setHeadgearType:(unsigned __int16)a3;
- (void)setHidden:(BOOL)a3;
- (void)setInTrash:(BOOL)a3;
- (void)setIsInVIPModel:(BOOL)a3;
- (void)setLeftEyeClosed:(BOOL)a3;
- (void)setLipMakeupType:(unsigned __int16)a3;
- (void)setManual:(BOOL)a3;
- (void)setNameSource:(int64_t)a3;
- (void)setPoseType:(unsigned __int16)a3;
- (void)setPoseYaw:(double)a3;
- (void)setQuality:(double)a3;
- (void)setQualityMeasure:(int64_t)a3;
- (void)setRightEyeClosed:(BOOL)a3;
- (void)setRoll:(double)a3;
- (void)setSexType:(unsigned __int16)a3;
- (void)setShouldClearFaceCropGenerationState:(BOOL)a3;
- (void)setSize:(double)a3;
- (void)setSkintoneType:(unsigned __int16)a3;
- (void)setSmileType:(unsigned __int16)a3;
- (void)setSourceHeight:(int64_t)a3;
- (void)setSourceWidth:(int64_t)a3;
- (void)setStartTime:(double)a3;
- (void)setThumbnailIdentifier:(id)a3;
- (void)setVuObservationID:(int64_t)a3;
@end

@implementation PHFaceChangeRequest

- (void)setShouldClearFaceCropGenerationState:(BOOL)a3
{
  self->_shouldClearFaceCropGenerationState = a3;
  if (a3)
  {
    [(PHChangeRequest *)self didMutate];
  }
}

- (id)_copyPersonWithPersonUUID:(id)a3 toLibrary:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 managedObjectContext];
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
  v33 = a5;
  v14 = v10;
  v15 = [MEMORY[0x1E69BE4C8] newTransferOptionsForPersonFromSystemToSyndication];
  [v15 setSkipContextSave:1];
  v16 = [objc_alloc(MEMORY[0x1E69BE4C0]) initWithSourceLibrary:v12 destinationLibrary:v9 options:v15];
  v35[0] = 0;
  v17 = [v16 transferPersonWithUuid:v8 error:v35];
  v18 = v35[0];
  v19 = v8;
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
  v10 = v14;
  v8 = v21;
  v13 = v32;
  a5 = v34;
  if (!v22)
  {
LABEL_15:
    if (a5)
    {
      v30 = v27;
      v22 = 0;
      *a5 = v27;
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (BOOL)_associateFace:(id)a3 withPersonInPhotoLibrary:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PHFaceChangeRequest.m" lineNumber:423 description:{@"Invalid parameter not satisfying: %@", @"PLIsAssetsd()"}];
  }

  if (!self->_didSetAssociatedPersonUUID)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PHFaceChangeRequest.m" lineNumber:424 description:{@"Invalid parameter not satisfying: %@", @"_didSetAssociatedPersonUUID"}];
  }

  if (self->_associatedPersonUUID)
  {
    v11 = [v10 managedObjectContext];
    v12 = [MEMORY[0x1E69BE608] personWithUUID:self->_associatedPersonUUID inManagedObjectContext:v11];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
    }

    else
    {
      associatedPersonUUID = self->_associatedPersonUUID;
      v33 = 0;
      v13 = [(PHFaceChangeRequest *)self _copyPersonWithPersonUUID:associatedPersonUUID toLibrary:v10 error:&v33];
      v14 = v33;
      if (!v13)
      {
LABEL_16:
        v25 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = [v9 uuid];
          v27 = self->_associatedPersonUUID;
          *buf = 138543618;
          v35 = v26;
          v36 = 2114;
          v37 = v27;
          _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Unable to associate face %{public}@ with target person %{public}@ (person not found)", buf, 0x16u);
        }

        if (a5)
        {
          v28 = v14;
          v17 = 0;
          *a5 = v14;
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
      v19 = [v13 mergeTargetPerson];

      v20 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v32 = v10;
        v21 = v14;
        v22 = a5;
        v23 = self->_associatedPersonUUID;
        v24 = [v19 personUUID];
        *buf = 138543618;
        v35 = v23;
        a5 = v22;
        v14 = v21;
        v10 = v32;
        v36 = 2114;
        v37 = v24;
        _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_INFO, "Attempt to associate a face with a tombstone person %{public}@, will associate with merge target %{public}@", buf, 0x16u);
      }

      if (!v19)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = v13;
    }

    [v9 setAssociatedPerson:v19];

    v17 = 1;
LABEL_22:

    goto LABEL_23;
  }

  v15 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v9 uuid];
    *buf = 138543362;
    v35 = v16;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_INFO, "setting person relationship to nil for face %{public}@", buf, 0xCu);
  }

  [v9 setAssociatedPerson:0];
  v17 = 1;
LABEL_23:

  return v17;
}

- (void)associateFaceWithPersonUUID:(id)a3
{
  v4 = a3;
  [(PHChangeRequest *)self didMutate];
  self->_didSetAssociatedPersonUUID = 1;
  associatedPersonUUID = self->_associatedPersonUUID;
  self->_associatedPersonUUID = v4;
}

- (void)setNameSource:(int64_t)a3
{
  v3 = a3;
  [(PHChangeRequest *)self didMutate];
  self->_didSetNameSource = 1;
  self->_nameSource = v3;
}

- (void)setDetectionTraits:(id)a3
{
  v5 = a3;
  [(PHChangeRequest *)self didMutate];
  v4 = v5;
  self->_didSetDetectionTraits = 1;
  if (!v5)
  {
    v4 = [MEMORY[0x1E695DEC8] array];
  }

  v6 = v4;
  [(NSMutableArray *)self->_detectionTraits setArray:v4];
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

- (void)setGazeRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PHChangeRequest *)self didMutate];
  self->_didSetGazeRect = 1;
  self->_gazeRectString = [MEMORY[0x1E69BE3D0] stringFromGazeRect:{x, y, width, height}];

  MEMORY[0x1EEE66BB8]();
}

- (void)setFaceprint:(id)a3
{
  v4 = a3;
  [(PHChangeRequest *)self didMutate];
  self->_didSetFaceprint = 1;
  faceprint = self->_faceprint;
  self->_faceprint = v4;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE3D0];
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
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create face"];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [v9 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v11];
  }

  return v8;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [(PHFaceChangeRequest *)self detectionType];
  v6 = v5;
  if (a4 && v5 == 2)
  {
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A278];
    v11[0] = @"PHDetectionTypePet is not a valid value to assign to PHFace.detectionType";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a4 = [v7 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3111 userInfo:v8];
  }

  return v6 != 2;
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 nameSource];
  v10 = [(PHChangeRequest *)self helper];
  v59 = 0;
  v11 = [v10 applyMutationsToManagedObject:v7 error:&v59];
  v12 = v59;

  if (!v11)
  {
    v42 = 0;
    goto LABEL_38;
  }

  if (self->_didSetNameSource)
  {
    [v7 setEffectiveNameSource:self->_nameSource];
  }

  if ([v7 effectiveNameSource] == 1 && v9 != 1)
  {
    [v7 setConfirmedFaceCropGenerationState:1];
  }

  if (self->_didSetDetectionTraits)
  {
    v13 = [MEMORY[0x1E695DFA8] set];
    v14 = [v7 managedObjectContext];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v48 = v7;
    v15 = [v7 detectionTraits];
    v16 = [v15 countByEnumeratingWithState:&v55 objects:v61 count:16];
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
            objc_enumerationMutation(v15);
          }

          [v14 deleteObject:*(*(&v55 + 1) + 8 * i)];
        }

        v17 = [v15 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v17);
    }

    v45 = v12;
    v47 = v8;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v46 = self;
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
          v26 = [v24 type];
          v27 = [v24 value];
          [v24 score];
          v29 = v28;
          [v24 startTime];
          v31 = v30;
          [v24 duration];
          v33 = v32;
          v34 = [v24 thumbnailIdentifier];
          v35 = [v25 insertIntoManagedObjectContext:v14 type:v26 value:v27 score:v34 startTime:v29 duration:v31 thumbnailIdentifier:v33];

          [v13 addObject:v35];
        }

        v21 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v21);
    }

    v7 = v48;
    [v48 setDetectionTraits:v13];

    self = v46;
    v8 = v47;
    v12 = v45;
  }

  if (self->_didSetFaceprint)
  {
    [v7 removeFaceprint];
    if (self->_faceprint)
    {
      v36 = MEMORY[0x1E69BE3E0];
      v37 = [v7 managedObjectContext];
      v38 = [v36 insertInManagedObjectContext:v37];

      [v38 setFace:v7];
      v39 = [(PHFaceprint *)self->_faceprint faceprintData];
      [v38 setData:v39];

      [v38 setFaceprintVersion:{-[PHFaceprint faceprintVersion](self->_faceprint, "faceprintVersion")}];
      [v7 setFaceprint:v38];
    }
  }

  if (self->_didSetAssociatedPersonUUID)
  {
    v50 = v12;
    v40 = [(PHFaceChangeRequest *)self _associateFace:v7 withPersonInPhotoLibrary:v8 error:&v50];
    v41 = v50;

    if (self->_didSetGazeRect)
    {
      [v7 setGazeRectString:self->_gazeRectString];
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
    [v7 setGazeRectString:self->_gazeRectString];
  }

  if (self->_shouldClearFaceCropGenerationState)
  {
    [v7 setConfirmedFaceCropGenerationState:0];
    v43 = [MEMORY[0x1E695DFD8] set];
    [v7 setRejectedPersonsNeedingFaceCrops:v43];
  }

  [v7 fixAssetRelationshipsForFaceTorsoOrTemporal];
  [v7 fixPersonRelationshipsForFaceTorsoOrTemporal];
  v42 = 1;
LABEL_38:

  return v42;
}

- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PHChangeRequest *)self helper];
  v20 = 0;
  v8 = [v7 validateMutationsToManagedObject:v6 error:&v20];

  v9 = v20;
  if (v8)
  {
    v10 = [(PHChangeRequest *)self helper];
    v11 = [v10 mutations];
    v12 = [v11 objectForKeyedSubscript:@"detectionType"];
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

  if (a4)
  {
    v17 = v9;
    v18 = 0;
    *a4 = v9;
  }

  else
  {
    v18 = 0;
  }

LABEL_8:

  return v18;
}

- (void)setThumbnailIdentifier:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"thumbnailIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"thumbnailIdentifier"];
  }

  else
  {
    [v6 removeObjectForKey:@"thumbnailIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"thumbnailIdentifier"];
  }
}

- (NSString)thumbnailIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"thumbnailIdentifier"];

  return v5;
}

- (void)setAdjustmentVersion:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"adjustmentVersion"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"adjustmentVersion"];
  }

  else
  {
    [v6 removeObjectForKey:@"adjustmentVersion"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"adjustmentVersion"];
  }
}

- (id)adjustmentVersion
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"adjustmentVersion"];

  return v5;
}

- (void)setGroupingIdentifier:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"groupingIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"groupingIdentifier"];
  }

  else
  {
    [v6 removeObjectForKey:@"groupingIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"groupingIdentifier"];
  }
}

- (NSString)groupingIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"groupingIdentifier"];

  return v5;
}

- (void)setDuration:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"duration"];
}

- (double)duration
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"duration"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setStartTime:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"startTime"];
}

- (double)startTime
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"startTime"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setGazeConfidence:(float)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  *&v6 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v7 = [(PHChangeRequest *)self helper];
  v8 = [v7 mutations];
  [v8 setObject:v9 forKeyedSubscript:@"gazeConfidence"];
}

- (float)gazeConfidence
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"gazeConfidence"];

  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (void)setGazeAngle:(float)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  *&v6 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v7 = [(PHChangeRequest *)self helper];
  v8 = [v7 mutations];
  [v8 setObject:v9 forKeyedSubscript:@"gazeAngle"];
}

- (float)gazeAngle
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"gazeAngle"];

  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (void)setGazeCenterY:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"gazeCenterY"];
}

- (double)gazeCenterY
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"gazeCenterY"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setGazeCenterX:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"gazeCenterX"];
}

- (double)gazeCenterX
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"gazeCenterX"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setGazeType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"gazeType"];
}

- (unsigned)gazeType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"gazeType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setHasFaceMask:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"hasFaceMask"];
}

- (BOOL)hasFaceMask
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"hasFaceMask"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setEthnicityType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"ethnicityType"];
}

- (unsigned)ethnicityType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"ethnicityType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setSkintoneType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"skintoneType"];
}

- (unsigned)skintoneType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"skintoneType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setPoseType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"poseType"];
}

- (unsigned)poseType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"poseType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setHairType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"hairType"];
}

- (unsigned)hairType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"hairType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setHeadgearType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"headgearType"];
}

- (unsigned)headgearType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"headgearType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setFaceExpressionType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"faceExpressionType"];
}

- (unsigned)faceExpressionType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"faceExpressionType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setLipMakeupType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"lipMakeupType"];
}

- (unsigned)lipMakeupType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"lipMakeupType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setEyeMakeupType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"eyeMakeupType"];
}

- (unsigned)eyeMakeupType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"eyeMakeupType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setGlassesType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"glassesType"];
}

- (unsigned)glassesType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"glassesType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setHairColorType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"hairColorType"];
}

- (unsigned)hairColorType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"hairColorType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setFacialHairType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"facialHairType"];
}

- (unsigned)facialHairType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"facialHairType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setSmileType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"smileType"];
}

- (unsigned)smileType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"smileType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setEyesState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"eyesState"];
}

- (unsigned)eyesState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"eyesState"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setSexType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"genderType"];
}

- (unsigned)sexType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"genderType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setAgeType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"ageType"];
}

- (unsigned)ageType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"ageType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setVuObservationID:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"vuObservationID"];
}

- (int64_t)vuObservationID
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"vuObservationID"];

  v6 = [v5 integerValue];
  return v6;
}

- (void)setQuality:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"quality"];
}

- (double)quality
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"quality"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setQualityMeasure:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"qualityMeasure"];
}

- (int64_t)qualityMeasure
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"qualityMeasure"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setClusterSequenceNumber:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"clusterSequenceNumber"];
}

- (int64_t)clusterSequenceNumber
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"clusterSequenceNumber"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setFaceAlgorithmVersion:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"faceAlgorithmVersion"];
}

- (int64_t)faceAlgorithmVersion
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"faceAlgorithmVersion"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setPoseYaw:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"poseYaw"];
}

- (double)poseYaw
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"poseYaw"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setRightEyeClosed:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"isRightEyeClosed"];
}

- (BOOL)isRightEyeClosed
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"isRightEyeClosed"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setLeftEyeClosed:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"isLeftEyeClosed"];
}

- (BOOL)isLeftEyeClosed
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"isLeftEyeClosed"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setBlurScore:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"blurScore"];
}

- (double)blurScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"blurScore"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setHasSmile:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"hasSmile"];
}

- (BOOL)hasSmile
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"hasSmile"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setManual:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"manual"];
}

- (BOOL)manual
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"manual"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setInTrash:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"isInTrash"];
}

- (BOOL)isInTrash
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"isInTrash"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"hidden"];
}

- (BOOL)isHidden
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"hidden"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setIsInVIPModel:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"vipModelType"];
}

- (BOOL)isInVIPModel
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"vipModelType"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setRoll:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"roll"];
}

- (double)roll
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"roll"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setSourceHeight:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"sourceHeight"];
}

- (int64_t)sourceHeight
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"sourceHeight"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setSourceWidth:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"sourceWidth"];
}

- (int64_t)sourceWidth
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"sourceWidth"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setDetectionType:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"detectionType"];
}

- (signed)detectionType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"detectionType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setBodyHeight:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"bodyHeight"];
}

- (double)bodyHeight
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"bodyHeight"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setBodyWidth:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"bodyWidth"];
}

- (double)bodyWidth
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"bodyWidth"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setBodyCenterY:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"bodyCenterY"];
}

- (double)bodyCenterY
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"bodyCenterY"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setBodyCenterX:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"bodyCenterX"];
}

- (double)bodyCenterX
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"bodyCenterX"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setCenterY:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"centerY"];
}

- (double)centerY
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"centerY"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setCenterX:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"centerX"];
}

- (double)centerX
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"centerX"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setSize:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"size"];
}

- (double)size
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"size"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (PHObjectPlaceholder)placeholderForCreatedFace
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 encodeToXPCDict:v4];

  xpc_dictionary_set_BOOL(v4, "didSetDetectionTraits", self->_didSetDetectionTraits);
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

          v12 = [*(*(&v15 + 1) + 8 * i) propertyListRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    PLXPCDictionarySetArray();
  }

  xpc_dictionary_set_BOOL(v4, "didSetFaceprint", self->_didSetFaceprint);
  if (self->_didSetFaceprint)
  {
    faceprint = self->_faceprint;
    if (faceprint)
    {
      v14 = [(PHFaceprint *)faceprint dictionaryRepresentation];
      PLXPCDictionarySetDictionary();
    }
  }

  xpc_dictionary_set_BOOL(v4, "shouldClearFaceCropGenerationState", self->_shouldClearFaceCropGenerationState);
  xpc_dictionary_set_BOOL(v4, "didSetAssociatedPersonUUID", self->_didSetAssociatedPersonUUID);
  if (self->_didSetAssociatedPersonUUID)
  {
    PLXPCDictionarySetString();
    PLXPCDictionarySetURL();
  }

  xpc_dictionary_set_BOOL(v4, "didSetGazeRect", self->_didSetGazeRect);
  if (self->_didSetGazeRect)
  {
    PLXPCDictionarySetString();
  }

  xpc_dictionary_set_BOOL(v4, "didSetNameSource", self->_didSetNameSource);
  if (self->_didSetNameSource)
  {
    xpc_dictionary_set_int64(v4, "nameSource", self->_nameSource);
  }
}

- (PHFaceChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v40.receiver = self;
  v40.super_class = PHFaceChangeRequest;
  v11 = [(PHChangeRequest *)&v40 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v11->_didSetDetectionTraits = xpc_dictionary_get_BOOL(v8, "didSetDetectionTraits");
      v11->_didSetFaceprint = xpc_dictionary_get_BOOL(v8, "didSetFaceprint");
      v11->_didSetAssociatedPersonUUID = xpc_dictionary_get_BOOL(v8, "didSetAssociatedPersonUUID");
      v11->_didSetGazeRect = xpc_dictionary_get_BOOL(v8, "didSetGazeRect");
      v11->_didSetNameSource = xpc_dictionary_get_BOOL(v8, "didSetNameSource");
      if (v11->_didSetDetectionTraits)
      {
        v35 = v10;
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
        [v9 recordUpdateRequest:v11];

        v10 = v35;
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
        [v9 recordUpdateRequest:v11];
      }

      v27 = xpc_dictionary_get_BOOL(v8, "shouldClearFaceCropGenerationState");
      v11->_shouldClearFaceCropGenerationState = v27;
      if (v27)
      {
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [v9 recordUpdateRequest:v11];
      }

      if (v11->_didSetAssociatedPersonUUID)
      {
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [v9 recordUpdateRequest:v11];
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
        [v9 recordUpdateRequest:v11];
        v32 = PLStringFromXPCDictionary();
        gazeRectString = v11->_gazeRectString;
        v11->_gazeRectString = v32;
      }

      if (v11->_didSetNameSource)
      {
        [(PHChangeRequestHelper *)v11->super._helper setMutated:1];
        [v9 recordUpdateRequest:v11];
        v11->_nameSource = xpc_dictionary_get_int64(v8, "nameSource");
      }
    }
  }

  return v11;
}

- (PHFaceChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PHFaceChangeRequest;
  v8 = [(PHChangeRequest *)&v14 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
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

+ (void)deleteFaces:(id)a3
{
  v5 = a3;
  v4 = [(PHObjectDeleteRequest *)PHFaceDeleteRequest deleteRequestsForObjects:v5 ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForFace:(id)a3
{
  if (a3)
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
  v2 = [[PHFaceChangeRequest alloc] initForNewObject];

  return v2;
}

@end