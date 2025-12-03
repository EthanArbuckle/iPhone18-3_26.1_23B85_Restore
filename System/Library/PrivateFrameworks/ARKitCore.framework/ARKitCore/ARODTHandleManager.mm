@interface ARODTHandleManager
+ (id)handleAccumulatedErrorType:(int64_t)type failedReferenceImageNames:(id)names;
+ (id)suggestionInternalError;
+ (id)suggestionInvalidFeature;
+ (id)suggestionInvalidImage;
+ (int)_calibrationDataFromImageData:(id)data pCalibrationData:(id *)calibrationData;
+ (int)verifyReferenceImage:(id)image;
+ (int64_t)actualNumberOfImagesTracked:(int64_t)tracked;
+ (void)accumulateReferenceImageErrorsForResult:(int)result refImage:(id)image objectID:(unint64_t)d pReferenceImageMap:(id *)map pFailedReferenceImageNames:(id *)names pUserErrorType:(int64_t *)type;
- (ARODTHandleManager)init;
- (ARODTHandleManager)initWithDeterministicMode:(BOOL)mode;
- (ARODTHandleManager)initWithMaximumNumberOfTrackedImages:(int64_t)images continuousDetection:(BOOL)detection deterministicMode:(BOOL)mode;
- (ARODTHandleManager)initWithRegionProposalModelAndDeterministicMode:(BOOL)mode;
- (BOOL)continuousDetection;
- (BOOL)deterministicMode;
- (BOOL)isEqual:(id)equal;
- (int)addReferenceImage:(id)image tracking:(BOOL)tracking pObjectID:(unint64_t *)d;
- (int)addReferenceObject:(id)object tracking:(BOOL)tracking pObjectID:(unint64_t *)d;
- (int)detectReferenceObjectsForImageData:(id)data worldTrackingPose:(id)pose imageContext:(const void *)context pResultArray:(id *)array;
- (int)predictPlanarObjectsAtTimestamp:(double)timestamp worldTrackingPose:(id)pose timeBudget:(double)budget pResultArray:(id *)array;
- (int)trackPlanarObjectAndEstimateScaleForImageData:(id)data worldTrackingPose:(id)pose imageContext:(const void *)context timeBudget:(double)budget pResultArray:(id *)array;
- (int)waitForAllObjectsAddToFinish;
- (int64_t)maximumNumberOfTrackedImages;
- (void)dealloc;
- (void)releaseODTHandle;
- (void)updatePowerUsage:(unint64_t)usage;
@end

@implementation ARODTHandleManager

- (int64_t)maximumNumberOfTrackedImages
{
  v2 = [(NSDictionary *)self->_options objectForKey:*MEMORY[0x1E698BC20]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)continuousDetection
{
  v2 = [(NSDictionary *)self->_options objectForKey:*MEMORY[0x1E698BC18]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)deterministicMode
{
  v2 = [(NSDictionary *)self->_options objectForKey:*MEMORY[0x1E698BC10]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (int64_t)actualNumberOfImagesTracked:(int64_t)tracked
{
  v9 = *MEMORY[0x1E69E9840];
  if (tracked < 0)
  {
    v5 = _ARLogSession();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "Warning: Maximum number of tracked images cannot be negative. Using a value of zero instead", &v7, 2u);
    }

    CV3DODTGetMaxSupportedNumberImagesToTrack();
    return 0;
  }

  else
  {
    trackedCopy = tracked;
    if (CV3DODTGetMaxSupportedNumberImagesToTrack() < tracked)
    {
      trackedCopy = CV3DODTGetMaxSupportedNumberImagesToTrack();
      v4 = _ARLogSession();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        v8 = trackedCopy;
        _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "Warning: Maximum number of tracked images exceeds the maximum. Using a value of %ld instead.", &v7, 0xCu);
      }
    }
  }

  return trackedCopy;
}

