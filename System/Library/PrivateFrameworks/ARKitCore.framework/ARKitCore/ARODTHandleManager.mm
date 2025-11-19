@interface ARODTHandleManager
+ (id)handleAccumulatedErrorType:(int64_t)a3 failedReferenceImageNames:(id)a4;
+ (id)suggestionInternalError;
+ (id)suggestionInvalidFeature;
+ (id)suggestionInvalidImage;
+ (int)_calibrationDataFromImageData:(id)a3 pCalibrationData:(id *)a4;
+ (int)verifyReferenceImage:(id)a3;
+ (int64_t)actualNumberOfImagesTracked:(int64_t)a3;
+ (void)accumulateReferenceImageErrorsForResult:(int)a3 refImage:(id)a4 objectID:(unint64_t)a5 pReferenceImageMap:(id *)a6 pFailedReferenceImageNames:(id *)a7 pUserErrorType:(int64_t *)a8;
- (ARODTHandleManager)init;
- (ARODTHandleManager)initWithDeterministicMode:(BOOL)a3;
- (ARODTHandleManager)initWithMaximumNumberOfTrackedImages:(int64_t)a3 continuousDetection:(BOOL)a4 deterministicMode:(BOOL)a5;
- (ARODTHandleManager)initWithRegionProposalModelAndDeterministicMode:(BOOL)a3;
- (BOOL)continuousDetection;
- (BOOL)deterministicMode;
- (BOOL)isEqual:(id)a3;
- (int)addReferenceImage:(id)a3 tracking:(BOOL)a4 pObjectID:(unint64_t *)a5;
- (int)addReferenceObject:(id)a3 tracking:(BOOL)a4 pObjectID:(unint64_t *)a5;
- (int)detectReferenceObjectsForImageData:(id)a3 worldTrackingPose:(id)a4 imageContext:(const void *)a5 pResultArray:(id *)a6;
- (int)predictPlanarObjectsAtTimestamp:(double)a3 worldTrackingPose:(id)a4 timeBudget:(double)a5 pResultArray:(id *)a6;
- (int)trackPlanarObjectAndEstimateScaleForImageData:(id)a3 worldTrackingPose:(id)a4 imageContext:(const void *)a5 timeBudget:(double)a6 pResultArray:(id *)a7;
- (int)waitForAllObjectsAddToFinish;
- (int64_t)maximumNumberOfTrackedImages;
- (void)dealloc;
- (void)releaseODTHandle;
- (void)updatePowerUsage:(unint64_t)a3;
@end

@implementation ARODTHandleManager

- (int64_t)maximumNumberOfTrackedImages
{
  v2 = [(NSDictionary *)self->_options objectForKey:*MEMORY[0x1E698BC20]];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)continuousDetection
{
  v2 = [(NSDictionary *)self->_options objectForKey:*MEMORY[0x1E698BC18]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)deterministicMode
{
  v2 = [(NSDictionary *)self->_options objectForKey:*MEMORY[0x1E698BC10]];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (int64_t)actualNumberOfImagesTracked:(int64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
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
    v3 = a3;
    if (CV3DODTGetMaxSupportedNumberImagesToTrack() < a3)
    {
      v3 = CV3DODTGetMaxSupportedNumberImagesToTrack();
      v4 = _ARLogSession();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        v8 = v3;
        _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "Warning: Maximum number of tracked images exceeds the maximum. Using a value of %ld instead.", &v7, 0xCu);
      }
    }
  }

  return v3;
}

- (ARODTHandleManager)initWithMaximumNumberOfTrackedImages:(int64_t)a3 continuousDetection:(BOOL)a4 deterministicMode:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v35[3] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = ARODTHandleManager;
  v8 = [(ARODTHandleManager *)&v27 init];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = [objc_opt_class() actualNumberOfImagesTracked:a3];
  v34[0] = *MEMORY[0x1E698BC20];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v35[0] = v10;
  v34[1] = *MEMORY[0x1E698BC10];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v35[1] = v11;
  v34[2] = *MEMORY[0x1E698BC18];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v6];
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

