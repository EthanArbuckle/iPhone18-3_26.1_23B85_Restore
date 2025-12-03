@interface ARMLImageProcessingTechnique
+ (BOOL)isSupported;
- ($C4732ECC957FA13B9B3DF4A51A95735B)espressoNetwork;
- ($F613A077D53D3D97A8E0FDF5BAE1891D)networkInputParams;
- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)queue inputTensorNames:(id)names outputTensorNames:(id)tensorNames networkInputScaleBeforeRotation:(CGSize)rotation networkFilePath:(id)path;
- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)queue inputTensorNames:(id)names outputTensorNames:(id)tensorNames networkInputScaleBeforeRotation:(CGSize)rotation networkFilePath:(id)path useEspressoZeroCopyOutput:(BOOL)output;
- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)queue networkInputScaleBeforeRotation:(CGSize)rotation delegateInference:(BOOL)inference;
- (BOOL)ARMLVerifyLoadedModelVersion:(id)version deviceName:(id)name major:(int)major minor:(int)minor;
- (BOOL)isBusy;
- (CGSize)allowedResamplingImageSize;
- (CGSize)networkInputScaleBeforeRotation;
- (NSString)networkVersionString;
- (id).cxx_construct;
- (id)_resampleImage:(id)image rotationOfResultTensor:(int64_t)tensor networkInputSize:(CGSize)size;
- (id)defaultEngineName;
- (id)networkModesForOrientation:(int64_t)orientation;
- (id)processData:(id)data;
- (id)processImageDataThroughNeuralNetwork:(id)network originalImageData:(id)data regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (int)bindInputBuffer:(unint64_t)buffer withImage:(id)image andOriginalImageData:(id)data rotationOfResultTensor:(int64_t)tensor;
- (int64_t)getDeviceOrientationFromImageData:(id)data;
- (void)_asynchronousProcessDownSampledImage:(id)image;
- (void)_asynchronousProcessEspressoTensor:(id)tensor;
- (void)_bindOutputTensor;
- (void)_runNeuralNetworkAndPushResult:(id)result originalImageData:(id)data regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (void)changeEspressoConfig:(id)config;
- (void)dealloc;
- (void)loadMLWithPath:(id)path networkMode:(id)mode;
- (void)prepare:(BOOL)prepare;
- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)timestamp;
- (void)waitForProcessingCompleteInDeterministicMode;
@end

@implementation ARMLImageProcessingTechnique

+ (BOOL)isSupported
{
  if (+[ARMLImageProcessingTechnique isSupported]::onceToken != -1)
  {
    +[ARMLImageProcessingTechnique isSupported];
  }

  return +[ARMLImageProcessingTechnique isSupported]::supported;
}

uint64_t __43__ARMLImageProcessingTechnique_isSupported__block_invoke()
{
  result = ARAppleNeuralEngine();
  +[ARMLImageProcessingTechnique isSupported]::supported = result;
  return result;
}

- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)queue inputTensorNames:(id)names outputTensorNames:(id)tensorNames networkInputScaleBeforeRotation:(CGSize)rotation networkFilePath:(id)path useEspressoZeroCopyOutput:(BOOL)output
{
  outputCopy = output;
  height = rotation.height;
  width = rotation.width;
  queueCopy = queue;
  namesCopy = names;
  tensorNamesCopy = tensorNames;
  pathCopy = path;
  height = [(ARMLImageProcessingTechnique *)self initWithDispatchQueue:queueCopy inputTensorNames:namesCopy outputTensorNames:tensorNamesCopy networkInputScaleBeforeRotation:pathCopy networkFilePath:width, height];
  v20 = height;
  if (height)
  {
    [(ARMLImageProcessingTechnique *)height setUseEspressoZeroCopyOutput:outputCopy];
  }

  return v20;
}

- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)queue networkInputScaleBeforeRotation:(CGSize)rotation delegateInference:(BOOL)inference
{
  height = rotation.height;
  width = rotation.width;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = ARMLImageProcessingTechnique;
  v11 = [(ARImageBasedTechnique *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_processingQueue, queue);
    v13 = dispatch_semaphore_create(1);
    processingSemaphore = v12->_processingSemaphore;
    v12->_processingSemaphore = v13;

    v12->_prepLock._os_unfair_lock_opaque = 0;
    v12->_lockedOrientation = -1;
    v12->_allowedResamplingImageSize = *MEMORY[0x1E695F060];
    v12->_delegateInference = inference;
    v12->_networkInputScaleBeforeRotation.width = width;
    v12->_networkInputScaleBeforeRotation.height = height;
  }

  return v12;
}

- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)queue inputTensorNames:(id)names outputTensorNames:(id)tensorNames networkInputScaleBeforeRotation:(CGSize)rotation networkFilePath:(id)path
{
  height = rotation.height;
  width = rotation.width;
  queueCopy = queue;
  namesCopy = names;
  tensorNamesCopy = tensorNames;
  pathCopy = path;
  height = [(ARMLImageProcessingTechnique *)self initWithDispatchQueue:queueCopy networkInputScaleBeforeRotation:width, height];
  v18 = height;
  if (height)
  {
    height->_espressoInputBufferTimestamp = 0.0;
    height->_espressoInputBufferLock._os_unfair_lock_opaque = 0;
    v19 = [namesCopy copy];
    inputTensorNames = v18->_inputTensorNames;
    v18->_inputTensorNames = v19;

    v21 = [tensorNamesCopy copy];
    outputTensorNames = v18->_outputTensorNames;
    v18->_outputTensorNames = v21;

    v23 = [pathCopy copy];
    networkFilePath = v18->_networkFilePath;
    v18->_networkFilePath = v23;

    v18->_bgraPixelBufferPool = 0;
    v18->_failedToLoadNetwork = 1;
    [(ARMLImageProcessingTechnique *)v18 setUseEspressoZeroCopyOutput:0];
  }

  return v18;
}

