@interface AR2DSkeletonDetectionTechnique
+ (CGSize)inputDimensionsForMLModel;
- (AR2DSkeletonDetectionTechnique)init;
- (double)requiredTimeInterval;
- (id)processImageDataThroughNeuralNetwork:(id)network originalImageData:(id)data regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (void)_prepareOnce:(BOOL)once;
@end

@implementation AR2DSkeletonDetectionTechnique

+ (CGSize)inputDimensionsForMLModel
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E698A8E8]) initWithAlgorithmMode:1];
  if (v3)
  {
    [MEMORY[0x1E698A908] inputDimensionsForModelWithABPKNetworkConfig:v3];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      +[AR2DSkeletonDetectionTechnique inputDimensionsForMLModel];
    }

    v8 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v9 = _ARLogGeneral();
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v17 = 138543618;
        v18 = v12;
        v19 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to initialize config for ABPK 2D Detection module", &v17, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v17 = 138543618;
      v18 = v14;
      v19 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to initialize config for ABPK 2D Detection module", &v17, 0x16u);
    }

    v5 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
  }

  v15 = v5;
  v16 = v7;
  result.height = v16;
  result.width = v15;
  return result;
}

- (AR2DSkeletonDetectionTechnique)init
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = _ARLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v12 = v5;
    v13 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Initializing", buf, 0x16u);
  }

  v6 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.abpk.humanpose2d");
  [objc_opt_class() inputDimensionsForMLModel];
  v10.receiver = self;
  v10.super_class = AR2DSkeletonDetectionTechnique;
  v7 = [(ARMLImageProcessingTechnique *)&v10 initWithDispatchQueue:v6 networkInputScaleBeforeRotation:1 delegateInference:?];
  v8 = v7;
  if (v7)
  {
    [(ARMLImageProcessingTechnique *)v7 setUseEspressoZeroCopyOutput:1];
  }

  return v8;
}

- (void)_prepareOnce:(BOOL)once
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E698A8E8]) initWithAlgorithmMode:1];
  v5 = [objc_alloc(MEMORY[0x1E698A8E0]) initWithNetworkConfig:v4];
  algorithm = self->_algorithm;
  self->_algorithm = v5;

  if (!self->_algorithm)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      +[AR2DSkeletonDetectionTechnique inputDimensionsForMLModel];
    }

    v7 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v8 = _ARLogGeneral();
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138543618;
        v19 = v11;
        v20 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: ABPK2DDetection could not be initialized!", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v19 = v13;
      v20 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: ABPK2DDetection could not be initialized!", buf, 0x16u);
    }

    if (ARSkipCrashOnCrash(void)::onceToken != -1)
    {
      [AR2DSkeletonDetectionTechnique _prepareOnce:];
    }

    if ((ARSkipCrashOnCrash(void)::skipCrashOnCrash & 1) == 0)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ABPK2DDetection could not be initialized!"];
      v16 = [v14 stringWithFormat:@"ARCrash: %@", v15];

      v17 = v16;
      qword_1EBF41A28 = strdup([v16 UTF8String]);
      if (!ARInternalOSBuild())
      {
        abort();
      }

      ARAbortWithError(v16);
    }
  }
}

- (double)requiredTimeInterval
{
  if ([AR2DSkeletonDetectionTechnique requiredTimeInterval]::onceToken != -1)
  {
    [AR2DSkeletonDetectionTechnique requiredTimeInterval];
  }

  return *&[AR2DSkeletonDetectionTechnique requiredTimeInterval]::sTimeInterval;
}

uint64_t __54__AR2DSkeletonDetectionTechnique_requiredTimeInterval__block_invoke()
{
  result = ARIsANEVersionEqualOrPriorToH12();
  v1 = 0.008;
  if (result)
  {
    v1 = 0.016;
  }

  [AR2DSkeletonDetectionTechnique requiredTimeInterval]::sTimeInterval = *&v1;
  return result;
}

- (id)processImageDataThroughNeuralNetwork:(id)network originalImageData:(id)data regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  v35 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  dataCopy = data;
  [networkCopy timestamp];
  [(AR2DSkeletonDetectionTechnique *)self _startMLRunNetworkSignpostWithTimestamp:?];
  v11 = _ARLogGeneral();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v31 = 138543618;
    v32 = v13;
    v33 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: processImageDataThroughNeuralNetwork", &v31, 0x16u);
  }

  v14 = [(ARMLImageProcessingTechnique *)self getDeviceOrientationFromImageData:dataCopy];
  [dataCopy imageResolution];
  v16 = v15;
  v18 = v17;
  [networkCopy imageResolution];
  v21 = [objc_alloc(MEMORY[0x1E698A938]) initWithType:1 inputResolution:v16 outputResolution:{v18, v19, v20}];
  v22 = objc_alloc(MEMORY[0x1E698A940]);
  pixelBuffer = [networkCopy pixelBuffer];
  [networkCopy timestamp];
  v24 = [v22 initWithPixelBuffer:pixelBuffer timestamp:v14 abpkDeviceOrientation:v21 preprocessingParameters:?];
  v25 = objc_alloc(MEMORY[0x1E698A930]);
  pixelBuffer2 = [dataCopy pixelBuffer];
  [dataCopy timestamp];
  v27 = [v25 initWithPixelBuffer:pixelBuffer2 timestamp:?];
  algorithm = self->_algorithm;
  [v24 timestamp];
  v29 = [(ABPK2DDetection *)algorithm runWithMLImage:v24 originalImage:v27 abpkOrientation:v14 atTimestamp:tensor rotationOfResultTensor:?];
  [networkCopy timestamp];
  [(AR2DSkeletonDetectionTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];

  return v29;
}

- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  height = interest.height;
  width = interest.width;
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  imageDataCopy = imageData;
  v13 = _ARLogGeneral();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138543618;
    v22 = v15;
    v23 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: runNeuralNetworkWithImageData", buf, 0x16u);
  }

  if (self->_algorithm)
  {
    v16 = dataCopy == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  else
  {
    [imageDataCopy timestamp];
    [(AR2DSkeletonDetectionTechnique *)self _startMLProcessingSignpostWithTimestamp:?];
    height = [(AR2DSkeletonDetectionTechnique *)self processImageDataThroughNeuralNetwork:dataCopy originalImageData:imageDataCopy regionOfInterest:tensor rotationOfResultTensor:width, height];
    [imageDataCopy timestamp];
    [(AR2DSkeletonDetectionTechnique *)self _endMLProcessingSignpostWithTimestamp:?];
    if (height)
    {
      v20 = height;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    }

    else
    {
      v17 = MEMORY[0x1E695E0F0];
    }
  }

  return v17;
}

@end