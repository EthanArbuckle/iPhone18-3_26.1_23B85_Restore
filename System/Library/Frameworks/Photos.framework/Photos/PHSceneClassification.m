@interface PHSceneClassification
+ (id)_fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:(id)a3 includeTemporalClassifications:(BOOL)a4 sceneClassificationTypePredicate:(id)a5;
+ (id)allSupportedSceneClassificationTypes;
+ (id)fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:(id)a3 sceneClassificationType:(int64_t)a4 includeTemporalClassifications:(BOOL)a5;
- (BOOL)_validateStartTime:(double)a3 duration:(double)a4 classificationType:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSceneClassification:(id)a3;
- (CGRect)boundingBox;
- (PHSceneClassification)initWithDictionaryRepresentation:(id)a3;
- (PHSceneClassification)initWithExtendedSceneIdentifier:(unint64_t)a3 confidence:(double)a4 boundingBox:(CGRect)a5 startTime:(double)a6 duration:(double)a7 classificationType:(int64_t)a8 thumbnailIdentifier:(id)a9;
- (id)description;
- (id)dictionaryRepresentation;
- (unsigned)sceneIdentifier;
@end

@implementation PHSceneClassification

- (unsigned)sceneIdentifier
{
  v9 = *MEMORY[0x1E69E9840];
  extendedSceneIdentifier = self->_extendedSceneIdentifier;
  if (HIDWORD(extendedSceneIdentifier))
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = self->_extendedSceneIdentifier;
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_FAULT, "Using 32 bit SPI to return 64 bit value (value: %lld)", &v7, 0xCu);
    }

    LODWORD(extendedSceneIdentifier) = 0;
  }

  return extendedSceneIdentifier;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PHSceneClassification;
  v4 = [(PHSceneClassification *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ id: %llu, classificationType: %ld, confidence %.4f thumbID %@", v4, self->_extendedSceneIdentifier, self->_classificationType, *&self->_confidence, self->_thumbnailIdentifier];

  return v5;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PHSceneClassification)initWithDictionaryRepresentation:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E696ACD0];
  v5 = objc_opt_class();
  v6 = [v3 objectForKeyedSubscript:@"packedBoundingBoxRect"];
  v34 = 0;
  v7 = [v4 unarchivedObjectOfClass:v5 fromData:v6 error:&v34];
  v8 = v34;

  if (v8)
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v8;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Failed to archive boundingBoxData, error: %@", buf, 0xCu);
    }
  }

  v10 = MEMORY[0x19EAF15F0](v7);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v3 objectForKeyedSubscript:@"sceneIdentifier"];
  v32 = [v17 unsignedLongLongValue];
  v18 = [v3 objectForKeyedSubscript:@"confidence"];
  [v18 doubleValue];
  v20 = v19;
  v21 = [v3 objectForKeyedSubscript:@"startTime"];
  [v21 doubleValue];
  v23 = v22;
  v24 = [v3 objectForKeyedSubscript:@"duration"];
  [v24 doubleValue];
  v26 = v25;
  v27 = [v3 objectForKeyedSubscript:@"classificationType"];
  v28 = [v27 integerValue];
  v29 = [v3 objectForKeyedSubscript:@"thumbnailIdentifier"];
  v30 = [(PHSceneClassification *)self initWithExtendedSceneIdentifier:v32 confidence:v28 boundingBox:v29 startTime:v20 duration:v10 classificationType:v12 thumbnailIdentifier:v14, v16, v23, v26];

  return v30;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACC8];
  v4 = DCIM_NSValueFromCGRect();
  v17 = 0;
  v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v17];
  v6 = v17;

  if (v6)
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Failed to archive boundingBoxData, error: %@", buf, 0xCu);
    }
  }

  v18[0] = @"sceneIdentifier";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_extendedSceneIdentifier];
  v19[0] = v8;
  v18[1] = @"confidence";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidence];
  v19[1] = v9;
  v19[2] = v5;
  v18[2] = @"packedBoundingBoxRect";
  v18[3] = @"startTime";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTime];
  v19[3] = v10;
  v18[4] = @"duration";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  v19[4] = v11;
  v18[5] = @"classificationType";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_classificationType];
  v19[5] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];

  if (self->_thumbnailIdentifier)
  {
    v14 = [v13 mutableCopy];
    [v14 setObject:self->_thumbnailIdentifier forKeyedSubscript:@"thumbnailIdentifier"];
    v15 = [v14 copy];

    v13 = v15;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PHSceneClassification *)self isEqualToSceneClassification:v4];
  }

  return v5;
}