- (BOOL)ARMLVerifyLoadedModelVersion:(id)version deviceName:(id)name major:(int)major minor:(int)minor
{
  nameCopy = name;
  v10 = [version componentsSeparatedByString:@"."];
  v11 = v10;
  if (!v10 || [v10 count] != 3)
  {
    goto LABEL_10;
  }

  v12 = [v11 objectAtIndexedSubscript:1];
  intValue = [v12 intValue];

  v14 = [v11 objectAtIndexedSubscript:2];
  intValue2 = [v14 intValue];

  v16 = [v11 objectAtIndexedSubscript:0];
  v17 = [v16 isEqual:nameCopy];
  if (intValue == major)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 != 1)
  {

    goto LABEL_10;
  }

  if (intValue2 != minor)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v19 = 1;
LABEL_11:

  return v19;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  bgraPixelBufferPool = self->_bgraPixelBufferPool;
  if (bgraPixelBufferPool)
  {
    CVPixelBufferPoolRelease(bgraPixelBufferPool);
    self->_bgraPixelBufferPool = 0;
  }

  begin = self->_espressoOutputBufferPools.__begin_;
  end = self->_espressoOutputBufferPools.__end_;
  while (begin != end)
  {
    if (*begin)
    {
      CVPixelBufferPoolRelease(*begin);
    }

    ++begin;
  }

  v6.receiver = self;
  v6.super_class = ARMLImageProcessingTechnique;
  [(ARMLImageProcessingTechnique *)&v6 dealloc];
}

- ($C4732ECC957FA13B9B3DF4A51A95735B)espressoNetwork
{
  p_espressoNetwork = &self->_espressoNetwork;
  plan = self->_espressoNetwork.plan;
  v4 = *&p_espressoNetwork->network_index;
  result.var1 = v4;
  result.var0 = plan;
  return result;
}

- (id)defaultEngineName
{
  defaultEngine = [(ARMLImageProcessingTechnique *)self defaultEngine];
  if (defaultEngine > 10005)
  {
    if (defaultEngine == 10006)
    {
      return @"ESPRESSO_ENGINE_ANE_RUNTIME_DIRECT";
    }

    if (defaultEngine != 10007)
    {
      if (defaultEngine == 0x7FFFFFFF)
      {
        return @"ESPRESSO_ENGINE_MAX_VAL";
      }

      return &stru_1F4208A80;
    }

    return @"ESPRESSO_ENGINE_ANE_RUNTIME";
  }

  else
  {
    if (!defaultEngine)
    {
      return @"ESPRESSO_ENGINE_CPU";
    }

    if (defaultEngine != 2)
    {
      if (defaultEngine == 5)
      {
        return @"ESPRESSO_ENGINE_MPS";
      }

      return &stru_1F4208A80;
    }

    return @"ESPRESSO_ENGINE_METAL";
  }
}

- (id)networkModesForOrientation:(int64_t)orientation
{
  v19 = *MEMORY[0x1E69E9840];
  if ((orientation - 3) >= 2)
  {
    if ((orientation - 1) < 2)
    {
      return @"portrait";
    }

    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARMLImageProcessingTechnique networkModesForOrientation:];
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
        v13 = 138543874;
        v14 = v10;
        v15 = 2048;
        selfCopy2 = self;
        v17 = 2048;
        orientationCopy2 = orientation;
        _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not find a network config for the device orientation %ld", &v13, 0x20u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138543874;
      v14 = v12;
      v15 = 2048;
      selfCopy2 = self;
      v17 = 2048;
      orientationCopy2 = orientation;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not find a network config for the device orientation %ld", &v13, 0x20u);
    }
  }

  return @"landscape";
}

- (NSString)networkVersionString
{
  v5 = *MEMORY[0x1E69E9840];
  [(ARMLImageProcessingTechnique *)self espressoNetwork:0];
  if (espresso_network_get_version())
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v4];
  }

  return v2;
}

