@interface ARFaceTrackingTechnique
+ (BOOL)isSupported;
- (ARFaceTrackingTechnique)initWithMaximumNumberOfTrackedFaces:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (id)processData:(id)a3;
- (id)resultDataClasses;
@end

@implementation ARFaceTrackingTechnique

- (ARFaceTrackingTechnique)initWithMaximumNumberOfTrackedFaces:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = ARFaceTrackingTechnique;
  v4 = [(ARImageBasedTechnique *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_isFaceTracked = 0;
    v4->_maximumNumberOfTrackedFaces = a3;
    v6 = objc_opt_new();
    singleUserAnchorIdentifier = v5->_singleUserAnchorIdentifier;
    v5->_singleUserAnchorIdentifier = v6;
  }

  return v5;
}

+ (BOOL)isSupported
{
  if (+[ARFaceTrackingTechnique isSupported]::onceToken != -1)
  {
    +[ARFaceTrackingTechnique isSupported];
  }

  return +[ARFaceTrackingTechnique isSupported]::supported;
}

uint64_t __38__ARFaceTrackingTechnique_isSupported__block_invoke()
{
  result = ARPearlCameraSupported();
  +[ARFaceTrackingTechnique isSupported]::supported = result;
  if ((result & 1) == 0)
  {
    result = ARRGBFaceTrackingEnabled();
    if (result)
    {
      result = ARRGBFaceTrackingEnabled();
      +[ARFaceTrackingTechnique isSupported]::supported = result;
    }
  }

  return result;
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)processData:(id)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v33.receiver = self;
  v33.super_class = ARFaceTrackingTechnique;
  v5 = [(ARImageBasedTechnique *)&v33 processData:v4];
  v6 = v4;
  v29 = objc_opt_new();
  v7 = [v6 faceData];
  v8 = [v7 faceMeshPayload];
  v9 = MEMORY[0x1E698C0C0];
  if (!v8)
  {

LABEL_6:
    [v6 timestamp];
    kdebug_trace();
    goto LABEL_7;
  }

  v10 = [v6 faceData];
  v11 = [v10 faceMeshPayload];
  v12 = [v11 objectForKeyedSubscript:*v9];
  v13 = [v12 count] == 0;

  if (v13)
  {
    goto LABEL_6;
  }

LABEL_7:
  v14 = [v6 faceData];
  v15 = [v14 isMirrored];
  v16 = [v6 isMirrored];

  v17 = [v6 faceData];
  v18 = [v17 faceMeshPayload];
  v19 = [v18 objectForKeyedSubscript:*v9];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __39__ARFaceTrackingTechnique_processData___block_invoke;
  v30[3] = &unk_1E817C378;
  v20 = v15 ^ v16;
  v30[4] = self;
  v32 = v20;
  v21 = v29;
  v31 = v21;
  [v19 enumerateObjectsUsingBlock:v30];

  if ([(ARFaceTrackingTechnique *)self maximumNumberOfTrackedFaces]== 1)
  {
    v22 = [v21 firstObject];
    if (v22)
    {
      [v21 removeAllObjects];
      v23 = [ARFaceTrackingData alloc];
      v24 = [v22 trackingData];
      v25 = [(ARFaceTrackingData *)v23 initWithTrackingData:v24 transformToMirrored:v20 anchorIdentifier:self->_singleUserAnchorIdentifier];

      [v21 addObject:v25];
    }
  }

  v26 = objc_opt_new();
  [v26 setTrackedFaces:v21];
  v34[0] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  [v6 timestamp];
  [(ARImageBasedTechnique *)self pushResultData:v27 forTimestamp:?];

LABEL_12:

  return v4;
}

void __39__ARFaceTrackingTechnique_processData___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698C038]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
LABEL_5:
    v11 = _ARLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = *(a1 + 32);
      *v32 = 138543874;
      *&v32[4] = v13;
      *&v32[12] = 2048;
      *&v32[14] = v14;
      v33 = 2112;
      v34 = v8;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Tracking anchor with ID = %@", v32, 0x20u);
    }

    v15 = [[ARFaceTrackingData alloc] initWithTrackingData:v6 transformToMirrored:*(a1 + 48) anchorIdentifier:v8];
    v16 = [*(a1 + 32) isFaceTracked];
    if (v16 != [(ARFaceTrackingData *)v15 isValid])
    {
      if (_ARLogTechnique(void)::onceToken != -1)
      {
        __39__ARFaceTrackingTechnique_processData___block_invoke_cold_2();
      }

      v17 = _ARLogTechnique(void)::logObj;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = *(a1 + 32);
        v21 = [(ARFaceTrackingData *)v15 isValid];
        v22 = @"NO";
        *v32 = 138543874;
        *&v32[4] = v19;
        if (v21)
        {
          v22 = @"YES";
        }

        *&v32[12] = 2048;
        *&v32[14] = v20;
        v33 = 2112;
        v34 = v22;
        _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Face is being tracked: %@", v32, 0x20u);
      }

      [*(a1 + 32) setIsFaceTracked:{-[ARFaceTrackingData isValid](v15, "isValid")}];
    }

    [*(a1 + 40) addObject:{v15, *v32}];
    v23 = [*(a1 + 40) count];
    *a4 = v23 >= [*(a1 + 32) maximumNumberOfTrackedFaces];

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    *v32 = [v9 intValue];
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v32 length:4];
    v8 = [MEMORY[0x1E696AFB0] ar_UUIDWithData:v10];

    goto LABEL_5;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    __39__ARFaceTrackingTechnique_processData___block_invoke_cold_1();
  }

  v24 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v25 = _ARLogGeneral();
  v8 = v25;
  if (v24 == 1)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = *(a1 + 32);
      *v32 = 138543618;
      *&v32[4] = v27;
      *&v32[12] = 2048;
      *&v32[14] = v28;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Encountered invalid face ID", v32, 0x16u);
    }
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = *(a1 + 32);
    *v32 = 138543618;
    *&v32[4] = v30;
    *&v32[12] = 2048;
    *&v32[14] = v31;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Encountered invalid face ID", v32, 0x16u);
  }

LABEL_16:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARFaceTrackingTechnique;
  if ([(ARTechnique *)&v9 isEqual:v4])
  {
    v5 = v4;
    v6 = [(ARFaceTrackingTechnique *)self maximumNumberOfTrackedFaces];
    v7 = v6 == [v5 maximumNumberOfTrackedFaces];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end