- (ARODTHandleManager)initWithMaximumNumberOfTrackedImages:(int64_t)images continuousDetection:(BOOL)detection deterministicMode:(BOOL)mode
{
  modeCopy = mode;
  detectionCopy = detection;
  v35[3] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = ARODTHandleManager;
  v8 = [(ARODTHandleManager *)&v27 init];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = [objc_opt_class() actualNumberOfImagesTracked:images];
  v34[0] = *MEMORY[0x1E698BC20];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v35[0] = v10;
  v34[1] = *MEMORY[0x1E698BC10];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:modeCopy];
  v35[1] = v11;
  v34[2] = *MEMORY[0x1E698BC18];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:detectionCopy];
  v35[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];

  objc_storeStrong(&v8->_options, v13);
  if (!v15)
  {
    v21 = dispatch_semaphore_create(1);
    odtHandleSemaphore = v8->_odtHandleSemaphore;
    v8->_odtHandleSemaphore = v21;

    v8->_odtCounter = 0;
    v8->_odtPowerUsage = 0;

LABEL_9:
    v23 = v8;
    goto LABEL_13;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARODTHandleManager initWithMaximumNumberOfTrackedImages:continuousDetection:deterministicMode:];
  }

  v16 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v17 = _ARLogTechnique();
  v18 = v17;
  if (v16 == 1)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138543874;
      v29 = v20;
      v30 = 2048;
      v31 = v8;
      v32 = 1024;
      v33 = v15;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create AppleCV3D handle for image detection. Failed with error %d", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    *buf = 138543874;
    v29 = v25;
    v30 = 2048;
    v31 = v8;
    v32 = 1024;
    v33 = v15;
    _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create AppleCV3D handle for image detection. Failed with error %d", buf, 0x1Cu);
  }

  v23 = 0;
LABEL_13:

  return v23;
}

- (ARODTHandleManager)initWithDeterministicMode:(BOOL)mode
{
  modeCopy = mode;
  v28[1] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = ARODTHandleManager;
  v4 = [(ARODTHandleManager *)&v20 init];
  if (!v4)
  {
    goto LABEL_9;
  }

  v27 = *MEMORY[0x1E698BC10];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:modeCopy];
  v28[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];

  objc_storeStrong(&v4->_options, v6);
  if (!v8)
  {
    v14 = dispatch_semaphore_create(1);
    odtHandleSemaphore = v4->_odtHandleSemaphore;
    v4->_odtHandleSemaphore = v14;

    v4->_odtCounter = 0;
LABEL_9:
    v16 = v4;
    goto LABEL_13;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARODTHandleManager initWithMaximumNumberOfTrackedImages:continuousDetection:deterministicMode:];
  }

  v9 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v10 = _ARLogTechnique();
  v11 = v10;
  if (v9 == 1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543874;
      v22 = v13;
      v23 = 2048;
      v24 = v4;
      v25 = 1024;
      v26 = v8;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create AppleCV3D handle for image detection. Failed with error %d.", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138543874;
    v22 = v18;
    v23 = 2048;
    v24 = v4;
    v25 = 1024;
    v26 = v8;
    _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create AppleCV3D handle for image detection. Failed with error %d.", buf, 0x1Cu);
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (ARODTHandleManager)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = ARODTHandleManager;
  v2 = [(ARODTHandleManager *)&v16 init];
  v4 = v2;
  if (!v2)
  {
    goto LABEL_10;
  }

  {
    v10 = dispatch_semaphore_create(1);
    odtHandleSemaphore = v4->_odtHandleSemaphore;
    v4->_odtHandleSemaphore = v10;

    v4->_odtCounter = 0;
LABEL_10:
    v12 = v4;
    goto LABEL_14;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARODTHandleManager initWithMaximumNumberOfTrackedImages:continuousDetection:deterministicMode:];
  }

  v5 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v6 = _ARLogTechnique();
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543618;
      v18 = v9;
      v19 = 2048;
      v20 = v4;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create AppleCV3D handle for image detection.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v18 = v14;
    v19 = 2048;
    v20 = v4;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create AppleCV3D handle for image detection.", buf, 0x16u);
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (ARODTHandleManager)initWithRegionProposalModelAndDeterministicMode:(BOOL)mode
{
  modeCopy = mode;
  v54 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = ARODTHandleManager;
  v4 = [(ARODTHandleManager *)&v41 init];
  if (!v4)
  {
    goto LABEL_29;
  }

  ObjectRegionProposalModelData = CV3DModelsCreateObjectRegionProposalModelData();
  if (ObjectRegionProposalModelData)
  {
    v6 = CV3DMLModelCreate();
    if (v6)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARODTHandleManager initWithMaximumNumberOfTrackedImages:continuousDetection:deterministicMode:];
      }

      v7 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v8 = _ARLogTechnique();
      v9 = v8;
      if (v7 == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138543874;
          v45 = v11;
          v46 = 2048;
          v47 = v4;
          v48 = 1024;
          v49 = v6;
          _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: error creating region proposal model: %i", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138543874;
        v45 = v23;
        v46 = 2048;
        v47 = v4;
        v48 = 1024;
        v49 = v6;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: error creating region proposal model: %i", buf, 0x1Cu);
      }
    }

    else
    {
      v9 = _ARLogTechnique();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        mlModel = v4->_mlModel;
        v20 = *mlModel;
        v21 = mlModel[1];
        LODWORD(mlModel) = mlModel[2];
        *buf = 138544386;
        v45 = v18;
        v46 = 2048;
        v47 = v4;
        v48 = 1024;
        v49 = v20;
        v50 = 1024;
        v51 = v21;
        v52 = 1024;
        v53 = mlModel;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Region proposal model loaded from AppleCV3DModels-%i.%i.%i", buf, 0x28u);
      }
    }

    CFRelease(ObjectRegionProposalModelData);
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARODTHandleManager initWithMaximumNumberOfTrackedImages:continuousDetection:deterministicMode:];
    }

    v12 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v13 = _ARLogTechnique();
    v14 = v13;
    if (v12 == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138543618;
        v45 = v16;
        v46 = 2048;
        v47 = v4;
        _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create object region proposal model", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138543618;
      v45 = v25;
      v46 = 2048;
      v47 = v4;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create object region proposal model", buf, 0x16u);
    }
  }

  v42 = *MEMORY[0x1E698BC10];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:modeCopy];
  v43 = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

  objc_storeStrong(&v4->_options, v27);
  if (!v29)
  {
    v35 = dispatch_semaphore_create(1);
    odtHandleSemaphore = v4->_odtHandleSemaphore;
    v4->_odtHandleSemaphore = v35;

    v4->_odtCounter = 0;
LABEL_29:
    v37 = v4;
    goto LABEL_33;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARODTHandleManager initWithMaximumNumberOfTrackedImages:continuousDetection:deterministicMode:];
  }

  v30 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v31 = _ARLogTechnique();
  v32 = v31;
  if (v30 == 1)
  {
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138543874;
      v45 = v34;
      v46 = 2048;
      v47 = v4;
      v48 = 1024;
      v49 = v29;
      _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create AppleCV3D handle for image detection. Failed with error %d.", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    *buf = 138543874;
    v45 = v39;
    v46 = 2048;
    v47 = v4;
    v48 = 1024;
    v49 = v29;
    _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create AppleCV3D handle for image detection. Failed with error %d.", buf, 0x1Cu);
  }

  v37 = 0;