- (void)loadMLWithPath:(id)path networkMode:(id)mode
{
  v68 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  modeCopy = mode;
  if (pathCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [defaultManager fileExistsAtPath:pathCopy];

    if (v9)
    {
      v10 = _ARLogTechnique();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        defaultEngineName = [(ARMLImageProcessingTechnique *)self defaultEngineName];
        *buf = 138543874;
        v63 = v12;
        v64 = 2048;
        selfCopy9 = self;
        v66 = 2112;
        v67 = defaultEngineName;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Setting up espresso engine '%@'.", buf, 0x20u);
      }

      [(ARMLImageProcessingTechnique *)self defaultEngine];
      context = espresso_create_context();
      self->_espressoContext = context;
      if (!context)
      {
        v15 = espresso_create_context();
        self->_espressoContext = v15;
        if (!v15)
        {
          self->_failedToLoadNetwork = 1;
          goto LABEL_30;
        }
      }

      self->_espressoPlan = espresso_create_plan();
      v16 = pathCopy;
      [(__CFString *)pathCopy UTF8String];
      if (espresso_plan_add_network())
      {
        self->_failedToLoadNetwork = 1;
        goto LABEL_30;
      }

      self->_failedToLoadNetwork = 0;
      networkVersionString = [(ARMLImageProcessingTechnique *)self networkVersionString];
      if (networkVersionString)
      {
        v37 = [(ARMLImageProcessingTechnique *)self isLoadedModelVersionCorrect:networkVersionString];
        v38 = _ARLogTechnique();
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
        if (v37)
        {
          if (v39)
          {
            v40 = objc_opt_class();
            v41 = NSStringFromClass(v40);
            *buf = 138543874;
            v63 = v41;
            v64 = 2048;
            selfCopy9 = self;
            v66 = 2112;
            v67 = networkVersionString;
            _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Version '%@'.", buf, 0x20u);
          }

          inputTensorNames = [(ARMLImageProcessingTechnique *)self inputTensorNames];
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke;
          v61[3] = &unk_1E817C510;
          v61[4] = self;
          [inputTensorNames enumerateObjectsUsingBlock:v61];

          outputTensorNames = [(ARMLImageProcessingTechnique *)self outputTensorNames];
          std::vector<espresso_buffer_t>::resize(&self->_espressoOutputTensors.__begin_, [outputTensorNames count]);

          outputTensorNames2 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
          std::vector<__CVPixelBufferPool *>::resize(&self->_espressoOutputBufferPools.__begin_, [outputTensorNames2 count]);

          outputTensorNames3 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
          v60[0] = MEMORY[0x1E69E9820];
          v60[1] = 3221225472;
          v60[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_36;
          v60[3] = &unk_1E817C510;
          v60[4] = self;
          [outputTensorNames3 enumerateObjectsUsingBlock:v60];

          if (!espresso_plan_build())
          {
            [(ARMLImageProcessingTechnique *)self _bindOutputTensor];
            inputTensorNames2 = [(ARMLImageProcessingTechnique *)self inputTensorNames];
            std::vector<espresso_buffer_t>::resize(&self->_espressoInputTensors.__begin_, [inputTensorNames2 count]);

            inputTensorNames3 = [(ARMLImageProcessingTechnique *)self inputTensorNames];
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v59[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_39;
            v59[3] = &unk_1E817C510;
            v59[4] = self;
            [inputTensorNames3 enumerateObjectsUsingBlock:v59];

            inputTensorNames4 = [(ARMLImageProcessingTechnique *)self inputTensorNames];
            v58[0] = MEMORY[0x1E69E9820];
            v58[1] = 3221225472;
            v58[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_41;
            v58[3] = &unk_1E817C510;
            v58[4] = self;
            [inputTensorNames4 enumerateObjectsUsingBlock:v58];

            outputTensorNames4 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_43;
            v57[3] = &unk_1E817C510;
            v57[4] = self;
            [outputTensorNames4 enumerateObjectsUsingBlock:v57];

            goto LABEL_47;
          }

          v46 = _ARLogTechnique();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v47 = objc_opt_class();
            v48 = NSStringFromClass(v47);
            *buf = 138543874;
            v63 = v48;
            v64 = 2048;
            selfCopy9 = self;
            v66 = 2080;
            v67 = "Could not build espresso plan.";
            _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
          }

LABEL_46:
          self->_failedToLoadNetwork = 1;
LABEL_47:

          goto LABEL_30;
        }

        if (v39)
        {
          v51 = objc_opt_class();
          v52 = NSStringFromClass(v51);
          *buf = 138543874;
          v63 = v52;
          v64 = 2048;
          selfCopy9 = self;
          v66 = 2080;
          v67 = "Version mismatch";
          _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
        }
      }

      else
      {
        v38 = _ARLogTechnique();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          *buf = 138543874;
          v63 = v50;
          v64 = 2048;
          selfCopy9 = self;
          v66 = 2080;
          v67 = "Failed to get espresso network version.";
          _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
        }
      }

      goto LABEL_46;
    }

    self->_failedToLoadNetwork = 1;
  }

  else
  {
    self->_failedToLoadNetwork = 1;
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARMLImageProcessingTechnique networkModesForOrientation:];
    }

    v17 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v18 = _ARLogTechnique();
    v19 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138543618;
        v63 = v21;
        v64 = 2048;
        selfCopy9 = self;
        _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Path to network is nil, check if network is added to spatial_splitting_network_mapping.plist file.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543618;
      v63 = v23;
      v64 = 2048;
      selfCopy9 = self;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Path to network is nil, check if network is added to spatial_splitting_network_mapping.plist file.", buf, 0x16u);
    }
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARMLImageProcessingTechnique loadMLWithPath:networkMode:];
  }

  v24 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v25 = _ARLogTechnique();
  v26 = v25;
  if (v24 == 1)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138543874;
      v63 = v28;
      v64 = 2048;
      selfCopy9 = self;
      v66 = 2112;
      v67 = pathCopy;
      _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to load model from path '%@'", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    *buf = 138543874;
    v63 = v30;
    v64 = 2048;
    selfCopy9 = self;
    v66 = 2112;
    v67 = pathCopy;
    _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to load model from path '%@'", buf, 0x20u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v32 = dictionary;
  if (pathCopy)
  {
    v33 = pathCopy;
  }

  else
  {
    v33 = @"<nil>";
  }

  [dictionary setObject:v33 forKeyedSubscript:*MEMORY[0x1E696A368]];
  delegate = [(ARTechnique *)self delegate];
  v35 = ARErrorWithCodeAndUserInfo(1004, v32);
  [delegate technique:self didFailWithError:v35];

LABEL_30:
}

void __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 UTF8String];
  if (espresso_network_declare_input())
  {
    v4 = _ARLogTechnique();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(a1 + 32);
      v8 = 138543874;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      v12 = 2080;
      v13 = "Failure to declare input tensor";
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", &v8, 0x20u);
    }

    *(*(a1 + 32) + 233) = 1;
  }
}

void __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_36(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 UTF8String];
  if (espresso_network_declare_output())
  {
    v4 = _ARLogTechnique();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(a1 + 32);
      v8 = 138543874;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      v12 = 2080;
      v13 = "Failure to declare output tensor";
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", &v8, 0x20u);
    }

    *(*(a1 + 32) + 233) = 1;
  }
}

void __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_39(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) prepareBindInputBuffer:a3 withName:a2])
  {
    v4 = _ARLogTechnique();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(a1 + 32);
      v8 = 138543874;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      v12 = 2080;
      v13 = "Failure to bind input tensor";
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", &v8, 0x20u);
    }

    *(*(a1 + 32) + 233) = 1;
  }
}

void __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_41(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  [v3 UTF8String];
  if (espresso_network_query_blob_dimensions())
  {
    v4 = _ARLogTechnique();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(a1 + 32);
      v8 = 138543874;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      v12 = 2080;
      v13 = "Failure to determine input tensor shape";
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", &v8, 0x20u);
    }

    *(*(a1 + 32) + 233) = 1;
  }
}

void __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_43(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  [v3 UTF8String];
  if (espresso_network_query_blob_dimensions())
  {
    v4 = _ARLogTechnique();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(a1 + 32);
      v8 = 138543874;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      v12 = 2080;
      v13 = "Failure to determine output tensor shape";
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", &v8, 0x20u);
    }

    *(*(a1 + 32) + 233) = 1;
  }
}

- (void)_bindOutputTensor
{
  outputTensorNames = [(ARMLImageProcessingTechnique *)self outputTensorNames];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__ARMLImageProcessingTechnique__bindOutputTensor__block_invoke;
  v4[3] = &unk_1E817C510;
  v4[4] = self;
  [outputTensorNames enumerateObjectsUsingBlock:v4];
}

