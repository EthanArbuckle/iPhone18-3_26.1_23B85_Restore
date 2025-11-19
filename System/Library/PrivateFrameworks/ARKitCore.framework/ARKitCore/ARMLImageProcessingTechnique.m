@interface ARMLImageProcessingTechnique
+ (BOOL)isSupported;
- ($C4732ECC957FA13B9B3DF4A51A95735B)espressoNetwork;
- ($F613A077D53D3D97A8E0FDF5BAE1891D)networkInputParams;
- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)a3 inputTensorNames:(id)a4 outputTensorNames:(id)a5 networkInputScaleBeforeRotation:(CGSize)a6 networkFilePath:(id)a7;
- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)a3 inputTensorNames:(id)a4 outputTensorNames:(id)a5 networkInputScaleBeforeRotation:(CGSize)a6 networkFilePath:(id)a7 useEspressoZeroCopyOutput:(BOOL)a8;
- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)a3 networkInputScaleBeforeRotation:(CGSize)a4 delegateInference:(BOOL)a5;
- (BOOL)ARMLVerifyLoadedModelVersion:(id)a3 deviceName:(id)a4 major:(int)a5 minor:(int)a6;
- (BOOL)isBusy;
- (CGSize)allowedResamplingImageSize;
- (CGSize)networkInputScaleBeforeRotation;
- (NSString)networkVersionString;
- (id).cxx_construct;
- (id)_resampleImage:(id)a3 rotationOfResultTensor:(int64_t)a4 networkInputSize:(CGSize)a5;
- (id)defaultEngineName;
- (id)networkModesForOrientation:(int64_t)a3;
- (id)processData:(id)a3;
- (id)processImageDataThroughNeuralNetwork:(id)a3 originalImageData:(id)a4 regionOfInterest:(CGSize)a5 rotationOfResultTensor:(int64_t)a6;
- (id)runNeuralNetworkWithImageData:(id)a3 originalImageData:(id)a4 regionOfInterest:(CGSize)a5 rotationOfResultTensor:(int64_t)a6;
- (int)bindInputBuffer:(unint64_t)a3 withImage:(id)a4 andOriginalImageData:(id)a5 rotationOfResultTensor:(int64_t)a6;
- (int64_t)getDeviceOrientationFromImageData:(id)a3;
- (void)_asynchronousProcessDownSampledImage:(id)a3;
- (void)_asynchronousProcessEspressoTensor:(id)a3;
- (void)_bindOutputTensor;
- (void)_runNeuralNetworkAndPushResult:(id)a3 originalImageData:(id)a4 regionOfInterest:(CGSize)a5 rotationOfResultTensor:(int64_t)a6;
- (void)changeEspressoConfig:(id)a3;
- (void)dealloc;
- (void)loadMLWithPath:(id)a3 networkMode:(id)a4;
- (void)prepare:(BOOL)a3;
- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)a3;
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

- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)a3 inputTensorNames:(id)a4 outputTensorNames:(id)a5 networkInputScaleBeforeRotation:(CGSize)a6 networkFilePath:(id)a7 useEspressoZeroCopyOutput:(BOOL)a8
{
  v8 = a8;
  height = a6.height;
  width = a6.width;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = [(ARMLImageProcessingTechnique *)self initWithDispatchQueue:v15 inputTensorNames:v16 outputTensorNames:v17 networkInputScaleBeforeRotation:v18 networkFilePath:width, height];
  v20 = v19;
  if (v19)
  {
    [(ARMLImageProcessingTechnique *)v19 setUseEspressoZeroCopyOutput:v8];
  }

  return v20;
}

- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)a3 networkInputScaleBeforeRotation:(CGSize)a4 delegateInference:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v16.receiver = self;
  v16.super_class = ARMLImageProcessingTechnique;
  v11 = [(ARImageBasedTechnique *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_processingQueue, a3);
    v13 = dispatch_semaphore_create(1);
    processingSemaphore = v12->_processingSemaphore;
    v12->_processingSemaphore = v13;

    v12->_prepLock._os_unfair_lock_opaque = 0;
    v12->_lockedOrientation = -1;
    v12->_allowedResamplingImageSize = *MEMORY[0x1E695F060];
    v12->_delegateInference = a5;
    v12->_networkInputScaleBeforeRotation.width = width;
    v12->_networkInputScaleBeforeRotation.height = height;
  }

  return v12;
}

- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)a3 inputTensorNames:(id)a4 outputTensorNames:(id)a5 networkInputScaleBeforeRotation:(CGSize)a6 networkFilePath:(id)a7
{
  height = a6.height;
  width = a6.width;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = [(ARMLImageProcessingTechnique *)self initWithDispatchQueue:v13 networkInputScaleBeforeRotation:width, height];
  v18 = v17;
  if (v17)
  {
    v17->_espressoInputBufferTimestamp = 0.0;
    v17->_espressoInputBufferLock._os_unfair_lock_opaque = 0;
    v19 = [v14 copy];
    inputTensorNames = v18->_inputTensorNames;
    v18->_inputTensorNames = v19;

    v21 = [v15 copy];
    outputTensorNames = v18->_outputTensorNames;
    v18->_outputTensorNames = v21;

    v23 = [v16 copy];
    networkFilePath = v18->_networkFilePath;
    v18->_networkFilePath = v23;

    v18->_bgraPixelBufferPool = 0;
    v18->_failedToLoadNetwork = 1;
    [(ARMLImageProcessingTechnique *)v18 setUseEspressoZeroCopyOutput:0];
  }

  return v18;
}

- (BOOL)ARMLVerifyLoadedModelVersion:(id)a3 deviceName:(id)a4 major:(int)a5 minor:(int)a6
{
  v9 = a4;
  v10 = [a3 componentsSeparatedByString:@"."];
  v11 = v10;
  if (!v10 || [v10 count] != 3)
  {
    goto LABEL_10;
  }

  v12 = [v11 objectAtIndexedSubscript:1];
  v13 = [v12 intValue];

  v14 = [v11 objectAtIndexedSubscript:2];
  v15 = [v14 intValue];

  v16 = [v11 objectAtIndexedSubscript:0];
  v17 = [v16 isEqual:v9];
  if (v13 == a5)
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

  if (v15 != a6)
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
  v2 = [(ARMLImageProcessingTechnique *)self defaultEngine];
  if (v2 > 10005)
  {
    if (v2 == 10006)
    {
      return @"ESPRESSO_ENGINE_ANE_RUNTIME_DIRECT";
    }

    if (v2 != 10007)
    {
      if (v2 == 0x7FFFFFFF)
      {
        return @"ESPRESSO_ENGINE_MAX_VAL";
      }

      return &stru_1F4208A80;
    }

    return @"ESPRESSO_ENGINE_ANE_RUNTIME";
  }

  else
  {
    if (!v2)
    {
      return @"ESPRESSO_ENGINE_CPU";
    }

    if (v2 != 2)
    {
      if (v2 == 5)
      {
        return @"ESPRESSO_ENGINE_MPS";
      }

      return &stru_1F4208A80;
    }

    return @"ESPRESSO_ENGINE_METAL";
  }
}

