@interface ARImageDetectionTechnique
+ (BOOL)_redetectionRequiredForContext:(id)context;
- (ARImageDetectionTechnique)initWithReferenceImages:(id)images maximumNumberOfTrackedImages:(int64_t)trackedImages;
- (ARImageDetectionTechnique)initWithReferenceImages:(id)images maximumNumberOfTrackedImages:(int64_t)trackedImages continuousDetection:(BOOL)detection processingQueue:(id)queue;
- (BOOL)finishedLoadingImages;
- (BOOL)isEqual:(id)equal;
- (double)requiredTimeInterval;
- (id).cxx_construct;
- (id)_addReferenceImagesAppleCV3D;
- (id)_trackImagesWithImageData:(id)data timeBudget:(double)budget;
- (id)predictAtTimeStamp:(double)stamp timeBudget:(double)budget predictedWorldTrackingPose:(id)pose;
- (id)processData:(id)data;
- (id)processResultData:(id)data timestamp:(double)timestamp context:(id)context;
- (void)_enqueueImageForTrackingNonBlocking:(id)blocking;
- (void)_enqueueImageForTrackingSynced:(id)synced;
- (void)_loadReferenceImages;
- (void)_loadReferenceImagesInBackground;
- (void)prepare:(BOOL)prepare;
- (void)setPowerUsage:(unint64_t)usage;
@end

@implementation ARImageDetectionTechnique

- (ARImageDetectionTechnique)initWithReferenceImages:(id)images maximumNumberOfTrackedImages:(int64_t)trackedImages
{
  imagesCopy = images;
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imageDetection.fixedPriorityProcessingQueue"])
  {
    v7 = ARCreateFixedPriorityDispatchQueueWithQOS("com.apple.arkit.technique.imageDetection");
    v8 = _ARLogTechnique();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v9 = "ARImageDetectionTechnique: Created fixed priority serial queue for image detection";
      v10 = &v14;
LABEL_6:
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, v9, v10, 2u);
    }
  }

  else
  {
    v7 = ARCreateNonFixedPriorityDispatchQueue("com.apple.arkit.technique.imageDetection");
    v8 = _ARLogTechnique();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 0;
      v9 = "ARImageDetectionTechnique: Created non-fixed priority serial queue for image detection";
      v10 = &v13;
      goto LABEL_6;
    }
  }

  v11 = [(ARImageDetectionTechnique *)self initWithReferenceImages:imagesCopy maximumNumberOfTrackedImages:trackedImages processingQueue:v7];
  return v11;
}

- (ARImageDetectionTechnique)initWithReferenceImages:(id)images maximumNumberOfTrackedImages:(int64_t)trackedImages continuousDetection:(BOOL)detection processingQueue:(id)queue
{
  imagesCopy = images;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = ARImageDetectionTechnique;
  v12 = [(ARImageBasedTechnique *)&v23 init];
  v13 = v12;
  if (v12)
  {
    v12->_maximumNumberOfTrackedImages = trackedImages;
    v12->_continuousDetection = detection;
    v14 = [imagesCopy copy];
    referenceImages = v13->_referenceImages;
    v13->_referenceImages = v14;

    v16 = dispatch_semaphore_create(0);
    loadingSemaphore = v13->_loadingSemaphore;
    v13->_loadingSemaphore = v16;

    dispatch_semaphore_signal(v13->_loadingSemaphore);
    v18 = dispatch_semaphore_create(1);
    dataSemaphore = v13->_dataSemaphore;
    v13->_dataSemaphore = v18;

    v20 = dispatch_semaphore_create(1);
    detectionSemaphore = v13->_detectionSemaphore;
    v13->_detectionSemaphore = v20;

    v13->_finishedLoadingImages = 0;
    v13->_needsWorldTrackingPoseData = 1;
    objc_storeStrong(&v13->_processDataQueue, queue);
    v13->_tracking = trackedImages > 0;
    std::allocate_shared[abi:ne200100]<arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>,std::allocator<arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>>,int,0>();
  }

  return 0;
}