void __49__ARMLImageProcessingTechnique__bindOutputTensor__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(a1 + 32) useEspressoZeroCopyOutput])
  {
    v6 = [*(a1 + 32) outputTensorNames];
    v7 = [v6 objectAtIndexedSubscript:a3];
    [v7 UTF8String];
    v8 = espresso_network_bind_buffer();

    if (v8)
    {
      v9 = _ARLogTechnique();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = *(a1 + 32);
        *buf = 138543874;
        v58 = v11;
        v59 = 2048;
        v60 = v12;
        v61 = 2080;
        v62 = "Failure to bind output tensor";
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
      }

LABEL_10:
      *(*(a1 + 32) + 233) = 1;
      goto LABEL_26;
    }

    pixelBufferOut = 0;
    v17 = *v69;
    v67 = *MEMORY[0x1E6966120];
    v68 = MEMORY[0x1E695E0F8];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v19 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v17, v18, &pixelBufferOut);
    if (!CVPixelBufferGetIOSurface(pixelBufferOut))
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARMLImageProcessingTechnique loadMLWithPath:networkMode:];
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
          v25 = *(a1 + 32);
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          v28 = *(a1 + 32);
          *buf = 138544130;
          v58 = v24;
          v59 = 2048;
          v60 = v25;
          v61 = 2112;
          v62 = v27;
          v63 = 2048;
          v64 = v28;
          _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ (%p): Could not get IOSurface", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = *(a1 + 32);
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = *(a1 + 32);
        *buf = 138544130;
        v58 = v30;
        v59 = 2048;
        v60 = v31;
        v61 = 2112;
        v62 = v33;
        v63 = 2048;
        v64 = v34;
        _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ (%p): Could not get IOSurface", buf, 0x2Au);
      }
    }

    if (v19)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARMLImageProcessingTechnique loadMLWithPath:networkMode:];
      }

      v40 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v41 = _ARLogTechnique();
      v42 = v41;
      if (v40 == 1)
      {
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          v45 = *(a1 + 32);
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v48 = *(a1 + 32);
          *buf = 138544386;
          v58 = v44;
          v59 = 2048;
          v60 = v45;
          v61 = 2112;
          v62 = v47;
          v63 = 2048;
          v64 = v48;
          v65 = 1024;
          v66 = v19;
          _os_log_impl(&dword_1C241C000, v42, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ (%p): Could not create CVPixelBuffer for neural network: %d", buf, 0x30u);
        }
      }

      else if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v51 = *(a1 + 32);
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v54 = *(a1 + 32);
        *buf = 138544386;
        v58 = v50;
        v59 = 2048;
        v60 = v51;
        v61 = 2112;
        v62 = v53;
        v63 = 2048;
        v64 = v54;
        v65 = 1024;
        v66 = v19;
        _os_log_impl(&dword_1C241C000, v42, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ (%p): Could not create CVPixelBuffer for neural network: %d", buf, 0x30u);
      }

      exception = __cxa_allocate_exception(8uLL);
      *exception = "Error: Could not create CVPixelBuffer for neural network";
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    v35 = v5;
    [v5 UTF8String];
    if (espresso_network_bind_direct_cvpixelbuffer())
    {
      v36 = _ARLogTechnique();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = *(a1 + 32);
        *buf = 138543874;
        v58 = v38;
        v59 = 2048;
        v60 = v39;
        v61 = 2080;
        v62 = "Failure to bind direct cvpixelbuffer output";
        _os_log_impl(&dword_1C241C000, v36, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
      }
    }

    CVPixelBufferRelease(pixelBufferOut);
  }

  else
  {
    [v5 UTF8String];
    if (espresso_network_bind_buffer())
    {
      v13 = _ARLogTechnique();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = *(a1 + 32);
        *v69 = 138543874;
        *&v69[4] = v15;
        v70 = 2048;
        v71 = v16;
        v72 = 2080;
        v73 = "Failure to bind output tensor";
        _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", v69, 0x20u);
      }

      goto LABEL_10;
    }
  }

LABEL_26:
}

- (void)changeEspressoConfig:(id)config
{
  v20 = *MEMORY[0x1E69E9840];
  configCopy = config;
  previous_network_configuration = self->_previous_network_configuration;
  if (previous_network_configuration == configCopy || [(NSString *)previous_network_configuration isEqualToString:configCopy])
  {
    goto LABEL_3;
  }

  [(ARMLImageProcessingTechnique *)self _startLoadingMLModelSignpost];
  espresso_plan_build_clean();
  [(NSString *)configCopy UTF8String];
  if (espresso_network_select_configuration())
  {
    v7 = _ARLogTechnique();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543874;
      v15 = v9;
      v16 = 2048;
      selfCopy2 = self;
      v18 = 2080;
      v19 = "Can't set mode";
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
    }

LABEL_11:

    self->_failedToLoadNetwork = 1;
    goto LABEL_12;
  }

  if (espresso_plan_build())
  {
    v7 = _ARLogTechnique();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543874;
      v15 = v11;
      v16 = 2048;
      selfCopy2 = self;
      v18 = 2080;
      v19 = "Could not rebuild espresso plan";
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
    }

    goto LABEL_11;
  }

  [(ARMLImageProcessingTechnique *)self _bindOutputTensor];
  inputTensorNames = [(ARMLImageProcessingTechnique *)self inputTensorNames];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__ARMLImageProcessingTechnique_changeEspressoConfig___block_invoke;
  v13[3] = &unk_1E817C510;
  v13[4] = self;
  [inputTensorNames enumerateObjectsUsingBlock:v13];

  [(ARMLImageProcessingTechnique *)self _endLoadingMLModelSignpost];
  [(ARMLImageProcessingTechnique *)self networkModeDidChange:self->_previous_network_configuration toMode:configCopy];
LABEL_3:
  objc_storeStrong(&self->_previous_network_configuration, config);
LABEL_12:
}

void __53__ARMLImageProcessingTechnique_changeEspressoConfig___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) prepareBindInputBuffer:a3 withName:a2])
  {
    v4 = _ARLogTechnique();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(a1 + 32);
      v8 = 138543874;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      v12 = 2080;
      v13 = "Failure to bind input tensor";
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", &v8, 0x20u);
    }

    *(*(a1 + 32) + 233) = 1;
  }
}