- (id)networkModesForOrientation:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a3 - 3) >= 2)
  {
    if ((a3 - 1) < 2)
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
        v16 = self;
        v17 = 2048;
        v18 = a3;
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
      v16 = self;
      v17 = 2048;
      v18 = a3;
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

- (void)loadMLWithPath:(id)a3 networkMode:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v8 fileExistsAtPath:v6];

    if (v9)
    {
      v10 = _ARLogTechnique();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [(ARMLImageProcessingTechnique *)self defaultEngineName];
        *buf = 138543874;
        v63 = v12;
        v64 = 2048;
        v65 = self;
        v66 = 2112;
        v67 = v13;
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
      v16 = v6;
      [(__CFString *)v6 UTF8String];
      if (espresso_plan_add_network())
      {
        self->_failedToLoadNetwork = 1;
        goto LABEL_30;
      }

      self->_failedToLoadNetwork = 0;
      v36 = [(ARMLImageProcessingTechnique *)self networkVersionString];
      if (v36)
      {
        v37 = [(ARMLImageProcessingTechnique *)self isLoadedModelVersionCorrect:v36];
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
            v65 = self;
            v66 = 2112;
            v67 = v36;
            _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Version '%@'.", buf, 0x20u);
          }

          v42 = [(ARMLImageProcessingTechnique *)self inputTensorNames];
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke;
          v61[3] = &unk_1E817C510;
          v61[4] = self;
          [v42 enumerateObjectsUsingBlock:v61];

          v43 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
          std::vector<espresso_buffer_t>::resize(&self->_espressoOutputTensors.__begin_, [v43 count]);

          v44 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
          std::vector<__CVPixelBufferPool *>::resize(&self->_espressoOutputBufferPools.__begin_, [v44 count]);

          v45 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
          v60[0] = MEMORY[0x1E69E9820];
          v60[1] = 3221225472;
          v60[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_36;
          v60[3] = &unk_1E817C510;
          v60[4] = self;
          [v45 enumerateObjectsUsingBlock:v60];

          if (!espresso_plan_build())
          {
            [(ARMLImageProcessingTechnique *)self _bindOutputTensor];
            v53 = [(ARMLImageProcessingTechnique *)self inputTensorNames];
            std::vector<espresso_buffer_t>::resize(&self->_espressoInputTensors.__begin_, [v53 count]);

            v54 = [(ARMLImageProcessingTechnique *)self inputTensorNames];
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v59[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_39;
            v59[3] = &unk_1E817C510;
            v59[4] = self;
            [v54 enumerateObjectsUsingBlock:v59];

            v55 = [(ARMLImageProcessingTechnique *)self inputTensorNames];
            v58[0] = MEMORY[0x1E69E9820];
            v58[1] = 3221225472;
            v58[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_41;
            v58[3] = &unk_1E817C510;
            v58[4] = self;
            [v55 enumerateObjectsUsingBlock:v58];

            v56 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_43;
            v57[3] = &unk_1E817C510;
            v57[4] = self;
            [v56 enumerateObjectsUsingBlock:v57];

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
            v65 = self;
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
          v65 = self;
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
          v65 = self;
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
        v65 = self;
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
      v65 = self;
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
      v65 = self;
      v66 = 2112;
      v67 = v6;
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
    v65 = self;
    v66 = 2112;
    v67 = v6;
    _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to load model from path '%@'", buf, 0x20u);
  }

  v31 = [MEMORY[0x1E695DF90] dictionary];
  v32 = v31;
  if (v6)
  {
    v33 = v6;
  }

  else
  {
    v33 = @"<nil>";
  }

  [v31 setObject:v33 forKeyedSubscript:*MEMORY[0x1E696A368]];
  v34 = [(ARTechnique *)self delegate];
  v35 = ARErrorWithCodeAndUserInfo(1004, v32);
  [v34 technique:self didFailWithError:v35];

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
  v3 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__ARMLImageProcessingTechnique__bindOutputTensor__block_invoke;
  v4[3] = &unk_1E817C510;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
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

- (void)changeEspressoConfig:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  previous_network_configuration = self->_previous_network_configuration;
  if (previous_network_configuration == v5 || [(NSString *)previous_network_configuration isEqualToString:v5])
  {
    goto LABEL_3;
  }

  [(ARMLImageProcessingTechnique *)self _startLoadingMLModelSignpost];
  espresso_plan_build_clean();
  [(NSString *)v5 UTF8String];
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
      v17 = self;
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
      v17 = self;
      v18 = 2080;
      v19 = "Could not rebuild espresso plan";
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
    }

    goto LABEL_11;
  }

  [(ARMLImageProcessingTechnique *)self _bindOutputTensor];
  v12 = [(ARMLImageProcessingTechnique *)self inputTensorNames];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__ARMLImageProcessingTechnique_changeEspressoConfig___block_invoke;
  v13[3] = &unk_1E817C510;
  v13[4] = self;
  [v12 enumerateObjectsUsingBlock:v13];

  [(ARMLImageProcessingTechnique *)self _endLoadingMLModelSignpost];
  [(ARMLImageProcessingTechnique *)self networkModeDidChange:self->_previous_network_configuration toMode:v5];
LABEL_3:
  objc_storeStrong(&self->_previous_network_configuration, a3);
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

- (void)prepare:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_prepLock);
  self->_deterministic = v3;
  if (self->_hasBegunPrep)
  {

    os_unfair_lock_unlock(&self->_prepLock);
  }

  else
  {
    self->_hasBegunPrep = 1;
    os_unfair_lock_unlock(&self->_prepLock);
    [(ARMLImageProcessingTechnique *)self _prepareOnce:v3];
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

- (id)processData:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ARMLImageProcessingTechnique;
  v5 = [(ARImageBasedTechnique *)&v7 processData:v4];
  if ([(ARMLImageProcessingTechnique *)self prepComplete])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(ARMLImageProcessingTechnique *)self requiredSensorDataTypes]& 1) != 0)
    {
      [(ARMLImageProcessingTechnique *)self _asynchronousProcessDownSampledImage:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ARMLImageProcessingTechnique *)self _asynchronousProcessEspressoTensor:v4];
      }
    }

    [(ARMLImageProcessingTechnique *)self waitForProcessingCompleteInDeterministicMode];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(ARMLImageProcessingTechnique *)self requiredSensorDataTypes]& 1) != 0)
    {
      [v4 timestamp];
      [(ARMLImageProcessingTechnique *)self pushEmptyResultOnAsynchronousQueueForTimestamp:?];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 timestamp];
      [(ARMLImageProcessingTechnique *)self pushEmptyResultOnAsynchronousQueueForTimestamp:?];
    }
  }

  return v4;
}