- (ARODTHandleManager)initWithDeterministicMode:(BOOL)a3
{
  v3 = a3;
  v28[1] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = ARODTHandleManager;
  v4 = [(ARODTHandleManager *)&v20 init];
  if (!v4)
  {
    goto LABEL_9;
  }

  v27 = *MEMORY[0x1E698BC10];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
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

- (ARODTHandleManager)initWithRegionProposalModelAndDeterministicMode:(BOOL)a3
{
  v3 = a3;
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
  v26 = [MEMORY[0x1E696AD98] numberWithBool:v3];
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

- (int)addReferenceImage:(id)a3 tracking:(BOOL)a4 pObjectID:(unint64_t *)a5
{
  v7 = a3;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [v7 pixelBuffer];
  [v7 alphaMask];
  [v7 physicalSize];
  v8 = CV3DODTAddPlanarObject();
  odtCounter = self->_odtCounter;
  *a5 = odtCounter;
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

+ (void)accumulateReferenceImageErrorsForResult:(int)a3 refImage:(id)a4 objectID:(unint64_t)a5 pReferenceImageMap:(id *)a6 pFailedReferenceImageNames:(id *)a7 pUserErrorType:(int64_t *)a8
{
  v41 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = *a6;
  v15 = *a7;
  if (a3 > 0xF)
  {
    goto LABEL_20;
  }

  if (((1 << a3) & 0x6030) != 0)
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
        v19 = [v13 description];
        v37 = 138412546;
        v38 = v19;
        v39 = 1024;
        v40 = a3;
        _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_ERROR, "Could not add planar object for detection: %@ Reason: %i", &v37, 0x12u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v24 = [v13 description];
      v37 = 138412546;
      v38 = v24;
      v39 = 1024;
      v40 = a3;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "Error: Could not add planar object for detection: %@ Reason: %i", &v37, 0x12u);
    }

    if ((*a8 + 1) <= 1)
    {
      *a8 = -1;
      v25 = [v13 name];
      if (v25)
      {
        v26 = [v13 name];
        v27 = v26;
      }

      else
      {
        v27 = ARKitCoreBundle();
        v26 = [v27 localizedStringForKey:@"<Unnamed>" value:&stru_1F4208A80 table:@"Localizable"];
      }

      [v15 addObject:v26];
      if (!v25)
      {
      }

LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if (!a3)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    [v14 setObject:v13 forKey:v32];

    goto LABEL_30;
  }

  if (a3 != 15)
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
        v31 = [v13 description];
        v37 = 138412546;
        v38 = v31;
        v39 = 1024;
        v40 = a3;
        _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_ERROR, "Could not add planar object for detection: %@ Reason: %i", &v37, 0x12u);
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v33 = [v13 description];
      v37 = 138412546;
      v38 = v33;
      v39 = 1024;
      v40 = a3;
      _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "Error: Could not add planar object for detection: %@ Reason: %i", &v37, 0x12u);
    }

    if (!*a8 || *a8 == -3)
    {
      *a8 = -3;
      v25 = [v13 name];
      if (v25)
      {
        v34 = [v13 name];
        v27 = v34;
      }

      else
      {
        v27 = ARKitCoreBundle();
        v34 = [v27 localizedStringForKey:@"<Unnamed>" value:&stru_1F4208A80 table:@"Localizable"];
      }

      [v15 addObject:v34];
      if (!v25)
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
      v23 = [v13 description];
      v37 = 138412546;
      v38 = v23;
      v39 = 1024;
      v40 = 15;
      _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_ERROR, "Could not add planar object for detection: %@ Reason: %i", &v37, 0x12u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v35 = [v13 description];
    v37 = 138412546;
    v38 = v35;
    v39 = 1024;
    v40 = 15;
    _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "Error: Could not add planar object for detection: %@ Reason: %i", &v37, 0x12u);
  }

  if (!*a8 || *a8 == -2)
  {
    *a8 = -2;
    v25 = [v13 name];
    if (v25)
    {
      v36 = [v13 name];
      v27 = v36;
    }

    else
    {
      v27 = ARKitCoreBundle();
      v36 = [v27 localizedStringForKey:@"<Unnamed>" value:&stru_1F4208A80 table:@"Localizable"];
    }

    [v15 addObject:v36];
    if (!v25)
    {
    }

    goto LABEL_29;
  }

LABEL_30:
}

+ (id)handleAccumulatedErrorType:(int64_t)a3 failedReferenceImageNames:(id)a4
{
  v36[3] = *MEMORY[0x1E69E9840];
  v5 = a4;
  switch(a3)
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
      v25 = [v5 componentsJoinedByString:{@", "}];
      v10 = [v22 stringWithFormat:v24, v25];

      v32[0] = v5;
      v26 = *MEMORY[0x1E696A598];
      v31[0] = @"ARErrorItems";
      v31[1] = v26;
      v27 = [objc_opt_class() suggestionInternalError];
      v31[2] = *MEMORY[0x1E696A588];
      v32[1] = v27;
      v32[2] = v10;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

      v14 = ARErrorWithCodeAndUserInfo(300, v13);
      goto LABEL_9;
    case -2:
      v15 = MEMORY[0x1E696AEC0];
      v16 = ARKitCoreBundle();
      v17 = [v16 localizedStringForKey:@"One or more reference images have insufficient texture: %@" value:&stru_1F4208A80 table:@"Localizable"];
      v18 = [v5 componentsJoinedByString:{@", "}];
      v10 = [v15 stringWithFormat:v17, v18];

      v34[0] = v5;
      v19 = *MEMORY[0x1E696A598];
      v33[0] = @"ARErrorItems";
      v33[1] = v19;
      v20 = [objc_opt_class() suggestionInvalidFeature];
      v33[2] = *MEMORY[0x1E696A588];
      v34[1] = v20;
      v34[2] = v10;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];

      v14 = ARErrorWithCodeAndUserInfo(300, v13);
      goto LABEL_9;
    case -1:
      v6 = MEMORY[0x1E696AEC0];
      v7 = ARKitCoreBundle();
      v8 = [v7 localizedStringForKey:@"One or more reference images have an invalid size: %@" value:&stru_1F4208A80 table:@"Localizable"];
      v9 = [v5 componentsJoinedByString:{@", "}];
      v10 = [v6 stringWithFormat:v8, v9];

      v36[0] = v5;
      v11 = *MEMORY[0x1E696A598];
      v35[0] = @"ARErrorItems";
      v35[1] = v11;
      v12 = [objc_opt_class() suggestionInvalidImage];
      v35[2] = *MEMORY[0x1E696A588];
      v36[1] = v12;
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