- (double)requiredTimeInterval
{
  syncWithProcessedImage = [(ARImageDetectionTechnique *)self syncWithProcessedImage];
  result = 0.016;
  if (!syncWithProcessedImage)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)finishedLoadingImages
{
  dispatch_semaphore_wait(self->_dataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  finishedLoadingImages = self->_finishedLoadingImages;
  dispatch_semaphore_signal(self->_dataSemaphore);
  return finishedLoadingImages;
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8.receiver = self;
    v8.super_class = ARImageDetectionTechnique;
    v5 = [(ARImageBasedTechnique *)&v8 processData:dataCopy];
    v6 = dataCopy;
    if ([(ARImageDetectionTechnique *)self finishedLoadingImages])
    {
      if ([(ARImageDetectionTechnique *)self syncWithProcessedImage])
      {
        [(ARImageDetectionTechnique *)self _enqueueImageForTrackingSynced:v6];
      }

      else
      {
        [(ARImageDetectionTechnique *)self _enqueueImageForTrackingNonBlocking:v6];
      }

      if ([(ARImageDetectionTechnique *)self deterministicMode])
      {
        dispatch_sync(self->_processDataQueue, &__block_literal_global_21);
      }
    }

    else
    {
      [v6 timestamp];
      [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
    }
  }

  return dataCopy;
}

- (id)processResultData:(id)data timestamp:(double)timestamp context:(id)context
{
  v41 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  contextCopy = context;
  if (self->_needsWorldTrackingPoseData)
  {
    v31 = dataCopy;
    v8 = [dataCopy indexOfObjectPassingTest:&__block_literal_global_7];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = [dataCopy objectAtIndexedSubscript:v8];
    }

    [(ARImageDetectionTechnique *)self setCurrentWorldTrackingPose:v9, v9];
    if (v9)
    {
      worldTrackingState = [v27 worldTrackingState];
      vioTrackingState = [worldTrackingState vioTrackingState];

      if (!vioTrackingState)
      {
        [v27 cameraTransform];
        *__p = v12;
        v36 = v13;
        v37 = v14;
        v38 = v15;
        v16 = [MEMORY[0x1E695DEF0] dataWithBytes:__p length:64];
        v17 = v16;
        arkit::wrapRawData([v16 bytes], objc_msgSend(v16, "length"), buf);
        imageData = [contextCopy imageData];
        ARImageContextFromImageData(imageData);
        v20 = v19;

        v34 = v20;
        arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>::insert();
      }
    }

    v21 = [v31 count];
    if (v21)
    {
      v30 = v21;
      for (i = 0; i != v30; ++i)
      {
        v32 = [v31 objectAtIndex:i];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v32;
          memset(v33, 0, sizeof(v33));
          v29 = v23;
          detectedImages = [v23 detectedImages];
          if ([detectedImages countByEnumeratingWithState:v33 objects:v39 count:16])
          {
            v25 = **(&v33[0] + 1);
            __p[0] = 0;
            __p[1] = 0;
            *&v36 = 0;
            *buf = [v25 imageContext];
            arkit::KeyMapBuffer<void const*,std::vector<unsigned char>>::find();
          }
        }
      }
    }

    dataCopy = v31;
  }

  return dataCopy;
}

uint64_t __65__ARImageDetectionTechnique_processResultData_timestamp_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)_redetectionRequiredForContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = [contextCopy resultDataOfClass:objc_opt_class()];
  firstObject = [v5 firstObject];

  worldTrackingState = [firstObject worldTrackingState];
  poseGraphUpdated = [worldTrackingState poseGraphUpdated];

  if (poseGraphUpdated)
  {
    v9 = _ARLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v22 = 138543618;
      v23 = v11;
      v24 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Redetection of image anchors is required. Reason: pose-graph update.", &v22, 0x16u);
    }
  }

  else
  {
    worldTrackingState2 = [firstObject worldTrackingState];
    majorRelocalization = [worldTrackingState2 majorRelocalization];

    if (majorRelocalization)
    {
      v9 = _ARLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v22 = 138543618;
        v23 = v15;
        v24 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Redetection of image anchors is required. Reason: Relocalization.", &v22, 0x16u);
      }
    }

    else
    {
      worldTrackingState3 = [firstObject worldTrackingState];
      vioTrackingState = [worldTrackingState3 vioTrackingState];

      if (!vioTrackingState)
      {
        v20 = 0;
        goto LABEL_11;
      }

      v9 = _ARLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v22 = 138543618;
        v23 = v19;
        v24 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Redetection of image anchors is required. Reason: VIO Tracking state changed.", &v22, 0x16u);
      }
    }
  }

  v20 = 1;
LABEL_11:

  return v20;
}