- (void)_asynchronousProcessDownSampledImage:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if ([(ARMLImageProcessingTechnique *)self shouldUseSynchronizedUltraWide])
  {
    v6 = [v4 latestResizedUltraWideImageData];

    v5 = v4;
    if (v6)
    {
      v7 = [v4 latestResizedUltraWideImageData];

      if (v7)
      {
        v5 = [v4 latestResizedUltraWideImageData];
        v8 = v4;
      }

      else
      {
        v8 = [v4 originalImageData];
        [v8 timestamp];
        [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
        v5 = v4;
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
  v12 = [v5 downScalingResults];
  v13 = [v12 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (!v13)
  {

LABEL_28:
    v25 = p_networkInputScaleBeforeRotation->width;
    v26 = self->_networkInputScaleBeforeRotation.height;
    if (-[ARMLImageProcessingTechnique networkProvidesConfigurationsForDeviceOrientation](self, "networkProvidesConfigurationsForDeviceOrientation") && ([v5 rotationOfResultTensor] == 90 || objc_msgSend(v5, "rotationOfResultTensor") == -90))
    {
      v26 = p_networkInputScaleBeforeRotation->width;
      v25 = self->_networkInputScaleBeforeRotation.height;
    }

    v27 = [v5 downScalingResults];
    v28 = [v27 firstObject];
    v14 = -[ARMLImageProcessingTechnique _resampleImage:rotationOfResultTensor:networkInputSize:](self, "_resampleImage:rotationOfResultTensor:networkInputSize:", v28, [v5 rotationOfResultTensor], v25, v26);

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
        objc_enumerationMutation(v12);
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

    v13 = [v12 countByEnumeratingWithState:&v56 objects:v62 count:16];
  }

  while (v13);

  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_33:
  v29 = [v5 rotationOfResultTensor];
  [v14 regionOfInterest];
  v31 = v30;
  v33 = v32;
  v34 = objc_opt_new();
  [v5 timestamp];
  [v34 setTimestamp:?];
  if (-[ARMLImageProcessingTechnique shouldUseSynchronizedUltraWide](self, "shouldUseSynchronizedUltraWide") && [v14 undistortedPixelBuffer] || objc_msgSend(v14, "undistortedPixelBuffer"))
  {
    v35 = [v14 undistortedPixelBuffer];
  }

  else
  {
    v35 = [v14 pixelBuffer];
  }

  [v34 setPixelBuffer:v35];
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

  v43 = [v5 originalImageData];
  if (dispatch_semaphore_wait(self->_processingSemaphore, 0))
  {
    [v5 timestamp];
    kdebug_trace();
  }

  else
  {
    dispatch_semaphore_signal(self->_processingSemaphore);
  }

  os_unfair_lock_lock(&self->_espressoInputBufferLock);
  [v43 timestamp];
  self->_espressoInputBufferTimestamp = v44;
  os_unfair_lock_unlock(&self->_espressoInputBufferLock);
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __69__ARMLImageProcessingTechnique__asynchronousProcessDownSampledImage___block_invoke;
  v49[3] = &unk_1E817C538;
  objc_copyWeak(v53, &location);
  v50 = v43;
  v51 = v34;
  v52 = v5;
  v53[1] = v31;
  v53[2] = v33;
  v53[3] = v29;
  v46 = v5;
  v47 = v34;
  v48 = v43;
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

- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)a3
{
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__ARMLImageProcessingTechnique_pushEmptyResultOnAsynchronousQueueForTimestamp___block_invoke;
  block[3] = &unk_1E817C560;
  objc_copyWeak(v7, &location);
  v7[1] = *&a3;
  dispatch_async(processingQueue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __79__ARMLImageProcessingTechnique_pushEmptyResultOnAsynchronousQueueForTimestamp___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pushResultData:MEMORY[0x1E695E0F0] forTimestamp:*(a1 + 40)];
}

- (void)_runNeuralNetworkAndPushResult:(id)a3 originalImageData:(id)a4 regionOfInterest:(CGSize)a5 rotationOfResultTensor:(int64_t)a6
{
  height = a5.height;
  width = a5.width;
  v14 = a3;
  v11 = a4;
  [v11 timestamp];
  [(ARMLImageProcessingTechnique *)self _startMLProcessingSignpostWithTimestamp:?];
  v12 = [(ARMLImageProcessingTechnique *)self runNeuralNetworkWithImageData:v14 originalImageData:v11 regionOfInterest:a6 rotationOfResultTensor:width, height];
  dispatch_semaphore_signal(self->_processingSemaphore);
  if ([(ARMLImageProcessingTechnique *)self shouldUseSynchronizedUltraWide])
  {
    [v11 timestampOfSynchronizedWideImageData];
  }

  else
  {
    [v11 timestamp];
  }

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  [(ARImageBasedTechnique *)self pushResultData:v13 forTimestamp:?];
  [v11 timestamp];
  [(ARMLImageProcessingTechnique *)self _endMLProcessingSignpostWithTimestamp:?];
}

- (id)runNeuralNetworkWithImageData:(id)a3 originalImageData:(id)a4 regionOfInterest:(CGSize)a5 rotationOfResultTensor:(int64_t)a6
{
  height = a5.height;
  width = a5.width;
  v17[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = [(ARMLImageProcessingTechnique *)self processImageDataThroughNeuralNetwork:v11 originalImageData:v12 regionOfInterest:a6 rotationOfResultTensor:width, height];
  v14 = v13;
  if (v13)
  {
    v17[0] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (void)_asynchronousProcessEspressoTensor:(id)a3
{
  v4 = a3;
  if (self->_failedToLoadNetwork || dispatch_semaphore_wait(self->_processingSemaphore, 0))
  {
    [v4 timestamp];
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
    v10 = v4;
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

- (id)_resampleImage:(id)a3 rotationOfResultTensor:(int64_t)a4 networkInputSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v9 = ARCreateCVPixelBufferFromPool(&self->_bgraPixelBufferPool, 1111970369, self, @"Down Scale Output", width, height);
  if (v9)
  {
    CVPixelBufferLockBaseAddress([v8 pixelBuffer], 0);
    CVPixelBufferLockBaseAddress(v9, 0);
    memset(&src, 0, sizeof(src));
    ARWrapCVPixelBufferVImage([v8 pixelBuffer], &src.data);
    memset(&v27, 0, sizeof(v27));
    ARWrapCVPixelBufferVImage(v9, &v27.data);
    vImageScale_ARGB8888(&src, &v27, 0, 0x10u);
    CVPixelBufferUnlockBaseAddress(v9, 0);
    CVPixelBufferUnlockBaseAddress([v8 pixelBuffer], 0);
    [v8 imageResolution];
    v11 = v10;
    [v8 imageResolution];
    v13 = v12;
    [v8 regionOfInterest];
    v15 = v14;
    [v8 regionOfInterest];
    v17 = v16;
    v18 = [ARMLImageDownScalingResult alloc];
    [v8 cropRegion];
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

- (int)bindInputBuffer:(unint64_t)a3 withImage:(id)a4 andOriginalImageData:(id)a5 rotationOfResultTensor:(int64_t)a6
{
  v8 = a4;
  v9 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:a3];
  [v9 UTF8String];
  [v8 pixelBuffer];
  v10 = espresso_network_bind_direct_cvpixelbuffer();

  return v10;
}

- (id)processImageDataThroughNeuralNetwork:(id)a3 originalImageData:(id)a4 regionOfInterest:(CGSize)a5 rotationOfResultTensor:(int64_t)a6
{
  height = a5.height;
  width = a5.width;
  v84 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v72 = a4;
  v12 = 0;
  if (v11 && !self->_failedToLoadNetwork)
  {
    v70 = [(ARMLImageProcessingTechnique *)self getDeviceOrientationFromImageData:v72];
    v71 = [(ARMLImageProcessingTechnique *)self networkModesForOrientation:?];
    [(ARMLImageProcessingTechnique *)self changeEspressoConfig:?];
    CVPixelBufferLockBaseAddress([v11 pixelBuffer], 0);
    [v11 timestamp];
    [(ARMLImageProcessingTechnique *)self _startMLRunNetworkSignpostWithTimestamp:?];
    [v11 timestamp];
    v14 = v13;
    v15 = [v72 cameraType];
    v16 = [v15 isEqualToString:*MEMORY[0x1E6986948]];
    v17 = CVPixelBufferGetWidth([v11 pixelBuffer]);
    -[ARMLImageProcessingTechnique _captureMLRunNetworkInputImageData:cameraType:imageWidth:imageHeight:](self, "_captureMLRunNetworkInputImageData:cameraType:imageWidth:imageHeight:", v16, v17, CVPixelBufferGetHeight([v11 pixelBuffer]), v14);

    __p = 0;
    v74 = 0;
    v75 = 0;
    if ([(ARMLImageProcessingTechnique *)self useEspressoZeroCopyOutput])
    {
      v18 = 0;
      for (i = 0; ; ++i)
      {
        v20 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
        v21 = i < [v20 count];

        if (!v21)
        {
          break;
        }

        [v11 timestamp];
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
            v79 = self;
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
        v39 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
        v40 = [v39 objectAtIndexedSubscript:i];
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
            v79 = self;
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
      v47 = [(ARMLImageProcessingTechnique *)self inputTensorNames];
      v48 = j < [v47 count];

      if (!v48)
      {
        break;
      }

      if ([(ARMLImageProcessingTechnique *)self bindInputBuffer:j withImage:v11 andOriginalImageData:v72 rotationOfResultTensor:a6])
      {
        [v11 timestamp];
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

        CVPixelBufferUnlockBaseAddress([v11 pixelBuffer], 0);
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

      CVPixelBufferUnlockBaseAddress([v11 pixelBuffer], 0);
      [v11 timestamp];
      [(ARMLImageProcessingTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
      goto LABEL_43;
    }

    [v11 timestamp];
    [(ARMLImageProcessingTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
    CVPixelBufferUnlockBaseAddress([v11 pixelBuffer], 0);
    v60 = [v11 pixelBuffer];
    [v11 timestamp];
    v62 = v61;
    if (v60)
    {
      v63 = CVPixelBufferGetWidth(v60);
      v64 = CVPixelBufferGetHeight(v60);
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
    [v11 timestamp];
    [(ARMLImageProcessingTechnique *)self _endMLCreateResultSignpostWithTimestamp:?];
    if ([(ARMLImageProcessingTechnique *)self useEspressoZeroCopyOutput])
    {
      for (k = 0; ; ++k)
      {
        v68 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
        v69 = k < [v68 count];

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

- (int64_t)getDeviceOrientationFromImageData:(id)a3
{
  v4 = a3;
  if (![v4 deviceOrientation])
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
  lockedOrientation = [(ARImageBasedTechnique *)&v9 getDeviceOrientationFromImageData:v4];
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