LABEL_33:

  return v37;
}

- (int)addReferenceImage:(id)image tracking:(BOOL)tracking pObjectID:(unint64_t *)d
{
  imageCopy = image;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [imageCopy pixelBuffer];
  [imageCopy alphaMask];
  [imageCopy physicalSize];
  v8 = CV3DODTAddPlanarObject();
  odtCounter = self->_odtCounter;
  *d = odtCounter;
  self->_odtCounter = odtCounter + 1;
  dispatch_semaphore_signal(self->_odtHandleSemaphore);

  return v8;
}

+ (id)suggestionInvalidImage
{
  v2 = ARKitCoreBundle();
  v3 = [v2 localizedStringForKey:@"Make sure that all reference images are greater than 100 pixels and have a positive physical size in meters." value:&stru_1F4208A80 table:@"Localizable"];

  return v3;
}

+ (id)suggestionInvalidFeature
{
  v2 = ARKitCoreBundle();
  v3 = [v2 localizedStringForKey:@"One or more images lack sufficient texture and contrast for accurate detection. Image detection works best when an image contains multiple high-contrast regions distributed across its extent." value:&stru_1F4208A80 table:@"Localizable"];

  return v3;
}

+ (id)suggestionInternalError
{
  v2 = ARKitCoreBundle();
  v3 = [v2 localizedStringForKey:@"An unknown error occurred while loading ARReferenceImages for detection. Please file a bug report." value:&stru_1F4208A80 table:@"Localizable"];

  return v3;
}