- (int)addReferenceObject:(id)a3 tracking:(BOOL)a4 pObjectID:(unint64_t *)a5
{
  v7 = a3;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v8 = [v7 trackingData];
  v9 = CV3DODTAdd3dObject();

  odtCounter = self->_odtCounter;
  *a5 = odtCounter;
  self->_odtCounter = odtCounter + 1;
  dispatch_semaphore_signal(self->_odtHandleSemaphore);

  return v9;
}

- (int)detectReferenceObjectsForImageData:(id)a3 worldTrackingPose:(id)a4 imageContext:(const void *)a5 pResultArray:(id *)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v21 = 0;
  v10 = [objc_opt_class() _calibrationDataFromImageData:v8 pCalibrationData:&v21];
  v11 = v21;
  if (v10)
  {
    dispatch_semaphore_signal(self->_odtHandleSemaphore);

    v12 = 7;
  }

  else
  {
    [v9 visionCameraTransform];
    [v8 pixelBuffer];
    [v8 timestamp];
    v12 = CV3DODTDetectWithMetadata();
    v17 = objc_opt_new();
    v18 = v17;
    *a6 = v17;
    CV3DODTObjectInfoRelease();

    dispatch_semaphore_signal(self->_odtHandleSemaphore);
  }

  return v12;
}

- (int)trackPlanarObjectAndEstimateScaleForImageData:(id)a3 worldTrackingPose:(id)a4 imageContext:(const void *)a5 timeBudget:(double)a6 pResultArray:(id *)a7
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v13 = objc_opt_new();
  v25 = a7;
  v26 = v13;
  v14 = [objc_opt_class() _calibrationDataFromImageData:v11 pCalibrationData:&v26];
  v15 = v26;

  if (v14)
  {

    v16 = 7;
  }

  else
  {
    if (a6 > 0.0)
    {
      CV3DODTSetMaximumTrackingTime();
    }

    if (v12)
    {
      [v12 visionCameraTransform];
      [v11 pixelBuffer];
      [v11 timestamp];
      v21 = CV3DODTTrackAndEstimateScale();
    }

    else
    {
      [v11 pixelBuffer];
      [v11 timestamp];
      v21 = CV3DODTTrack();
    }

    v16 = v21;
    v22 = objc_opt_new();
    v23 = v22;
    *v25 = v22;
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
      v14 = self;
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
      v14 = self;
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

- (int)predictPlanarObjectsAtTimestamp:(double)a3 worldTrackingPose:(id)a4 timeBudget:(double)a5 pResultArray:(id *)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a4;
  dispatch_semaphore_wait(self->_odtHandleSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (a5 > 0.0)
  {
    CV3DODTSetMaximumTrackingTime();
  }

  if (v9)
  {
    [v9 visionCameraTransform];
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
  *a6 = v16;
  CV3DODTObjectInfoRelease();

  dispatch_semaphore_signal(self->_odtHandleSemaphore);
  return v15;
}

+ (int)verifyReferenceImage:(id)a3
{
  v3 = a3;
  [v3 pixelBuffer];
  [v3 alphaMask];
  [v3 physicalSize];
  v4 = CV3DODTVerifyReferenceImage();

  return v4;
}

- (void)updatePowerUsage:(unint64_t)a3
{
  if (self->_odtPowerUsage != a3)
  {
    self->_odtPowerUsage = a3;
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
      v13 = self;
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
      v13 = self;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ImageDetectionHandle handle released", &v10, 0x16u);
    }
  }

  dispatch_semaphore_signal(self->_odtHandleSemaphore);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSDictionary *)self->_options isEqual:v4[4]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int)_calibrationDataFromImageData:(id)a3 pCalibrationData:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  CVPixelBufferLockBaseAddress([v5 pixelBuffer], 0);
  [v5 cameraIntrinsics];
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  Width = CVPixelBufferGetWidth([v5 pixelBuffer]);
  Height = CVPixelBufferGetHeight([v5 pixelBuffer]);
  if (MEMORY[0x1C6919C80](v6, Width, Height, v18, v18, v18, v18, "Perspective", v15, v16, *&v17, *(&v17 + 1), 0.0))
  {
    CVPixelBufferUnlockBaseAddress([v5 pixelBuffer], 0);
    v12 = 8;
  }

  else
  {
    v13 = v6;
    *a4 = v6;
    CVPixelBufferUnlockBaseAddress([v5 pixelBuffer], 0);
    v12 = 0;
  }

  return v12;
}

@end