- (void)_loadReferenceImagesInBackground
{
  v16[2] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_processDataQueue);
  [(NSArray *)self->_referenceImages count];
  kdebug_trace();
  [(NSArray *)self->_referenceImages count];
  kdebug_trace();
  _addReferenceImagesAppleCV3D = [(ARImageDetectionTechnique *)self _addReferenceImagesAppleCV3D];
  [(NSArray *)self->_referenceImages count];
  [_addReferenceImagesAppleCV3D code];
  kdebug_trace();
  if (_addReferenceImagesAppleCV3D)
  {
    [(NSArray *)self->_referenceImages count];
    [_addReferenceImagesAppleCV3D code];
    kdebug_trace();
    delegate = [(ARTechnique *)self delegate];
    [delegate technique:self didFailWithError:_addReferenceImagesAppleCV3D];
  }

  else
  {
    odtTHandleManger = [(ARImageDetectionTechnique *)self odtTHandleManger];
    waitForAllObjectsAddToFinish = [odtTHandleManger waitForAllObjectsAddToFinish];

    if (waitForAllObjectsAddToFinish)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = ARKitCoreBundle();
      v9 = [v8 localizedStringForKey:@"Reference images could not be loaded due to an unknown error: %d" value:&stru_1F4208A80 table:@"Localizable"];
      v10 = [v7 stringWithFormat:v9, waitForAllObjectsAddToFinish];

      v15[0] = *MEMORY[0x1E696A598];
      v11 = +[ARODTHandleManager suggestionInternalError];
      v15[1] = *MEMORY[0x1E696A588];
      v16[0] = v11;
      v16[1] = v10;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

      v13 = ARErrorWithCodeAndUserInfo(151, v12);
      delegate2 = [(ARTechnique *)self delegate];
      [delegate2 technique:self didFailWithError:v13];
    }

    [(NSArray *)self->_referenceImages count];
    kdebug_trace();
    dispatch_semaphore_wait(self->_dataSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    self->_finishedLoadingImages = 1;
    dispatch_semaphore_signal(self->_dataSemaphore);
  }
}

- (void)_loadReferenceImages
{
  referenceImageMap = [(ARImageDetectionTechnique *)self referenceImageMap];

  if (!referenceImageMap)
  {
    v4 = self->_loadingSemaphore;
    if (!dispatch_semaphore_wait(v4, 0))
    {
      objc_initWeak(&location, self);
      processDataQueue = self->_processDataQueue;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __49__ARImageDetectionTechnique__loadReferenceImages__block_invoke;
      v6[3] = &unk_1E817C2D8;
      objc_copyWeak(&v7, &location);
      dispatch_async(processDataQueue, v6);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void __49__ARImageDetectionTechnique__loadReferenceImages__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadReferenceImagesInBackground];
}

- (void)prepare:(BOOL)prepare
{
  prepareCopy = prepare;
  v20 = *MEMORY[0x1E69E9840];
  odtTHandleManger = [(ARImageDetectionTechnique *)self odtTHandleManger];

  if (!odtTHandleManger)
  {
    self->_deterministicMode = prepareCopy;
    v6 = [[ARODTHandleManager alloc] initWithMaximumNumberOfTrackedImages:self->_maximumNumberOfTrackedImages continuousDetection:self->_continuousDetection deterministicMode:prepareCopy];
    odtTHandleManger = self->_odtTHandleManger;
    self->_odtTHandleManger = v6;

    odtTHandleManger2 = [(ARImageDetectionTechnique *)self odtTHandleManger];

    if (!odtTHandleManger2)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARImageDetectionTechnique prepare:];
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
          v16 = 138543618;
          v17 = v13;
          v18 = 2048;
          selfCopy2 = self;
          _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create AppleCV3D handle for image detection.", &v16, 0x16u);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = 138543618;
        v17 = v15;
        v18 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create AppleCV3D handle for image detection.", &v16, 0x16u);
      }
    }

    [(ARImageDetectionTechnique *)self _loadReferenceImages];
    if ([(ARImageDetectionTechnique *)self deterministicMode])
    {
      dispatch_sync(self->_processDataQueue, &__block_literal_global_23);
    }
  }
}