+ (void)accumulateReferenceImageErrorsForResult:(int)result refImage:(id)image objectID:(unint64_t)d pReferenceImageMap:(id *)map pFailedReferenceImageNames:(id *)names pUserErrorType:(int64_t *)type
{
  v41 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v14 = *map;
  v15 = *names;
  if (result > 0xF)
  {
    goto LABEL_20;
  }

  if (((1 << result) & 0x6030) != 0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      +[ARODTHandleManager accumulateReferenceImageErrorsForResult:refImage:objectID:pReferenceImageMap:pFailedReferenceImageNames:pUserErrorType:];
    }

    v16 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v17 = _ARLogTechnique();
    v18 = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = [imageCopy description];
        v37 = 138412546;
        v38 = v19;
        v39 = 1024;
        resultCopy4 = result;
        _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_ERROR, "Could not add planar object for detection: %@ Reason: %i", &v37, 0x12u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v24 = [imageCopy description];
      v37 = 138412546;
      v38 = v24;
      v39 = 1024;
      resultCopy4 = result;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "Error: Could not add planar object for detection: %@ Reason: %i", &v37, 0x12u);
    }

    if ((*type + 1) <= 1)
    {
      *type = -1;
      name = [imageCopy name];
      if (name)
      {
        name2 = [imageCopy name];
        v27 = name2;
      }

      else
      {
        v27 = ARKitCoreBundle();
        name2 = [v27 localizedStringForKey:@"<Unnamed>" value:&stru_1F4208A80 table:@"Localizable"];
      }

      [v15 addObject:name2];
      if (!name)
      {
      }

LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if (!result)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:d];
    [v14 setObject:imageCopy forKey:v32];

    goto LABEL_30;
  }

  if (result != 15)
  {
LABEL_20:
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      +[ARODTHandleManager accumulateReferenceImageErrorsForResult:refImage:objectID:pReferenceImageMap:pFailedReferenceImageNames:pUserErrorType:];
    }

    v28 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v29 = _ARLogTechnique();
    v30 = v29;
    if (v28 == 1)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = [imageCopy description];
        v37 = 138412546;
        v38 = v31;
        v39 = 1024;
        resultCopy4 = result;
        _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_ERROR, "Could not add planar object for detection: %@ Reason: %i", &v37, 0x12u);
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v33 = [imageCopy description];
      v37 = 138412546;
      v38 = v33;
      v39 = 1024;
      resultCopy4 = result;
      _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "Error: Could not add planar object for detection: %@ Reason: %i", &v37, 0x12u);
    }

    if (!*type || *type == -3)
    {
      *type = -3;
      name = [imageCopy name];
      if (name)
      {
        name3 = [imageCopy name];
        v27 = name3;
      }

      else
      {
        v27 = ARKitCoreBundle();
        name3 = [v27 localizedStringForKey:@"<Unnamed>" value:&stru_1F4208A80 table:@"Localizable"];
      }

      [v15 addObject:name3];
      if (!name)
      {
      }

      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    +[ARODTHandleManager accumulateReferenceImageErrorsForResult:refImage:objectID:pReferenceImageMap:pFailedReferenceImageNames:pUserErrorType:];
  }

  v20 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v21 = _ARLogTechnique();
  v22 = v21;
  if (v20 == 1)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = [imageCopy description];
      v37 = 138412546;
      v38 = v23;
      v39 = 1024;
      resultCopy4 = 15;
      _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_ERROR, "Could not add planar object for detection: %@ Reason: %i", &v37, 0x12u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v35 = [imageCopy description];
    v37 = 138412546;
    v38 = v35;
    v39 = 1024;
    resultCopy4 = 15;
    _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "Error: Could not add planar object for detection: %@ Reason: %i", &v37, 0x12u);
  }

  if (!*type || *type == -2)
  {
    *type = -2;
    name = [imageCopy name];
    if (name)
    {
      name4 = [imageCopy name];
      v27 = name4;
    }

    else
    {
      v27 = ARKitCoreBundle();
      name4 = [v27 localizedStringForKey:@"<Unnamed>" value:&stru_1F4208A80 table:@"Localizable"];
    }

    [v15 addObject:name4];
    if (!name)
    {
    }

    goto LABEL_29;
  }

LABEL_30:
}