- (void)prepare:(BOOL)prepare
{
  prepareCopy = prepare;
  os_unfair_lock_lock(&self->_prepLock);
  self->_deterministic = prepareCopy;
  if (self->_hasBegunPrep)
  {

    os_unfair_lock_unlock(&self->_prepLock);
  }

  else
  {
    self->_hasBegunPrep = 1;
    os_unfair_lock_unlock(&self->_prepLock);
    [(ARMLImageProcessingTechnique *)self _prepareOnce:prepareCopy];
    if (!self->_delegateInference)
    {
      [(ARMLImageProcessingTechnique *)self _startLoadingMLModelSignpost];
      [(ARMLImageProcessingTechnique *)self loadMLWithPath:self->_networkFilePath networkMode:0];
      previous_network_configuration = self->_previous_network_configuration;
      self->_previous_network_configuration = 0;

      [(ARMLImageProcessingTechnique *)self _endLoadingMLModelSignpost];
      v6 = +[ARBKSAccelerometer sharedWeakAccelerometerHandle];
      v7 = -[ARMLImageProcessingTechnique networkModesForOrientation:](self, "networkModesForOrientation:", [v6 currentOrientation]);
      [(ARMLImageProcessingTechnique *)self changeEspressoConfig:v7];
    }

    [(ARMLImageProcessingTechnique *)self setPrepComplete:1];
  }
}

- (void)waitForProcessingCompleteInDeterministicMode
{
  if (self->_deterministic)
  {
    dispatch_sync(self->_processingQueue, &__block_literal_global_58);
  }
}

- (id)processData:(id)data
{
  dataCopy = data;
  v7.receiver = self;
  v7.super_class = ARMLImageProcessingTechnique;
  v5 = [(ARImageBasedTechnique *)&v7 processData:dataCopy];
  if ([(ARMLImageProcessingTechnique *)self prepComplete])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(ARMLImageProcessingTechnique *)self requiredSensorDataTypes]& 1) != 0)
    {
      [(ARMLImageProcessingTechnique *)self _asynchronousProcessDownSampledImage:dataCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ARMLImageProcessingTechnique *)self _asynchronousProcessEspressoTensor:dataCopy];
      }
    }

    [(ARMLImageProcessingTechnique *)self waitForProcessingCompleteInDeterministicMode];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(ARMLImageProcessingTechnique *)self requiredSensorDataTypes]& 1) != 0)
    {
      [dataCopy timestamp];
      [(ARMLImageProcessingTechnique *)self pushEmptyResultOnAsynchronousQueueForTimestamp:?];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [dataCopy timestamp];
      [(ARMLImageProcessingTechnique *)self pushEmptyResultOnAsynchronousQueueForTimestamp:?];
    }
  }

  return dataCopy;
}

- (void)_asynchronousProcessDownSampledImage:(id)image
{
  v63 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  latestResizedUltraWideImageData3 = imageCopy;
  if ([(ARMLImageProcessingTechnique *)self shouldUseSynchronizedUltraWide])
  {
    latestResizedUltraWideImageData = [imageCopy latestResizedUltraWideImageData];

    latestResizedUltraWideImageData3 = imageCopy;
    if (latestResizedUltraWideImageData)
    {
      latestResizedUltraWideImageData2 = [imageCopy latestResizedUltraWideImageData];

      if (latestResizedUltraWideImageData2)
      {
        latestResizedUltraWideImageData3 = [imageCopy latestResizedUltraWideImageData];
        originalImageData = imageCopy;
      }

      else
      {
        originalImageData = [imageCopy originalImageData];
        [originalImageData timestamp];
        [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
        latestResizedUltraWideImageData3 = imageCopy;
      }
    }
  }

  p_networkInputScaleBeforeRotation = &self->_networkInputScaleBeforeRotation;
  width = self->_networkInputScaleBeforeRotation.width;
  height = self->_networkInputScaleBeforeRotation.height;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  downScalingResults = [latestResizedUltraWideImageData3 downScalingResults];
  v13 = [downScalingResults countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (!v13)
  {

LABEL_28:
    v25 = p_networkInputScaleBeforeRotation->width;
    v26 = self->_networkInputScaleBeforeRotation.height;
    if (-[ARMLImageProcessingTechnique networkProvidesConfigurationsForDeviceOrientation](self, "networkProvidesConfigurationsForDeviceOrientation") && ([latestResizedUltraWideImageData3 rotationOfResultTensor] == 90 || objc_msgSend(latestResizedUltraWideImageData3, "rotationOfResultTensor") == -90))
    {
      v26 = p_networkInputScaleBeforeRotation->width;
      v25 = self->_networkInputScaleBeforeRotation.height;
    }

    downScalingResults2 = [latestResizedUltraWideImageData3 downScalingResults];
    firstObject = [downScalingResults2 firstObject];
    v14 = -[ARMLImageProcessingTechnique _resampleImage:rotationOfResultTensor:networkInputSize:](self, "_resampleImage:rotationOfResultTensor:networkInputSize:", firstObject, [latestResizedUltraWideImageData3 rotationOfResultTensor], v25, v26);

    goto LABEL_33;
  }

  v14 = 0;
  v15 = *v57;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v57 != v15)
      {
        objc_enumerationMutation(downScalingResults);
      }

      v17 = *(*(&v56 + 1) + 8 * i);
      [v17 imageResolution];
      if (v19 != p_networkInputScaleBeforeRotation->width || v18 != self->_networkInputScaleBeforeRotation.height)
      {
        [v17 imageResolution];
        v23 = v22 == height && v21 == width;
        if (!v23 || ![(ARMLImageProcessingTechnique *)self networkProvidesConfigurationsForDeviceOrientation])
        {
          continue;
        }
      }

      v24 = v17;

      v14 = v24;
    }

    v13 = [downScalingResults countByEnumeratingWithState:&v56 objects:v62 count:16];
  }

  while (v13);

  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_33:
  rotationOfResultTensor = [latestResizedUltraWideImageData3 rotationOfResultTensor];
  [v14 regionOfInterest];
  v31 = v30;
  v33 = v32;
  v34 = objc_opt_new();
  [latestResizedUltraWideImageData3 timestamp];
  [v34 setTimestamp:?];
  if (-[ARMLImageProcessingTechnique shouldUseSynchronizedUltraWide](self, "shouldUseSynchronizedUltraWide") && [v14 undistortedPixelBuffer] || objc_msgSend(v14, "undistortedPixelBuffer"))
  {
    undistortedPixelBuffer = [v14 undistortedPixelBuffer];
  }

  else
  {
    undistortedPixelBuffer = [v14 pixelBuffer];
  }

  [v34 setPixelBuffer:undistortedPixelBuffer];
  v60 = @"croppedRect";
  v36 = MEMORY[0x1E696B098];
  [v14 cropRegion];
  v55[0] = v37;
  v55[1] = v38;
  v55[2] = v39;
  v55[3] = v40;
  v41 = [v36 valueWithBytes:v55 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v61 = v41;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  [v34 setMetaData:v42];

  originalImageData2 = [latestResizedUltraWideImageData3 originalImageData];
  if (dispatch_semaphore_wait(self->_processingSemaphore, 0))
  {
    [latestResizedUltraWideImageData3 timestamp];
    kdebug_trace();
  }

  else
  {
    dispatch_semaphore_signal(self->_processingSemaphore);
  }

  os_unfair_lock_lock(&self->_espressoInputBufferLock);
  [originalImageData2 timestamp];
  self->_espressoInputBufferTimestamp = v44;
  os_unfair_lock_unlock(&self->_espressoInputBufferLock);
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __69__ARMLImageProcessingTechnique__asynchronousProcessDownSampledImage___block_invoke;
  v49[3] = &unk_1E817C538;
  objc_copyWeak(v53, &location);
  v50 = originalImageData2;
  v51 = v34;
  v52 = latestResizedUltraWideImageData3;
  v53[1] = v31;
  v53[2] = v33;
  v53[3] = rotationOfResultTensor;
  v46 = latestResizedUltraWideImageData3;
  v47 = v34;
  v48 = originalImageData2;
  dispatch_async(processingQueue, v49);

  objc_destroyWeak(v53);
  objc_destroyWeak(&location);
}