- (id)_addReferenceImagesAppleCV3D
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v22 = 0;
  v23 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_referenceImages;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      v7 = 0;
      v8 = v4;
      v9 = v3;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v7);
        odtTHandleManger = [(ARImageDetectionTechnique *)self odtTHandleManger];
        v12 = [odtTHandleManger addReferenceImage:v10 tracking:1 pObjectID:&v22];

        v16 = v8;
        v17 = v9;
        [ARODTHandleManager accumulateReferenceImageErrorsForResult:v12 refImage:v10 objectID:v22 pReferenceImageMap:&v17 pFailedReferenceImageNames:&v16 pUserErrorType:&v23];
        v3 = v17;

        v4 = v16;
        ++v22;
        ++v7;
        v8 = v4;
        v9 = v3;
      }

      while (v5 != v7);
      v5 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  objc_storeStrong(&self->_referenceImageMap, v3);
  v13 = [ARODTHandleManager handleAccumulatedErrorType:v23 failedReferenceImageNames:v4];

  return v13;
}

- (void)_enqueueImageForTrackingSynced:(id)synced
{
  syncedCopy = synced;
  date = [MEMORY[0x1E695DF00] date];
  objc_initWeak(&location, self);
  processDataQueue = self->_processDataQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__ARImageDetectionTechnique__enqueueImageForTrackingSynced___block_invoke;
  v9[3] = &unk_1E817C350;
  objc_copyWeak(&v12, &location);
  v10 = date;
  v11 = syncedCopy;
  v7 = syncedCopy;
  v8 = date;
  dispatch_async(processDataQueue, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __60__ARImageDetectionTechnique__enqueueImageForTrackingSynced___block_invoke(id *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained deterministicMode];
    v5 = 0.0;
    if ((v4 & 1) != 0 || ([v3 requiredTimeInterval], v7 = v6, objc_msgSend(a1[4], "timeIntervalSinceNow"), v5 = v7 + v8 + -0.002, v5 > 0.0))
    {
      v9 = [v3 _trackImagesWithImageData:a1[5] timeBudget:v5];
      v10 = v9;
      if (v9)
      {
        v12[0] = v9;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      }

      else
      {
        v11 = MEMORY[0x1E695E0F0];
      }

      [a1[5] timestamp];
      [v3 pushResultData:v11 forTimestamp:?];
    }

    else
    {
      [a1[5] timestamp];
      [v3 pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
    }
  }
}

- (void)_enqueueImageForTrackingNonBlocking:(id)blocking
{
  blockingCopy = blocking;
  [blockingCopy timestamp];
  [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
  v5 = self->_detectionSemaphore;
  if (!dispatch_semaphore_wait(v5, 0))
  {
    objc_initWeak(&location, self);
    processDataQueue = self->_processDataQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__ARImageDetectionTechnique__enqueueImageForTrackingNonBlocking___block_invoke;
    v7[3] = &unk_1E817C350;
    objc_copyWeak(&v10, &location);
    v8 = v5;
    v9 = blockingCopy;
    dispatch_async(processDataQueue, v7);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __65__ARImageDetectionTechnique__enqueueImageForTrackingNonBlocking___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _trackImagesWithImageData:*(a1 + 40) timeBudget:0.0];
    v5 = v4;
    if (v4)
    {
      v7[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
      [v3 pushResultData:v6 forFrame:0];
    }

    else
    {
      [*(a1 + 40) timestamp];
      [v3 pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (id)_trackImagesWithImageData:(id)data timeBudget:(double)budget
{
  v55 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v46 = dataCopy;
  if (dataCopy)
  {
    [dataCopy timestamp];
    odtTHandleManger = [(ARImageDetectionTechnique *)self odtTHandleManger];
    [odtTHandleManger maximumNumberOfTrackedImages];
    kdebug_trace();

    v8 = _ARLogTechnique();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      enableAutomaticImageScaleEstimation = [(ARImageDetectionTechnique *)self enableAutomaticImageScaleEstimation];
      v12 = @"OFF";
      *buf = 138543874;
      v50 = v10;
      if (enableAutomaticImageScaleEstimation)
      {
        v12 = @"ON";
      }

      v51 = 2048;
      selfCopy4 = self;
      v53 = 2112;
      v54 = v12;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Attempting to track planar object. Automatic scale estimation = %@", buf, 0x20u);
    }

    if ([(ARImageDetectionTechnique *)self enableAutomaticImageScaleEstimation])
    {
      odtTHandleManger2 = [(ARImageDetectionTechnique *)self odtTHandleManger];
      currentWorldTrackingPose = [(ARImageDetectionTechnique *)self currentWorldTrackingPose];
      ARImageContextFromImageData(v46);
      v48 = 0;
      v16 = [odtTHandleManger2 trackPlanarObjectAndEstimateScaleForImageData:v46 worldTrackingPose:currentWorldTrackingPose imageContext:v15 timeBudget:&v48 pResultArray:budget];
      v17 = v48;
    }

    else
    {
      odtTHandleManger2 = [(ARImageDetectionTechnique *)self odtTHandleManger];
      ARImageContextFromImageData(v46);
      v47 = 0;
      v16 = [odtTHandleManger2 trackPlanarObjectForImageData:v46 imageContext:v19 timeBudget:&v47 pResultArray:budget];
      v17 = v47;
    }

    if (v16)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARImageDetectionTechnique _trackImagesWithImageData:timeBudget:];
      }

      v20 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v21 = _ARLogTechnique();
      v22 = v21;
      if (v20 == 1)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          *buf = 138543874;
          v50 = v24;
          v51 = 2048;
          selfCopy4 = self;
          v53 = 1024;
          LODWORD(v54) = v16;
          _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Tracking failed with error %d.", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138543874;
        v50 = v26;
        v51 = 2048;
        selfCopy4 = self;
        v53 = 1024;
        LODWORD(v54) = v16;
        _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Tracking failed with error %d.", buf, 0x1Cu);
      }
    }

    [v46 timestamp];
    [v17 count];
    kdebug_trace();
    v27 = _ARLogTechnique();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v17 count];
      *buf = 138543874;
      v50 = v29;
      v51 = 2048;
      selfCopy4 = self;
      v53 = 1024;
      LODWORD(v54) = v30;
      _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Tracking %d images", buf, 0x1Cu);
    }

    v31 = objc_opt_new();
    for (i = 0; [v17 count] > i; ++i)
    {
      referenceImageMap = [(ARImageDetectionTechnique *)self referenceImageMap];
      v34 = MEMORY[0x1E696AD98];
      v35 = [v17 objectAtIndexedSubscript:i];
      v36 = [v34 numberWithInteger:{objc_msgSend(v35, "detectedObjectID")}];
      v37 = [referenceImageMap objectForKeyedSubscript:v36];

      v38 = objc_opt_new();
      v39 = [v17 objectAtIndexedSubscript:i];
      [v39 visionTransform];
      [v38 setVisionTransform:?];

      v40 = [v17 objectAtIndexedSubscript:i];
      [v38 setImageContext:{objc_msgSend(v40, "imageContext")}];

      [v38 setReferenceImage:v37];
      v41 = [v17 objectAtIndexedSubscript:i];
      [v41 estimatedScaleFactor];
      [v38 setEstimatedScaleFactor:?];

      v42 = [v17 objectAtIndexedSubscript:i];
      [v38 setOdtObjectIdentifer:{objc_msgSend(v42, "detectedObjectID")}];

      [v31 addObject:v38];
    }

    v18 = objc_opt_new();
    [v18 setDetectedImages:v31];
    [v18 setProvidesWorldTrackingCameraPose:self->_needsWorldTrackingPoseData];
    odtTHandleManger3 = [(ARImageDetectionTechnique *)self odtTHandleManger];
    if ([odtTHandleManger3 maximumNumberOfTrackedImages])
    {
      needsWorldTrackingPoseData = 0;
    }

    else
    {
      needsWorldTrackingPoseData = self->_needsWorldTrackingPoseData;
    }

    [v18 setDetectionOnly:needsWorldTrackingPoseData];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)setPowerUsage:(unint64_t)usage
{
  v6.receiver = self;
  v6.super_class = ARImageDetectionTechnique;
  [(ARTechnique *)&v6 setPowerUsage:?];
  odtTHandleManger = [(ARImageDetectionTechnique *)self odtTHandleManger];
  [odtTHandleManger updatePowerUsage:usage];
}