+ (id)handleAccumulatedErrorType:(int64_t)type failedReferenceImageNames:(id)names
{
  v36[3] = *MEMORY[0x1E69E9840];
  namesCopy = names;
  switch(type)
  {
    case -3:
      v21 = _ARLogSession();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_DEFAULT, "An unknown error occurred while loading ARReferenceImages for detection. Please file a bug report.", buf, 2u);
      }

      v22 = MEMORY[0x1E696AEC0];
      v23 = ARKitCoreBundle();
      v24 = [v23 localizedStringForKey:@"One or more reference images could not be loaded due to an unknown error: %@" value:&stru_1F4208A80 table:@"Localizable"];
      v25 = [namesCopy componentsJoinedByString:{@", "}];
      v10 = [v22 stringWithFormat:v24, v25];

      v32[0] = namesCopy;
      v26 = *MEMORY[0x1E696A598];
      v31[0] = @"ARErrorItems";
      v31[1] = v26;
      suggestionInternalError = [objc_opt_class() suggestionInternalError];
      v31[2] = *MEMORY[0x1E696A588];
      v32[1] = suggestionInternalError;
      v32[2] = v10;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

      v14 = ARErrorWithCodeAndUserInfo(300, v13);
      goto LABEL_9;
    case -2:
      v15 = MEMORY[0x1E696AEC0];
      v16 = ARKitCoreBundle();
      v17 = [v16 localizedStringForKey:@"One or more reference images have insufficient texture: %@" value:&stru_1F4208A80 table:@"Localizable"];
      v18 = [namesCopy componentsJoinedByString:{@", "}];
      v10 = [v15 stringWithFormat:v17, v18];

      v34[0] = namesCopy;
      v19 = *MEMORY[0x1E696A598];
      v33[0] = @"ARErrorItems";
      v33[1] = v19;
      suggestionInvalidFeature = [objc_opt_class() suggestionInvalidFeature];
      v33[2] = *MEMORY[0x1E696A588];
      v34[1] = suggestionInvalidFeature;
      v34[2] = v10;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];

      v14 = ARErrorWithCodeAndUserInfo(300, v13);
      goto LABEL_9;
    case -1:
      v6 = MEMORY[0x1E696AEC0];
      v7 = ARKitCoreBundle();
      v8 = [v7 localizedStringForKey:@"One or more reference images have an invalid size: %@" value:&stru_1F4208A80 table:@"Localizable"];
      v9 = [namesCopy componentsJoinedByString:{@", "}];
      v10 = [v6 stringWithFormat:v8, v9];

      v36[0] = namesCopy;
      v11 = *MEMORY[0x1E696A598];
      v35[0] = @"ARErrorItems";
      v35[1] = v11;
      suggestionInvalidImage = [objc_opt_class() suggestionInvalidImage];
      v35[2] = *MEMORY[0x1E696A588];
      v36[1] = suggestionInvalidImage;
      v36[2] = v10;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];

      v14 = ARErrorWithCodeAndUserInfo(300, v13);
LABEL_9:
      v28 = v14;

      goto LABEL_11;
  }

  v28 = 0;
LABEL_11:

  return v28;
}

- (int)waitForAllObjectsAddToFinish
{
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v3 = CV3DODTWaitForAllObjectsAddToFinish();
  dispatch_semaphore_signal(self->_odtHandleSemaphore);
  return v3;
}

- (int)addReferenceObject:(id)object tracking:(BOOL)tracking pObjectID:(unint64_t *)d
{
  objectCopy = object;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  trackingData = [objectCopy trackingData];
  v9 = CV3DODTAdd3dObject();

  odtCounter = self->_odtCounter;
  *d = odtCounter;
  self->_odtCounter = odtCounter + 1;
  dispatch_semaphore_signal(self->_odtHandleSemaphore);

  return v9;
}

- (int)detectReferenceObjectsForImageData:(id)data worldTrackingPose:(id)pose imageContext:(const void *)context pResultArray:(id *)array
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  poseCopy = pose;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v21 = 0;
  v10 = [objc_opt_class() _calibrationDataFromImageData:dataCopy pCalibrationData:&v21];
  v11 = v21;
  if (v10)
  {
    dispatch_semaphore_signal(self->_odtHandleSemaphore);

    v12 = 7;
  }

  else
  {
    [poseCopy visionCameraTransform];
    [dataCopy pixelBuffer];
    [dataCopy timestamp];
    v12 = CV3DODTDetectWithMetadata();
    v17 = objc_opt_new();
    v18 = v17;
    *array = v17;
    CV3DODTObjectInfoRelease();

    dispatch_semaphore_signal(self->_odtHandleSemaphore);
  }

  return v12;
}

