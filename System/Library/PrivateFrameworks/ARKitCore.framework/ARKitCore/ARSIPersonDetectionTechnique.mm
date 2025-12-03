@interface ARSIPersonDetectionTechnique
- (ARSIPersonDetectionTechnique)init;
- (BOOL)isLoadedModelVersionCorrect:(id)correct;
- (id)createResultDataFromAlgorithmOutput:(id)output imageDataForNeuralNetwork:(id)network inputImageData:(id)data rotationNeeded:(int64_t)needed regionOfInterest:(CGSize)interest;
- (id)resultDataClasses;
- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (void)_prepareOnce:(BOOL)once;
- (void)dealloc;
@end

@implementation ARSIPersonDetectionTechnique

- (ARSIPersonDetectionTechnique)init
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.persondetectiontechnique");
  v10.receiver = self;
  v10.super_class = ARSIPersonDetectionTechnique;
  v4 = [(ARMLImageProcessingTechnique *)&v10 initWithDispatchQueue:v3 networkInputScaleBeforeRotation:1 delegateInference:256.0, 256.0];
  if (v4)
  {
    v5 = _ARLogTechnique();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138543618;
      v12 = v7;
      v13 = 2048;
      v14 = v4;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Running person detection technique by SceneIntelligence", buf, 0x16u);
    }

    v4->_lastTimestamp = -1.0;
    v4->_imageNetworkSize = vdupq_n_s64(0x4070000000000000uLL);
    v8 = [ARKitUserDefaults objectForKey:@"com.apple.arkit.personDetectionTechnique.mergeLargelyOverlappingBoundingBoxes" useCache:0];
    v4->_mergeLargelyOverlappingBoxes = [v8 BOOLValue];

    [(ARMLImageProcessingTechnique *)v4 setAllowedResamplingImageSize:256.0, 256.0];
  }

  return v4;
}

- (void)_prepareOnce:(BOOL)once
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E69C9CD8]) initWithComputeEngine:1 andNetworkConfiguration:0];
  algorithm = self->_algorithm;
  self->_algorithm = v4;

  if (!self->_algorithm)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSIPersonDetectionTechnique _prepareOnce:];
    }

    v6 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v7 = _ARLogGeneral();
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138543618;
        v18 = v10;
        v19 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: SIPersonDetectorAlgorithm could not be initialized!", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543618;
      v18 = v12;
      v19 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: SIPersonDetectorAlgorithm could not be initialized!", buf, 0x16u);
    }

    if (ARSkipCrashOnCrash(void)::onceToken != -1)
    {
      [ARSIPersonDetectionTechnique _prepareOnce:];
    }

    if ((ARSkipCrashOnCrash(void)::skipCrashOnCrash & 1) == 0)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SIPersonDetectorAlgorithm could not be initialized!"];
      v15 = [v13 stringWithFormat:@"ARCrash: %@", v14];

      v16 = v15;
      qword_1EBF41A28 = strdup([v15 UTF8String]);
      if (!ARInternalOSBuild())
      {
        abort();
      }

      ARAbortWithError(v15);
    }
  }
}

- (void)dealloc
{
  depthPixelBufferPool = self->_depthPixelBufferPool;
  if (depthPixelBufferPool)
  {
    CVPixelBufferPoolRelease(depthPixelBufferPool);
    self->_depthPixelBufferPool = 0;
  }

  v4.receiver = self;
  v4.super_class = ARSIPersonDetectionTechnique;
  [(ARMLImageProcessingTechnique *)&v4 dealloc];
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (BOOL)isLoadedModelVersionCorrect:(id)correct
{
  v4.receiver = self;
  v4.super_class = ARSIPersonDetectionTechnique;
  return [(ARMLImageProcessingTechnique *)&v4 ARMLVerifyLoadedModelVersion:correct deviceName:@"D" major:2 minor:1];
}

- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  height = interest.height;
  width = interest.width;
  v17[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v11 = dataCopy;
  if (self->_algorithm)
  {
    v12 = dataCopy == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  else
  {
    [dataCopy timestamp];
    [(ARSIPersonDetectionTechnique *)self _startMLRunNetworkSignpostWithTimestamp:?];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    -[SIPersonDetectorAlgorithm runWithInput:output:](self->_algorithm, "runWithInput:output:", [v11 pixelBuffer], v13);
    [v11 timestamp];
    [(ARSIPersonDetectionTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
    height = [(ARSIPersonDetectionTechnique *)self createResultDataFromAlgorithmOutput:v13 imageDataForNeuralNetwork:v11 inputImageData:v11 rotationNeeded:tensor regionOfInterest:width, height];
    v17[0] = height;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  return v15;
}

- (id)createResultDataFromAlgorithmOutput:(id)output imageDataForNeuralNetwork:(id)network inputImageData:(id)data rotationNeeded:(int64_t)needed regionOfInterest:(CGSize)interest
{
  v45 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  networkCopy = network;
  v12 = objc_opt_new();
  v13 = [outputCopy count];
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = [outputCopy objectAtIndexedSubscript:i];
      [v15 boundingBox];
      ARCGRectRotate(needed, v16, v17, v18, v19);
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v28 = [[ARPersonDetectionResult alloc] initWithBoundingBox:v21, v23, v25, v27];
      [v12 addObject:v28];
    }
  }

  v29 = objc_opt_new();
  [v29 setDetectedObjects:v12];
  [networkCopy timestamp];
  [v29 setTimestamp:?];
  if (self->_mergeLargelyOverlappingBoxes)
  {
    LODWORD(v30) = 1058642330;
    v31 = [v29 mergeOverlappingDetectionsWithThreshold:v30];

    v32 = _ARLogTechnique();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      detectedObjects = [v31 detectedObjects];
      v37 = 138544130;
      v38 = v34;
      v39 = 2048;
      selfCopy = self;
      v41 = 1024;
      v42 = [detectedObjects count];
      v43 = 1024;
      v44 = [v12 count];
      _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Detections %d / %d.", &v37, 0x22u);
    }
  }

  else
  {
    v31 = v29;
  }

  return v31;
}

@end