- (id)predictAtTimeStamp:(double)stamp timeBudget:(double)budget predictedWorldTrackingPose:(id)pose
{
  v54 = *MEMORY[0x1E69E9840];
  poseCopy = pose;
  odtTHandleManger = [(ARImageDetectionTechnique *)self odtTHandleManger];
  if ([odtTHandleManger maximumNumberOfTrackedImages])
  {
  }

  else
  {
    needsWorldTrackingPoseData = self->_needsWorldTrackingPoseData;

    if (needsWorldTrackingPoseData)
    {
      v11 = 0;
      goto LABEL_31;
    }
  }

  v12 = _ARLogTechnique();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v49 = v14;
    v50 = 2048;
    selfCopy5 = self;
    _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Attempting to predict planar object", buf, 0x16u);
  }

  odtTHandleManger2 = [(ARImageDetectionTechnique *)self odtTHandleManger];
  v47 = 0;
  v16 = [odtTHandleManger2 predictPlanarObjectsAtTimestamp:0 worldTrackingPose:&v47 timeBudget:stamp pResultArray:budget];
  v17 = v47;

  if (v16)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARImageDetectionTechnique _trackImagesWithImageData:timeBudget:];
    }

    v18 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v19 = _ARLogTechnique();
    log = v19;
    if (v18 == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138543874;
        v49 = v21;
        v50 = 2048;
        selfCopy5 = self;
        v52 = 1024;
        v53 = v16;
        _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Prediction failed with error %d.", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *buf = 138543874;
      v49 = v43;
      v50 = 2048;
      selfCopy5 = self;
      v52 = 1024;
      v53 = v16;
      _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Prediction failed with error %d.", buf, 0x1Cu);
    }

    v11 = 0;
  }

  else
  {
    v22 = _ARLogTechnique();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v17 count];
      *buf = 138543874;
      v49 = v24;
      v50 = 2048;
      selfCopy5 = self;
      v52 = 1024;
      v53 = v25;
      _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Prediction %d images", buf, 0x1Cu);
    }

    log = objc_opt_new();
    v26 = 0;
    *&v27 = 138543618;
    v45 = v27;
    while ([v17 count] > v26)
    {
      referenceImageMap = [(ARImageDetectionTechnique *)self referenceImageMap];
      v29 = MEMORY[0x1E696AD98];
      v30 = [v17 objectAtIndexedSubscript:v26];
      v31 = [v29 numberWithInteger:{objc_msgSend(v30, "detectedObjectID")}];
      v32 = [referenceImageMap objectForKeyedSubscript:v31];

      if (v32)
      {
        v33 = objc_opt_new();
        v34 = [v17 objectAtIndexedSubscript:v26];
        [v34 visionTransform];
        [v33 setVisionTransform:?];

        v35 = [v17 objectAtIndexedSubscript:v26];
        -[NSObject setImageContext:](v33, "setImageContext:", [v35 imageContext]);

        [v33 setReferenceImage:v32];
        v36 = [v17 objectAtIndexedSubscript:v26];
        [v36 estimatedScaleFactor];
        [v33 setEstimatedScaleFactor:?];

        v37 = [v17 objectAtIndexedSubscript:v26];
        -[NSObject setOdtObjectIdentifer:](v33, "setOdtObjectIdentifer:", [v37 detectedObjectID]);

        if (poseCopy)
        {
          [poseCopy cameraTransform];
          [v33 setWorldTrackingCameraTransformAtDetection:?];
          [log addObject:v33];
        }
      }

      else
      {
        v33 = _ARLogTechnique();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          *buf = v45;
          v49 = v39;
          v50 = 2048;
          selfCopy5 = self;
          _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_INFO, "%{public}@ <%p>: No matching reference image found, throwing away prediction.", buf, 0x16u);
        }
      }

      ++v26;
    }

    v11 = objc_opt_new();
    [v11 setDetectedImages:log];
    [v11 setProvidesWorldTrackingCameraPose:self->_needsWorldTrackingPoseData];
    odtTHandleManger3 = [(ARImageDetectionTechnique *)self odtTHandleManger];
    if ([odtTHandleManger3 maximumNumberOfTrackedImages])
    {
      v41 = 0;
    }

    else
    {
      v41 = self->_needsWorldTrackingPoseData;
    }

    [v11 setDetectionOnly:v41];

    [v11 setPredicted:1];
  }

LABEL_31:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = ARImageDetectionTechnique;
  if ([(ARTechnique *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = [(NSArray *)self->_referenceImages isEqual:v5[11]]&& self->_needsWorldTrackingPoseData == *(v5 + 176) && self->_enableAutomaticImageScaleEstimation == *(v5 + 177) && self->_maximumNumberOfTrackedImages == v5[18] && self->_continuousDetection == *(v5 + 152);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 20) = 0;
  *(self + 21) = 0;
  return self;
}

@end