- (int)trackPlanarObjectAndEstimateScaleForImageData:(id)data worldTrackingPose:(id)pose imageContext:(const void *)context timeBudget:(double)budget pResultArray:(id *)array
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  poseCopy = pose;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v13 = objc_opt_new();
  arrayCopy = array;
  v26 = v13;
  v14 = [objc_opt_class() _calibrationDataFromImageData:dataCopy pCalibrationData:&v26];
  v15 = v26;

  if (v14)
  {

    v16 = 7;
  }

  else
  {
    if (budget > 0.0)
    {
      CV3DODTSetMaximumTrackingTime();
    }

    if (poseCopy)
    {
      [poseCopy visionCameraTransform];
      [dataCopy pixelBuffer];
      [dataCopy timestamp];
      v21 = CV3DODTTrackAndEstimateScale();
    }

    else
    {
      [dataCopy pixelBuffer];
      [dataCopy timestamp];
      v21 = CV3DODTTrack();
    }

    v16 = v21;
    v22 = objc_opt_new();
    v23 = v22;
    *arrayCopy = v22;
    CV3DODTObjectInfoRelease();

    dispatch_semaphore_signal(self->_odtHandleSemaphore);
  }

  return v16;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_odtHandle)
  {
    v3 = _ARLogTechnique();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      odtHandle = self->_odtHandle;
      *buf = 138543874;
      v12 = v5;
      v13 = 2048;
      selfCopy2 = self;
      v15 = 2048;
      v16 = odtHandle;
      _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Releasing Image Detection handle: %p …", buf, 0x20u);
    }

    CV3DODTRelease();
    self->_odtHandle = 0;
    v7 = _ARLogTechnique();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543618;
      v12 = v9;
      v13 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ImageDetectionHandle handle released", buf, 0x16u);
    }
  }

  if (self->_mlModel)
  {
    CV3DMLModelRelease();
  }

  v10.receiver = self;
  v10.super_class = ARODTHandleManager;
  [(ARODTHandleManager *)&v10 dealloc];
}

- (int)predictPlanarObjectsAtTimestamp:(double)timestamp worldTrackingPose:(id)pose timeBudget:(double)budget pResultArray:(id *)array
{
  v21 = *MEMORY[0x1E69E9840];
  poseCopy = pose;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (budget > 0.0)
  {
    CV3DODTSetMaximumTrackingTime();
  }

  if (poseCopy)
  {
    [poseCopy visionCameraTransform];
    ARMatrix4x4RowMajorRotationAndTranslation(v20, &v19, v10, v11, v12, v13);
    v14 = CV3DODTImagePredictInWorld();
  }

  else
  {
    v14 = CV3DODTImagePredict();
  }

  v15 = v14;
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v17 = v16;
  *array = v16;
  CV3DODTObjectInfoRelease();

  dispatch_semaphore_signal(self->_odtHandleSemaphore);
  return v15;
}

+ (int)verifyReferenceImage:(id)image
{
  imageCopy = image;
  [imageCopy pixelBuffer];
  [imageCopy alphaMask];
  [imageCopy physicalSize];
  v4 = CV3DODTVerifyReferenceImage();

  return v4;
}

- (void)updatePowerUsage:(unint64_t)usage
{
  if (self->_odtPowerUsage != usage)
  {
    self->_odtPowerUsage = usage;
    dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    CV3DODTSetPerformanceMode();
    odtHandleSemaphore = self->_odtHandleSemaphore;

    dispatch_semaphore_signal(odtHandleSemaphore);
  }
}

- (void)releaseODTHandle
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_odtHandle)
  {
    v3 = _ARLogTechnique();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      odtHandle = self->_odtHandle;
      v10 = 138543874;
      v11 = v5;
      v12 = 2048;
      selfCopy2 = self;
      v14 = 2048;
      v15 = odtHandle;
      _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Releasing Image Detection handle: %p …", &v10, 0x20u);
    }

    CV3DODTRelease();
    self->_odtHandle = 0;
    v7 = _ARLogTechnique();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138543618;
      v11 = v9;
      v12 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ImageDetectionHandle handle released", &v10, 0x16u);
    }
  }

  dispatch_semaphore_signal(self->_odtHandleSemaphore);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSDictionary *)self->_options isEqual:equalCopy[4]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int)_calibrationDataFromImageData:(id)data pCalibrationData:(id *)calibrationData
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = objc_opt_new();
  CVPixelBufferLockBaseAddress([dataCopy pixelBuffer], 0);
  [dataCopy cameraIntrinsics];
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  Width = CVPixelBufferGetWidth([dataCopy pixelBuffer]);
  Height = CVPixelBufferGetHeight([dataCopy pixelBuffer]);
  if (MEMORY[0x1C6919C80](v6, Width, Height, v18, v18, v18, v18, "Perspective", v15, v16, *&v17, *(&v17 + 1), 0.0))
  {
    CVPixelBufferUnlockBaseAddress([dataCopy pixelBuffer], 0);
    v12 = 8;
  }

  else
  {
    v13 = v6;
    *calibrationData = v6;
    CVPixelBufferUnlockBaseAddress([dataCopy pixelBuffer], 0);
    v12 = 0;
  }

  return v12;
}

@end