- (BOOL)isEqualToSceneClassification:(id)a3
{
  v4 = a3;
  classificationType = self->_classificationType;
  if (classificationType == [v4 classificationType] && (extendedSceneIdentifier = self->_extendedSceneIdentifier, extendedSceneIdentifier == objc_msgSend(v4, "extendedSceneIdentifier")) && (confidence = self->_confidence, objc_msgSend(v4, "confidence"), confidence == v8))
  {
    [v4 boundingBox];
    v15.origin.x = v9;
    v15.origin.y = v10;
    v15.size.width = v11;
    v15.size.height = v12;
    v13 = CGRectEqualToRect(self->_boundingBox, v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (PHSceneClassification)initWithExtendedSceneIdentifier:(unint64_t)a3 confidence:(double)a4 boundingBox:(CGRect)a5 startTime:(double)a6 duration:(double)a7 classificationType:(int64_t)a8 thumbnailIdentifier:(id)a9
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v21 = a9;
  if (![(PHSceneClassification *)self _validateStartTime:a8 duration:a6 classificationType:a7]|| (v43.receiver = self, v43.super_class = PHSceneClassification, (v22 = [(PHSceneClassification *)&v43 init]) == 0))
  {
    v31 = MEMORY[0x1E695DF30];
    v32 = *MEMORY[0x1E695D940];
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid combination of parameters for PHSceneClassification (id: %llu) - startTime: %g, duration: %g, classificationType: %ld", a3, *&a6, *&a7, a8];
    v34 = [v31 exceptionWithName:v32 reason:v33 userInfo:0];
    v35 = v34;

    objc_exception_throw(v34);
  }

  v23 = v22;
  v22->_boundingBox.origin.x = x;
  p_x = &v22->_boundingBox.origin.x;
  v22->_extendedSceneIdentifier = a3;
  v22->_confidence = a4;
  v22->_boundingBox.origin.y = y;
  v22->_boundingBox.size.width = width;
  v22->_boundingBox.size.height = height;
  v22->_startTime = a6;
  v22->_duration = a7;
  v22->_classificationType = a8;
  if (v21)
  {
    objc_storeStrong(&v22->_thumbnailIdentifier, a9);
  }

  v25 = *MEMORY[0x1E695F058];
  v26 = *(MEMORY[0x1E695F058] + 8);
  v27 = *(MEMORY[0x1E695F058] + 16);
  v28 = *(MEMORY[0x1E695F058] + 24);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v46.origin.x = *MEMORY[0x1E695F058];
  v46.origin.y = v26;
  v46.size.width = v27;
  v46.size.height = v28;
  if (CGRectEqualToRect(v44, v46))
  {
    v29 = *(MEMORY[0x1E695F050] + 16);
    *p_x = *MEMORY[0x1E695F050];
    p_x[1] = v29;
  }

  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  if (CGRectIsNull(v45))
  {
    height = v28;
    width = v27;
    y = v26;
    x = v25;
  }

  if (!PLCGRectIsNormalized())
  {
    v36 = MEMORY[0x1E695DF30];
    v37 = *MEMORY[0x1E695D940];
    v38 = MEMORY[0x1E696AEC0];
    v39 = NSStringFromSelector(a2);
    v40 = [v38 stringWithFormat:@"Invalid CGRect for PHSceneClassification (id: %llu) passed to %@, rect must be non-zero normalized or CGRectNull", a3, v39];
    v41 = [v36 exceptionWithName:v37 reason:v40 userInfo:0];
    v42 = v41;

    objc_exception_throw(v41);
  }

  v23->_packedBoundingBoxRect = MEMORY[0x19EAF2080](x, y, width, height);

  return v23;
}

- (BOOL)_validateStartTime:(double)a3 duration:(double)a4 classificationType:(int64_t)a5
{
  v5 = a3 == 0.0;
  if (a4 != 0.0)
  {
    v5 = 0;
  }

  v6 = ((1 << a5) & 0xC) != 0 && a4 > 0.0;
  if (((1 << a5) & 0xF1) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return a5 <= 7 && v7;
}

+ (id)allSupportedSceneClassificationTypes
{
  v2 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 8; ++i)
  {
    if ((i - 2) < 6 || i == 0)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:i];
      [v2 addObject:v5];
    }
  }

  v6 = [v2 copy];

  return v6;
}