void __69__ARMLImageProcessingTechnique__asynchronousProcessDownSampledImage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    [*(a1 + 32) timestamp];
    v4 = v3;
    os_unfair_lock_lock(v10 + 30);
    v5 = *(v10 + 14);
    if (v5 == 0.0 || v4 == v5)
    {
      kdebug_trace();
      *(v10 + 14) = 0;
      os_unfair_lock_unlock(v10 + 30);
      dispatch_semaphore_wait(*(v10 + 12), 0xFFFFFFFFFFFFFFFFLL);
      v7 = *(a1 + 40);
      v8 = [*(a1 + 48) originalImageData];
      [v10 _runNeuralNetworkAndPushResult:v7 originalImageData:v8 regionOfInterest:*(a1 + 80) rotationOfResultTensor:{*(a1 + 64), *(a1 + 72)}];

      WeakRetained = v10;
    }

    else
    {
      os_unfair_lock_unlock(v10 + 30);
      kdebug_trace();
      if ([v10 shouldUseSynchronizedUltraWide])
      {
        [*(a1 + 32) timestampOfSynchronizedWideImageData];
        v4 = v9;
      }

      [v10 pushResultData:MEMORY[0x1E695E0F0] forTimestamp:v4];
      WeakRetained = v10;
    }
  }
}

- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)timestamp
{
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__ARMLImageProcessingTechnique_pushEmptyResultOnAsynchronousQueueForTimestamp___block_invoke;
  block[3] = &unk_1E817C560;
  objc_copyWeak(v7, &location);
  v7[1] = *&timestamp;
  dispatch_async(processingQueue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __79__ARMLImageProcessingTechnique_pushEmptyResultOnAsynchronousQueueForTimestamp___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pushResultData:MEMORY[0x1E695E0F0] forTimestamp:*(a1 + 40)];
}

- (void)_runNeuralNetworkAndPushResult:(id)result originalImageData:(id)data regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  height = interest.height;
  width = interest.width;
  resultCopy = result;
  dataCopy = data;
  [dataCopy timestamp];
  [(ARMLImageProcessingTechnique *)self _startMLProcessingSignpostWithTimestamp:?];
  height = [(ARMLImageProcessingTechnique *)self runNeuralNetworkWithImageData:resultCopy originalImageData:dataCopy regionOfInterest:tensor rotationOfResultTensor:width, height];
  dispatch_semaphore_signal(self->_processingSemaphore);
  if ([(ARMLImageProcessingTechnique *)self shouldUseSynchronizedUltraWide])
  {
    [dataCopy timestampOfSynchronizedWideImageData];
  }

  else
  {
    [dataCopy timestamp];
  }

  if (height)
  {
    v13 = height;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  [(ARImageBasedTechnique *)self pushResultData:v13 forTimestamp:?];
  [dataCopy timestamp];
  [(ARMLImageProcessingTechnique *)self _endMLProcessingSignpostWithTimestamp:?];
}

- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  height = interest.height;
  width = interest.width;
  v17[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  imageDataCopy = imageData;
  height = [(ARMLImageProcessingTechnique *)self processImageDataThroughNeuralNetwork:dataCopy originalImageData:imageDataCopy regionOfInterest:tensor rotationOfResultTensor:width, height];
  v14 = height;
  if (height)
  {
    v17[0] = height;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (void)_asynchronousProcessEspressoTensor:(id)tensor
{
  tensorCopy = tensor;
  if (self->_failedToLoadNetwork || dispatch_semaphore_wait(self->_processingSemaphore, 0))
  {
    [tensorCopy timestamp];
    [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
  }

  else
  {
    v5 = self->_processingSemaphore;
    objc_initWeak(&location, self);
    processingQueue = self->_processingQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__ARMLImageProcessingTechnique__asynchronousProcessEspressoTensor___block_invoke;
    v8[3] = &unk_1E817C350;
    objc_copyWeak(&v11, &location);
    v9 = v5;
    v10 = tensorCopy;
    v7 = v5;
    dispatch_async(processingQueue, v8);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __67__ARMLImageProcessingTechnique__asynchronousProcessEspressoTensor___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(a1 + 40) timestamp];
    [(dispatch_semaphore_t *)WeakRetained _startMLProcessingSignpostWithTimestamp:?];
    v3 = [(dispatch_semaphore_t *)WeakRetained processEspressoTensor:*(a1 + 40)];
    dispatch_semaphore_signal(WeakRetained[12]);
    if (v3)
    {
      v5[0] = v3;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    }

    else
    {
      v4 = MEMORY[0x1E695E0F0];
    }

    [*(a1 + 40) timestamp];
    [(dispatch_semaphore_t *)WeakRetained pushResultData:v4 forTimestamp:?];
    if (v3)
    {
    }

    [*(a1 + 40) timestamp];
    [(dispatch_semaphore_t *)WeakRetained _endMLProcessingSignpostWithTimestamp:?];
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (id)_resampleImage:(id)image rotationOfResultTensor:(int64_t)tensor networkInputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  v9 = ARCreateCVPixelBufferFromPool(&self->_bgraPixelBufferPool, 1111970369, self, @"Down Scale Output", width, height);
  if (v9)
  {
    CVPixelBufferLockBaseAddress([imageCopy pixelBuffer], 0);
    CVPixelBufferLockBaseAddress(v9, 0);
    memset(&src, 0, sizeof(src));
    ARWrapCVPixelBufferVImage([imageCopy pixelBuffer], &src.data);
    memset(&v27, 0, sizeof(v27));
    ARWrapCVPixelBufferVImage(v9, &v27.data);
    vImageScale_ARGB8888(&src, &v27, 0, 0x10u);
    CVPixelBufferUnlockBaseAddress(v9, 0);
    CVPixelBufferUnlockBaseAddress([imageCopy pixelBuffer], 0);
    [imageCopy imageResolution];
    v11 = v10;
    [imageCopy imageResolution];
    v13 = v12;
    [imageCopy regionOfInterest];
    v15 = v14;
    [imageCopy regionOfInterest];
    v17 = v16;
    v18 = [ARMLImageDownScalingResult alloc];
    [imageCopy cropRegion];
    v20 = v19;
    v22 = v21;
    *&v19 = width / v11;
    *&v21 = height / v13;
    v25 = [(ARMLImageDownScalingResult *)v18 initWithPixelBuffer:v9 regionOfInterest:v15 * *&v19 cropRegion:v17 * *&v21, v20, v22, v23, v24];
    CVPixelBufferRelease(v9);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- ($F613A077D53D3D97A8E0FDF5BAE1891D)networkInputParams
{
  *&retstr->var4 = 0;
  *&retstr->var0 = xmmword_1C25C89C8;
  return self;
}

- (int)bindInputBuffer:(unint64_t)buffer withImage:(id)image andOriginalImageData:(id)data rotationOfResultTensor:(int64_t)tensor
{
  imageCopy = image;
  v9 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:buffer];
  [v9 UTF8String];
  [imageCopy pixelBuffer];
  v10 = espresso_network_bind_direct_cvpixelbuffer();

  return v10;
}

- (id)processImageDataThroughNeuralNetwork:(id)network originalImageData:(id)data regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  height = interest.height;
  width = interest.width;
  v84 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  dataCopy = data;
  v12 = 0;
  if (networkCopy && !self->_failedToLoadNetwork)
  {
    v70 = [(ARMLImageProcessingTechnique *)self getDeviceOrientationFromImageData:dataCopy];
    v71 = [(ARMLImageProcessingTechnique *)self networkModesForOrientation:?];
    [(ARMLImageProcessingTechnique *)self changeEspressoConfig:?];
    CVPixelBufferLockBaseAddress([networkCopy pixelBuffer], 0);
    [networkCopy timestamp];
    [(ARMLImageProcessingTechnique *)self _startMLRunNetworkSignpostWithTimestamp:?];
    [networkCopy timestamp];
    v14 = v13;
    cameraType = [dataCopy cameraType];
    v16 = [cameraType isEqualToString:*MEMORY[0x1E6986948]];
    v17 = CVPixelBufferGetWidth([networkCopy pixelBuffer]);
    -[ARMLImageProcessingTechnique _captureMLRunNetworkInputImageData:cameraType:imageWidth:imageHeight:](self, "_captureMLRunNetworkInputImageData:cameraType:imageWidth:imageHeight:", v16, v17, CVPixelBufferGetHeight([networkCopy pixelBuffer]), v14);

    __p = 0;
    v74 = 0;
    v75 = 0;
    if ([(ARMLImageProcessingTechnique *)self useEspressoZeroCopyOutput])
    {
      v18 = 0;
      for (i = 0; ; ++i)
      {
        outputTensorNames = [(ARMLImageProcessingTechnique *)self outputTensorNames];
        v21 = i < [outputTensorNames count];

        if (!v21)
        {
          break;
        }

        [networkCopy timestamp];
        kdebug_trace();
        v22 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:i];
        v23 = v22;
        [v22 UTF8String];
        blob_dimensions = espresso_network_query_blob_dimensions();

        if (blob_dimensions)
        {
          v25 = _ARLogTechnique();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            *buf = 138543874;
            v77 = v27;
            v78 = 2048;
            selfCopy2 = self;
            v80 = 2080;
            v81 = "Failure to query network output dimensions";
            _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
          }
        }

        v28 = *v82;
        v29 = *&v82[8];
        v30 = *&v82[16];
        kdebug_trace();
        v31 = ARCreateCVPixelBufferFromPool(&self->_espressoOutputBufferPools.__begin_[v18], 1278226536, self, @"Espresso Output", v28, (v30 * v29));
        kdebug_trace();
        v32 = v74;
        if (v74 >= v75)
        {
          v34 = (v74 - __p) >> 3;
          if ((v34 + 1) >> 61)
          {
            _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
          }

          v35 = (v75 - __p) >> 2;
          if (v35 <= v34 + 1)
          {
            v35 = v34 + 1;
          }

          if (v75 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v36 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v35;
          }

          if (v36)
          {
            std::allocator<__CVPixelBufferPool *>::allocate_at_least[abi:ne200100](&__p, v36);
          }

          *(8 * v34) = v31;
          v33 = 8 * v34 + 8;
          v37 = (8 * v34 - (v74 - __p));
          memcpy(v37, __p, v74 - __p);
          v38 = __p;
          __p = v37;
          v74 = v33;
          v75 = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v74 = v31;
          v33 = (v32 + 8);
        }

        v74 = v33;
        outputTensorNames2 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
        v40 = [outputTensorNames2 objectAtIndexedSubscript:i];
        v41 = v40;
        [v40 UTF8String];
        v42 = espresso_network_bind_direct_cvpixelbuffer();

        if (v42)
        {
          v43 = _ARLogTechnique();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            v44 = objc_opt_class();
            v45 = NSStringFromClass(v44);
            *buf = 138543874;
            v77 = v45;
            v78 = 2048;
            selfCopy2 = self;
            v80 = 2080;
            v81 = "Failure to bind direct cvpixelbuffer output";
            _os_log_impl(&dword_1C241C000, v43, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
          }
        }

        kdebug_trace();
        ++v18;
      }
    }

    for (j = 0; ; ++j)
    {
      inputTensorNames = [(ARMLImageProcessingTechnique *)self inputTensorNames];
      v48 = j < [inputTensorNames count];

      if (!v48)
      {
        break;
      }

      if ([(ARMLImageProcessingTechnique *)self bindInputBuffer:j withImage:networkCopy andOriginalImageData:dataCopy rotationOfResultTensor:tensor])
      {
        [networkCopy timestamp];
        [(ARMLImageProcessingTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARMLImageProcessingTechnique loadMLWithPath:networkMode:];
        }

        v52 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v53 = _ARLogTechnique();
        v54 = v53;
        if (v52 == 1)
        {
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v55 = objc_opt_class();
            v56 = NSStringFromClass(v55);
            *v82 = 138543874;
            *&v82[4] = v56;
            *&v82[12] = 2048;
            *&v82[14] = self;
            *&v82[22] = 2048;
            v83 = j;
            _os_log_impl(&dword_1C241C000, v54, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to bind input buffer for index: '%lu'.", v82, 0x20u);
          }
        }

        else if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v57 = objc_opt_class();
          v58 = NSStringFromClass(v57);
          *v82 = 138543874;
          *&v82[4] = v58;
          *&v82[12] = 2048;
          *&v82[14] = self;
          *&v82[22] = 2048;
          v83 = j;
          _os_log_impl(&dword_1C241C000, v54, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to bind input buffer for index: '%lu'.", v82, 0x20u);
        }

        CVPixelBufferUnlockBaseAddress([networkCopy pixelBuffer], 0);
LABEL_43:
        v12 = 0;
        goto LABEL_44;
      }
    }

    if (espresso_plan_execute_sync())
    {
      v49 = _ARLogTechnique();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        *v82 = 138543874;
        *&v82[4] = v51;
        *&v82[12] = 2048;
        *&v82[14] = self;
        *&v82[22] = 2080;
        v83 = "Failure to run network.";
        _os_log_impl(&dword_1C241C000, v49, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", v82, 0x20u);
      }

      CVPixelBufferUnlockBaseAddress([networkCopy pixelBuffer], 0);
      [networkCopy timestamp];
      [(ARMLImageProcessingTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
      goto LABEL_43;
    }

    [networkCopy timestamp];
    [(ARMLImageProcessingTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
    CVPixelBufferUnlockBaseAddress([networkCopy pixelBuffer], 0);
    pixelBuffer = [networkCopy pixelBuffer];
    [networkCopy timestamp];
    v62 = v61;
    if (pixelBuffer)
    {
      v63 = CVPixelBufferGetWidth(pixelBuffer);
      v64 = CVPixelBufferGetHeight(pixelBuffer);
      v65 = v63;
      v66 = v64;
    }

    else
    {
      v65 = *MEMORY[0x1E695F060];
      v66 = *(MEMORY[0x1E695F060] + 8);
    }

    [(ARMLImageProcessingTechnique *)self _startMLCreateResultSignpostWithTimestamp:v70 orientation:v62 outputSize:v65, v66];
    if ([(ARMLImageProcessingTechnique *)self useEspressoZeroCopyOutput])
    {
      [ARMLImageProcessingTechnique createResultDataFromPixelBuffer:"createResultDataFromPixelBuffer:numberOfOutputTensors:imageDataForNeuralNetwork:inputImageData:rotationNeeded:regionOfInterest:" numberOfOutputTensors:width imageDataForNeuralNetwork:height inputImageData:? rotationNeeded:? regionOfInterest:?];
    }

    else
    {
      [ARMLImageProcessingTechnique createResultDataFromTensors:"createResultDataFromTensors:numberOfOutputTensors:imageDataForNeuralNetwork:inputImageData:rotationNeeded:regionOfInterest:" numberOfOutputTensors:width imageDataForNeuralNetwork:height inputImageData:? rotationNeeded:? regionOfInterest:?];
    }
    v12 = ;
    [networkCopy timestamp];
    [(ARMLImageProcessingTechnique *)self _endMLCreateResultSignpostWithTimestamp:?];
    if ([(ARMLImageProcessingTechnique *)self useEspressoZeroCopyOutput])
    {
      for (k = 0; ; ++k)
      {
        outputTensorNames3 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
        v69 = k < [outputTensorNames3 count];

        if (!v69)
        {
          break;
        }

        CVPixelBufferRelease(*(__p + k));
      }
    }

LABEL_44:
    if (__p)
    {
      v74 = __p;
      operator delete(__p);
    }
  }

  return v12;
}

- (int64_t)getDeviceOrientationFromImageData:(id)data
{
  dataCopy = data;
  if (![dataCopy deviceOrientation])
  {
    lockedOrientation = self->_lockedOrientation;
    if ((lockedOrientation & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = +[ARBKSAccelerometer sharedWeakAccelerometerHandle];
    v7 = v6;
    if (v6)
    {
      lockedOrientation = [v6 currentOrientation];

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = ARMLImageProcessingTechnique;
  lockedOrientation = [(ARImageBasedTechnique *)&v9 getDeviceOrientationFromImageData:dataCopy];
LABEL_6:

  return lockedOrientation;
}

- (BOOL)isBusy
{
  v3 = dispatch_semaphore_wait(self->_processingSemaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_processingSemaphore);
  }

  return v3 != 0;
}

- (CGSize)networkInputScaleBeforeRotation
{
  width = self->_networkInputScaleBeforeRotation.width;
  height = self->_networkInputScaleBeforeRotation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)allowedResamplingImageSize
{
  width = self->_allowedResamplingImageSize.width;
  height = self->_allowedResamplingImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 20) = 0;
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 23) = 0;
  *(self + 27) = 0;
  *(self + 28) = 0;
  *(self + 26) = 0;
  return self;
}

@end