+ (id)_fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:(id)a3 includeTemporalClassifications:(BOOL)a4 sceneClassificationTypePredicate:(id)a5
{
  v6 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v24 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__22301;
  v36 = __Block_byref_object_dispose__22302;
  v37 = 0;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v38 count:16];
  v23 = v6;
  v12 = 0;
  if (v11)
  {
    v13 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [v15 objectID];
        [v8 addObject:v16];
        v17 = [v15 localIdentifier];
        [v9 setObject:v17 forKey:v16];

        if (!v12)
        {
          v18 = [v15 photoLibrary];
          v12 = [v18 photoLibrary];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v11);
  }

  v19 = MEMORY[0x1E69BE778];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __154__PHSceneClassification__fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets_includeTemporalClassifications_sceneClassificationTypePredicate___block_invoke;
  v25[3] = &unk_1E75A6CD8;
  v27 = &v32;
  v20 = v9;
  v26 = v20;
  [v19 batchFetchScenesByAssetObjectIDWithAssetObjectIDs:v8 library:v12 includeTemporalClassifications:v23 sceneClassificationTypePredicate:v24 completion:v25];
  v21 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v21;
}

void __154__PHSceneClassification__fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets_includeTemporalClassifications_sceneClassificationTypePredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = [v3 dictionary];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __154__PHSceneClassification__fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets_includeTemporalClassifications_sceneClassificationTypePredicate___block_invoke_2;
  v10[3] = &unk_1E75A6CB0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v8;
  v12 = v9;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];
}

void __154__PHSceneClassification__fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets_includeTemporalClassifications_sceneClassificationTypePredicate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v31 = [MEMORY[0x1E695DF70] array];
  v27 = a1;
  v28 = v5;
  v26 = [*(a1 + 32) objectForKey:v5];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v6;
  v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v32)
  {
    v30 = *v34;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"packedBoundingBoxRect"];
        [v9 longLongValue];
        PLSplitToCGRectFromInt64();

        v10 = [PHSceneClassification alloc];
        v11 = [v8 objectForKeyedSubscript:@"sceneIdentifier"];
        v12 = [v11 unsignedLongLongValue];
        v13 = [v8 objectForKeyedSubscript:@"confidence"];
        [v13 doubleValue];
        v15 = v14;
        v16 = [v8 objectForKeyedSubscript:@"startTime"];
        [v16 doubleValue];
        v18 = v17;
        v19 = [v8 objectForKeyedSubscript:@"duration"];
        [v19 doubleValue];
        v21 = v20;
        v22 = [v8 objectForKeyedSubscript:@"classificationType"];
        v23 = [v22 integerValue];
        v24 = [v8 objectForKeyedSubscript:@"thumbnailIdentifier"];
        v25 = [(PHSceneClassification *)v10 initWithExtendedSceneIdentifier:v12 confidence:v23 boundingBox:v24 startTime:v15 duration:0.0 classificationType:0.0 thumbnailIdentifier:0.0, 0.0, v18, v21];

        [v31 addObject:v25];
      }

      v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v32);
  }

  [*(*(*(v27 + 40) + 8) + 40) setObject:v31 forKeyedSubscript:v26];
}

+ (id)fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:(id)a3 sceneClassificationType:(int64_t)a4 includeTemporalClassifications:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E696AE18];
  v9 = a3;
  v10 = [v8 predicateWithFormat:@"%K = %ld", @"classificationType", a4];
  v11 = [a1 _fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets:v9 includeTemporalClassifications:v5 sceneClassificationTypePredicate:v10];

  return v11;
}

@end