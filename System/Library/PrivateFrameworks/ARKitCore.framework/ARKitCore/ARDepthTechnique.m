@interface ARDepthTechnique
+ (id)sceneDepthTechniqueForPrioritization:(int64_t)a3 temporalSmoothing:(BOOL)a4;
- (ARDepthTechnique)initWithPrioritization:(int64_t)a3 temporalSmoothing:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (__CVBuffer)_executeLKTWithFrame:(__CVBuffer *)a3;
- (id)_rotatedPixelBufferImageData:(__CVBuffer *)a3;
- (id)createResultDataFromTensors:(id *)a3 numberOfOutputTensors:(unint64_t)a4 imageDataForNeuralNetwork:(id)a5 inputImageData:(id)a6 rotationNeeded:(int64_t)a7 regionOfInterest:(CGSize)a8;
- (id)networkModesForOrientation:(int64_t)a3;
- (id)resultDataClasses;
- (int)bindInputBuffer:(unint64_t)a3 withImage:(id)a4 andOriginalImageData:(id)a5 rotationOfResultTensor:(int64_t)a6;
- (int)prepareBindInputBuffer:(unint64_t)a3 withName:(id)a4;
- (void)_allocateLKTBuffers;
- (void)_initLKT;
- (void)_updateOpticalFlowOutputBufferInBackgroundFromImageData:(id)a3;
- (void)dealloc;
- (void)networkModeDidChange:(id)a3 toMode:(id)a4;
- (void)setOpticalFlowOutputBuffer:(__CVBuffer *)a3;
@end

@implementation ARDepthTechnique

- (ARDepthTechnique)initWithPrioritization:(int64_t)a3 temporalSmoothing:(BOOL)a4
{
  v4 = a4;
  v53[2] = *MEMORY[0x1E69E9840];
  if (a3 < 5)
  {
    v6 = dbl_1C25C86B0[a3];
    v7 = dbl_1C25C86D8[a3];
    goto LABEL_12;
  }

  if (ARShouldUseLogTypeError_onceToken_6 != -1)
  {
    [ARDepthTechnique initWithPrioritization:temporalSmoothing:];
  }

  v8 = ARShouldUseLogTypeError_internalOSVersion_6;
  v9 = _ARLogGeneral_3();
  v10 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Unhandled ADDepthPrioritization";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v12, v13, v11, buf, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v11 = "Error: Unhandled ADDepthPrioritization";
    v12 = v10;
    v13 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v6 = 0.0;
  v7 = 0.0;
LABEL_12:
  obj = [objc_alloc(MEMORY[0x1E698C118]) initWithInputPrioritization:a3];
  v14 = [obj inferenceDescriptor];
  v15 = [v14 colorInput];
  v16 = [v15 name];
  v53[0] = v16;
  v17 = [v14 jasperInput];
  v18 = [v17 name];
  v53[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];

  v20 = [v14 depthOutput];
  v21 = [v20 name];
  v52[0] = v21;
  v22 = [v14 confidenceOutput];
  v23 = [v22 name];
  v52[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];

  if (v4)
  {
    v25 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.appleDepth.temporalSmoothingMethod"];
    v26 = _ARLogTechnique_0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138543874;
      v47 = v28;
      v48 = 2048;
      v49 = self;
      v50 = 2048;
      v51 = v25;
      _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Temporal smoothing enabled, using method: %ld", buf, 0x20u);
    }
  }

  else
  {
    v25 = 0;
  }

  v29 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.depthtechnique");
  v30 = [v14 networkURL];
  v31 = [v30 absoluteString];
  v45.receiver = self;
  v45.super_class = ARDepthTechnique;
  v32 = [(ARMLImageProcessingTechnique *)&v45 initWithDispatchQueue:v29 inputTensorNames:v19 outputTensorNames:v24 networkInputScaleBeforeRotation:v31 networkFilePath:v6, v7];

  if (v32)
  {
    v32->_prioritization = a3;
    v32->_outputSize.width = v6;
    v32->_outputSize.height = v7;
    objc_storeStrong(&v32->_pipeline, obj);
    objc_storeStrong(&v32->_inferenceDescriptor, v14);
    v32->_outputDepthPixelBufferPool = 0;
    v32->_outputConfidencePixelBufferPool = 0;
    v32->_outputConfidenceMapPixelBufferPool = 0;
    v32->_scaledDepthOutputPixelBufferPool = 0;
    v32->_scaledConfidenceOutputPixelBufferPool = 0;
    v32->_scaledConfidenceMapPixelBufferPool = 0;
    v32->_outputTemporalConsistentDepthPixelBufferPool = 0;
    v32->_outputTemporalConsistentConfidencePixelBufferPool = 0;
    v32->_scaledTemporallyConsistentDepthOutputPixelBufferPool = 0;
    v32->_scaledTemporallyConsistentConfidenceOutputPixelBufferPool = 0;
    v32->_previousDepthBuffer = 0;
    v32->_previousConfidenceBuffer = 0;
    v32->_layout = 0;
    v32->_temporalConsistencyMethod = v25;
    if (v25 == 2)
    {
      [(ARDepthTechnique *)v32 _initLKT];
    }

    v32->_computeNormals = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.appleDepth.computeNormals"];
    v33 = _ARLogTechnique_0();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      computeNormals = v32->_computeNormals;
      *buf = 138543874;
      v47 = v35;
      if (computeNormals)
      {
        v37 = @"Enabled";
      }

      else
      {
        v37 = @"Disabled";
      }

      v48 = 2048;
      v49 = v32;
      v50 = 2112;
      v51 = v37;
      _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Compute normals: %@", buf, 0x20u);
    }

    if (v32->_computeNormals)
    {
      v38 = objc_opt_new();
      normalsHelperBuffer = v32->_normalsHelperBuffer;
      v32->_normalsHelperBuffer = v38;
    }

    v40 = [MEMORY[0x1E698C128] defaultLoggerWithName:@"arkitdepth"];
    adLogger = v32->_adLogger;
    v32->_adLogger = v40;
  }

  return v32;
}

- (void)dealloc
{
  [(ARDepthTechnique *)self setOpticalFlowOutputBuffer:0];
  CVPixelBufferRelease(self->_previousDepthBuffer);
  CVPixelBufferRelease(self->_previousConfidenceBuffer);
  CVPixelBufferRelease(self->_jasperInputBuffer);
  CVPixelBufferRelease(self->_previousWarpedDepthBuffer);
  CVPixelBufferRelease(self->_previousWarpedConfidenceBuffer);
  CVPixelBufferPoolRelease(self->_outputDepthPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputConfidencePixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputConfidenceMapPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputTemporalConsistentDepthPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputTemporalConsistentConfidencePixelBufferPool);
  CVPixelBufferPoolRelease(self->_scaledDepthOutputPixelBufferPool);
  CVPixelBufferPoolRelease(self->_scaledConfidenceOutputPixelBufferPool);
  CVPixelBufferPoolRelease(self->_scaledConfidenceMapPixelBufferPool);
  CVPixelBufferPoolRelease(self->_scaledTemporallyConsistentDepthOutputPixelBufferPool);
  CVPixelBufferPoolRelease(self->_scaledTemporallyConsistentConfidenceOutputPixelBufferPool);
  CVPixelBufferPoolRelease(self->_opticalFlowPixelBufferPool);
  CVPixelBufferPoolRelease(self->_normalPixelBufferPool);
  v3.receiver = self;
  v3.super_class = ARDepthTechnique;
  [(ARMLImageProcessingTechnique *)&v3 dealloc];
}

- (void)_initLKT
{
  v41 = *MEMORY[0x1E69E9840];
  self->_currentFrameIndex = 0;
  v3 = [(ADJasperColorPipeline *)self->_pipeline LKTTexturesDescriptor];
  lktDescriptor = self->_lktDescriptor;
  self->_lktDescriptor = v3;

  v5 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.depthtechnique.lkt");
  lktProcessingQueue = self->_lktProcessingQueue;
  self->_lktProcessingQueue = v5;

  self->_opticalFlowOutputBufferLock._os_unfair_lock_opaque = 0;
  v7 = [MEMORY[0x1E695DF70] array];
  features = self->_features;
  self->_features = v7;

  v9 = [MEMORY[0x1E695DF70] array];
  derivatives = self->_derivatives;
  self->_derivatives = v9;

  v11 = [MEMORY[0x1E695DF70] array];
  pyramids = self->_pyramids;
  self->_pyramids = v11;

  self->_storedFramesCount = [ARKitUserDefaults integerForKey:@"com.apple.arkit.appleDepth.temporalFilteringStoredFrames"];
  v13 = _ARLogTechnique_0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    storedFramesCount = self->_storedFramesCount;
    v35 = 138543874;
    v36 = v15;
    v37 = 2048;
    v38 = self;
    v39 = 2048;
    v40 = storedFramesCount;
    _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using %ti stored frames for temporal filtering", &v35, 0x20u);
  }

  v17 = MTLCreateSystemDefaultDevice();
  device = self->_device;
  self->_device = v17;

  v19 = self->_device;
  if (v19)
  {
    v20 = [(MTLDevice *)v19 newCommandQueue];
    commandQueue = self->_commandQueue;
    self->_commandQueue = v20;

    if (self->_commandQueue)
    {
      [(ARDepthTechnique *)self _allocateLKTBuffers];
      return;
    }

    if (ARShouldUseLogTypeError_onceToken_6 != -1)
    {
      [ARDepthTechnique _initLKT];
    }

    v28 = ARShouldUseLogTypeError_internalOSVersion_6;
    v29 = _ARLogTechnique_0();
    v24 = v29;
    if (v28 == 1)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v26 = NSStringFromClass(v30);
        v35 = 138543618;
        v36 = v26;
        v37 = 2048;
        v38 = self;
        v27 = "%{public}@ <%p>: Couldn't create command queue for temporal filtering";
        goto LABEL_16;
      }

      goto LABEL_23;
    }

    if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    v34 = objc_opt_class();
    v26 = NSStringFromClass(v34);
    v35 = 138543618;
    v36 = v26;
    v37 = 2048;
    v38 = self;
    v27 = "Error: %{public}@ <%p>: Couldn't create command queue for temporal filtering";
LABEL_21:
    v31 = v24;
    v32 = OS_LOG_TYPE_INFO;
    goto LABEL_22;
  }

  if (ARShouldUseLogTypeError_onceToken_6 != -1)
  {
    [ARDepthTechnique _initLKT];
  }

  v22 = ARShouldUseLogTypeError_internalOSVersion_6;
  v23 = _ARLogTechnique_0();
  v24 = v23;
  if (v22 != 1)
  {
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    v33 = objc_opt_class();
    v26 = NSStringFromClass(v33);
    v35 = 138543618;
    v36 = v26;
    v37 = 2048;
    v38 = self;
    v27 = "Error: %{public}@ <%p>: Couldn't create system default device for temporal filtering";
    goto LABEL_21;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v35 = 138543618;
    v36 = v26;
    v37 = 2048;
    v38 = self;
    v27 = "%{public}@ <%p>: Couldn't create system default device for temporal filtering";
LABEL_16:
    v31 = v24;
    v32 = OS_LOG_TYPE_ERROR;
LABEL_22:
    _os_log_impl(&dword_1C241C000, v31, v32, v27, &v35, 0x16u);
  }

LABEL_23:
}

- (void)_allocateLKTBuffers
{
  v74 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_features removeAllObjects];
  [(NSMutableArray *)self->_derivatives removeAllObjects];
  [(NSMutableArray *)self->_pyramids removeAllObjects];
  CVPixelBufferRelease(self->_previousDepthBuffer);
  self->_previousDepthBuffer = 0;
  v3 = objc_alloc(MEMORY[0x1E698C120]);
  device = self->_device;
  [(ADLKTTexturesDescriptor *)self->_lktDescriptor inputSizeForLayout:self->_layout];
  v6 = v5;
  v8 = v7;
  lktDescriptor = self->_lktDescriptor;
  if (lktDescriptor)
  {
    [(ADLKTTexturesDescriptor *)lktDescriptor opticalFlowConfig];
    v10 = v63;
  }

  else
  {
    v10 = 0;
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
  }

  v11 = [v3 initWithDevice:device inputSize:v10 scales:{v6, v8}];
  lkt = self->_lkt;
  self->_lkt = v11;

  if (self->_lkt)
  {
    if (self->_storedFramesCount >= 1)
    {
      v13 = 0;
      do
      {
        v14 = [MEMORY[0x1E695DF70] array];
        [(NSMutableArray *)self->_features setObject:v14 atIndexedSubscript:v13];

        v15 = [MEMORY[0x1E695DF70] array];
        [(NSMutableArray *)self->_derivatives setObject:v15 atIndexedSubscript:v13];

        v16 = [MEMORY[0x1E695DF70] array];
        [(NSMutableArray *)self->_pyramids setObject:v16 atIndexedSubscript:v13];

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v17 = [(ADLKTTexturesDescriptor *)self->_lktDescriptor pyramidsDescriptors];
        v18 = [v17 countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (v18)
        {
          v19 = *v60;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v60 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v59 + 1) + 8 * i);
              v22 = [(NSMutableArray *)self->_pyramids objectAtIndexedSubscript:v13];
              [v21 sizeForLayout:self->_layout];
              v25 = textureForSizeWithPixelFormatAndMetalDevice([v21 pixelFormat], self->_device, v23, v24);
              [v22 addObject:v25];
            }

            v18 = [v17 countByEnumeratingWithState:&v59 objects:v69 count:16];
          }

          while (v18);
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v26 = [(ADLKTTexturesDescriptor *)self->_lktDescriptor featuresDescriptors];
        v27 = [v26 countByEnumeratingWithState:&v55 objects:v68 count:16];
        if (v27)
        {
          v28 = *v56;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v56 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v55 + 1) + 8 * j);
              v31 = [(NSMutableArray *)self->_features objectAtIndexedSubscript:v13];
              [v30 sizeForLayout:self->_layout];
              v34 = textureForSizeWithPixelFormatAndMetalDevice([v30 pixelFormat], self->_device, v32, v33);
              [v31 addObject:v34];
            }

            v27 = [v26 countByEnumeratingWithState:&v55 objects:v68 count:16];
          }

          while (v27);
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v35 = [(ADLKTTexturesDescriptor *)self->_lktDescriptor derivitivesDescriptors];
        v36 = [v35 countByEnumeratingWithState:&v51 objects:v67 count:16];
        if (v36)
        {
          v37 = *v52;
          do
          {
            for (k = 0; k != v36; ++k)
            {
              if (*v52 != v37)
              {
                objc_enumerationMutation(v35);
              }

              v39 = *(*(&v51 + 1) + 8 * k);
              v40 = [(NSMutableArray *)self->_derivatives objectAtIndexedSubscript:v13];
              [v39 sizeForLayout:self->_layout];
              v43 = textureForSizeWithPixelFormatAndMetalDevice([v39 pixelFormat], self->_device, v41, v42);
              [v40 addObject:v43];
            }

            v36 = [v35 countByEnumeratingWithState:&v51 objects:v67 count:16];
          }

          while (v36);
        }

        ++v13;
      }

      while (v13 < self->_storedFramesCount);
    }
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_6 != -1)
    {
      [ARDepthTechnique _initLKT];
    }

    v44 = ARShouldUseLogTypeError_internalOSVersion_6;
    v45 = _ARLogTechnique_0();
    v46 = v45;
    if (v44 == 1)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        *buf = 138543618;
        v71 = v48;
        v72 = 2048;
        v73 = self;
        _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Couldn't create DFLKTOpticalFlow for temporal filtering", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      *buf = 138543618;
      v71 = v50;
      v72 = 2048;
      v73 = self;
      _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Couldn't create DFLKTOpticalFlow for temporal filtering", buf, 0x16u);
    }
  }
}

- (void)setOpticalFlowOutputBuffer:(__CVBuffer *)a3
{
  opticalFlowOutputBuffer = self->_opticalFlowOutputBuffer;
  if (opticalFlowOutputBuffer != a3)
  {
    CVPixelBufferRelease(opticalFlowOutputBuffer);
    self->_opticalFlowOutputBuffer = a3;

    CVPixelBufferRetain(a3);
  }
}

- (__CVBuffer)_executeLKTWithFrame:(__CVBuffer *)a3
{
  currentFrameIndex = self->_currentFrameIndex;
  storedFramesCount = currentFrameIndex;
  if (!currentFrameIndex)
  {
    storedFramesCount = self->_storedFramesCount;
  }

  v27 = storedFramesCount;
  v7 = bindPixelBufferToMTL2DTextureWithMetalDevice(a3, self->_device);
  v8 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  lkt = self->_lkt;
  v10 = [(NSMutableArray *)self->_pyramids objectAtIndexedSubscript:currentFrameIndex];
  v11 = [(NSMutableArray *)self->_features objectAtIndexedSubscript:currentFrameIndex];
  v12 = [(NSMutableArray *)self->_derivatives objectAtIndexedSubscript:currentFrameIndex];
  v13 = lkt;
  v14 = v7;
  [(ADLKTOpticalFlow *)v13 encodePyramidFeaturesToCommandBuffer:v8 colorTexture:v7 outPyramidsArray:v10 outFeaturesArray:v11 outDerivitiveArray:v12];

  [v8 commit];
  if (!self->_previousDepthBuffer)
  {
    v17 = 0;
LABEL_10:
    [v8 waitUntilCompleted];
    self->_currentFrameIndex = (currentFrameIndex + 1) % self->_storedFramesCount;
    goto LABEL_11;
  }

  if (a3)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  v18 = ARCreateCVPixelBufferFromPool(&self->_opticalFlowPixelBufferPool, 843264104, self, @"Optical Flow", Width, Height);
  v17 = v18;
  if (v18)
  {
    v19 = v27 - 1;
    v29 = bindPixelBufferToMTL2DTextureWithMetalDevice(v18, self->_device);
    v20 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

    v28 = self->_lkt;
    v21 = [(NSMutableArray *)self->_features objectAtIndexedSubscript:currentFrameIndex];
    v22 = [(NSMutableArray *)self->_derivatives objectAtIndexedSubscript:currentFrameIndex];
    [(NSMutableArray *)self->_features objectAtIndexedSubscript:v19];
    v23 = v30 = v7;
    v24 = [(NSMutableArray *)self->_derivatives objectAtIndexedSubscript:v19];
    v25 = [(NSMutableArray *)self->_pyramids objectAtIndexedSubscript:currentFrameIndex];
    [(ADLKTOpticalFlow *)v28 encodeOpticalFlowSolverToCommandBuffer:v20 currentFeaturesArray:v21 currentDerivitiveArray:v22 previousFeaturesArray:v23 previousDerivitiveArray:v24 currentPyramidsArray:v25 outShiftMap:v29];

    v14 = v30;
    [v20 commit];

    v8 = v20;
    goto LABEL_10;
  }

LABEL_11:

  return v17;
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (int)prepareBindInputBuffer:(unint64_t)a3 withName:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor colorInput];
  v8 = [v7 name];
  v9 = [v6 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    if (a3 > 1)
    {
      v10 = -1;
      goto LABEL_16;
    }

    [(ARMLImageProcessingTechnique *)self espressoNetwork];
    [v6 UTF8String];
    [(ARMLImageProcessingTechnique *)self espressoInputTensorsData];
    v10 = espresso_network_bind_buffer();
    if (v10)
    {
      goto LABEL_16;
    }

    CVPixelBufferRelease(self->_jasperInputBuffer);
    v33 = *MEMORY[0x1E695E480];
    v36 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor jasperInput];
    v35 = [v36 imageDescriptor];
    [v35 sizeForLayout:self->_layout];
    v31 = v11;
    v34 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor jasperInput];
    v32 = [v34 imageDescriptor];
    [v32 sizeForLayout:self->_layout];
    v30 = v12;
    v13 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor jasperInput];
    v14 = [v13 imageDescriptor];
    v15 = [v14 pixelFormat];
    v16 = [(ARMLImageProcessingTechnique *)self espressoInputTensorsData][168 * a3];
    v17 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor jasperInput];
    v18 = [v17 imageDescriptor];
    [v18 sizeForLayout:self->_layout];
    LODWORD(v16) = CVPixelBufferCreateWithBytes(v33, v31, v30, v15, v16, vcvtd_n_u64_f64(v19, 2uLL), 0, 0, 0, &self->_jasperInputBuffer);

    if (v16)
    {
      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique initWithPrioritization:temporalSmoothing:];
      }

      v20 = ARShouldUseLogTypeError_internalOSVersion_6;
      v21 = _ARLogTechnique_0();
      v22 = v21;
      if (v20 == 1)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          *buf = 138543618;
          v38 = v24;
          v39 = 2048;
          v40 = self;
          v25 = "%{public}@ <%p>: Couldn't allocate pixel buffer for jasper point projection";
          v26 = v22;
          v27 = OS_LOG_TYPE_ERROR;
LABEL_14:
          _os_log_impl(&dword_1C241C000, v26, v27, v25, buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        v24 = NSStringFromClass(v28);
        *buf = 138543618;
        v38 = v24;
        v39 = 2048;
        v40 = self;
        v25 = "Error: %{public}@ <%p>: Couldn't allocate pixel buffer for jasper point projection";
        v26 = v22;
        v27 = OS_LOG_TYPE_INFO;
        goto LABEL_14;
      }

      v10 = -4;
      goto LABEL_16;
    }
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (void)_updateOpticalFlowOutputBufferInBackgroundFromImageData:(id)a3
{
  lktProcessingQueue = self->_lktProcessingQueue;
  v5 = a3;
  dispatch_assert_queue_V2(lktProcessingQueue);
  os_unfair_lock_lock(&self->_opticalFlowOutputBufferLock);
  [v5 timestamp];
  kdebug_trace();
  v6 = -[ARDepthTechnique _executeLKTWithFrame:](self, "_executeLKTWithFrame:", [v5 pixelBuffer]);
  [(ARDepthTechnique *)self setOpticalFlowOutputBuffer:v6];
  CVPixelBufferRelease(v6);
  [v5 timestamp];

  kdebug_trace();

  os_unfair_lock_unlock(&self->_opticalFlowOutputBufferLock);
}

- (int)bindInputBuffer:(unint64_t)a3 withImage:(id)a4 andOriginalImageData:(id)a5 rotationOfResultTensor:(int64_t)a6
{
  v62 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  if (a3 == 1)
  {
    v16 = [(ARMLImageProcessingTechnique *)self getDeviceOrientationFromImageData:v11]- 1;
    if (v16 > 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = qword_1C25C8700[v16];
    }

    v20 = [v11 originalImage];
    v26 = [v20 pointCloud];
    v27 = [v26 depthPointCloud];

    if (v27)
    {
      v28 = [v20 pixelBuffer];
      if (v28)
      {
        v29 = v28;
        Width = CVPixelBufferGetWidth(v28);
        Height = CVPixelBufferGetHeight(v29);
      }

      else
      {
        Width = *MEMORY[0x1E695F060];
        Height = *(MEMORY[0x1E695F060] + 8);
      }

      [v10 timestamp];
      kdebug_trace();
      v13 = [(ADJasperColorPipeline *)self->_pipeline projectJasperPoints:v27 cropTo:v17 rotateBy:self->_jasperInputBuffer projectedPointsBuffer:0.0, 0.0, Width, Height];
      adLogger = self->_adLogger;
      jasperInputBuffer = self->_jasperInputBuffer;
      [v10 timestamp];
      [(ADLogManager *)adLogger logPixelBuffer:jasperInputBuffer name:"processedJasper" timestamp:?];
      [v10 timestamp];
      [v27 length];
      kdebug_trace();
      if (!v13)
      {
        goto LABEL_37;
      }

      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique initWithPrioritization:temporalSmoothing:];
      }

      v43 = ARShouldUseLogTypeError_internalOSVersion_6;
      v44 = _ARLogTechnique_0();
      v13 = v44;
      if (v43 == 1)
      {
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          *location = 138543874;
          *&location[4] = v46;
          v58 = 2048;
          v59 = self;
          v60 = 2048;
          v61 = -1;
          v47 = "%{public}@ <%p>: Couldn't project jasper points: %ld";
          v48 = v13;
          v49 = OS_LOG_TYPE_ERROR;
LABEL_35:
          _os_log_impl(&dword_1C241C000, v48, v49, v47, location, 0x20u);
        }
      }

      else if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v50 = objc_opt_class();
        v46 = NSStringFromClass(v50);
        *location = 138543874;
        *&location[4] = v46;
        v58 = 2048;
        v59 = self;
        v60 = 2048;
        v61 = -1;
        v47 = "Error: %{public}@ <%p>: Couldn't project jasper points: %ld";
        v48 = v13;
        v49 = OS_LOG_TYPE_INFO;
        goto LABEL_35;
      }

      LODWORD(v13) = -1;
LABEL_37:

      goto LABEL_43;
    }

    if (ARShouldUseLogTypeError_onceToken_6 != -1)
    {
      [ARDepthTechnique initWithPrioritization:temporalSmoothing:];
    }

    v33 = ARShouldUseLogTypeError_internalOSVersion_6;
    v34 = _ARLogTechnique_0();
    v35 = v34;
    if (v33 == 1)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *location = 138543618;
        *&location[4] = v37;
        v58 = 2048;
        v59 = self;
        v38 = "%{public}@ <%p>: No depth point cloud found";
        v39 = v35;
        v40 = OS_LOG_TYPE_ERROR;
LABEL_40:
        _os_log_impl(&dword_1C241C000, v39, v40, v38, location, 0x16u);
      }
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v51 = objc_opt_class();
      v37 = NSStringFromClass(v51);
      *location = 138543618;
      *&location[4] = v37;
      v58 = 2048;
      v59 = self;
      v38 = "Error: %{public}@ <%p>: No depth point cloud found";
      v39 = v35;
      v40 = OS_LOG_TYPE_INFO;
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  if (a3)
  {
    if (ARShouldUseLogTypeError_onceToken_6 != -1)
    {
      [ARDepthTechnique initWithPrioritization:temporalSmoothing:];
    }

    v18 = ARShouldUseLogTypeError_internalOSVersion_6;
    v19 = _ARLogTechnique_0();
    v20 = v19;
    if (v18 == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *location = 138543874;
        *&location[4] = v22;
        v58 = 2048;
        v59 = self;
        v60 = 2048;
        v61 = a3;
        v23 = "%{public}@ <%p>: Index not supported: %lu";
        v24 = v20;
        v25 = OS_LOG_TYPE_ERROR;
LABEL_20:
        _os_log_impl(&dword_1C241C000, v24, v25, v23, location, 0x20u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v32 = objc_opt_class();
      v22 = NSStringFromClass(v32);
      *location = 138543874;
      *&location[4] = v22;
      v58 = 2048;
      v59 = self;
      v60 = 2048;
      v61 = a3;
      v23 = "Error: %{public}@ <%p>: Index not supported: %lu";
      v24 = v20;
      v25 = OS_LOG_TYPE_INFO;
      goto LABEL_20;
    }

LABEL_42:

    LODWORD(v13) = -1;
    goto LABEL_43;
  }

  if (self->_temporalConsistencyMethod == 2 && [v10 pixelBuffer])
  {
    objc_initWeak(location, self);
    lktProcessingQueue = self->_lktProcessingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__ARDepthTechnique_bindInputBuffer_withImage_andOriginalImageData_rotationOfResultTensor___block_invoke;
    block[3] = &unk_1E817BDB0;
    objc_copyWeak(&v56, location);
    v55 = v10;
    dispatch_async(lktProcessingQueue, block);

    objc_destroyWeak(&v56);
    objc_destroyWeak(location);
  }

  v53.receiver = self;
  v53.super_class = ARDepthTechnique;
  LODWORD(v13) = [(ARMLImageProcessingTechnique *)&v53 bindInputBuffer:0 withImage:v10 andOriginalImageData:v11 rotationOfResultTensor:a6];
  v14 = self->_adLogger;
  v15 = [v10 pixelBuffer];
  [v10 timestamp];
  [(ADLogManager *)v14 logPixelBuffer:v15 name:"processedColor" timestamp:?];
LABEL_43:

  return v13;
}

void __90__ARDepthTechnique_bindInputBuffer_withImage_andOriginalImageData_rotationOfResultTensor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateOpticalFlowOutputBufferInBackgroundFromImageData:*(a1 + 32)];
}

- (id)networkModesForOrientation:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ((a3 - 3) <= 1)
  {
    self->_layout = 1;
    goto LABEL_14;
  }

  if ((a3 - 1) <= 1)
  {
    self->_layout = 0;
    goto LABEL_14;
  }

  if (ARShouldUseLogTypeError_onceToken_6 != -1)
  {
    [ARDepthTechnique initWithPrioritization:temporalSmoothing:];
  }

  v5 = ARShouldUseLogTypeError_internalOSVersion_6;
  v6 = _ARLogGeneral_3();
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *v16 = 138543874;
      *&v16[4] = v9;
      *&v16[12] = 2048;
      *&v16[14] = self;
      *&v16[22] = 2048;
      v17 = a3;
      v10 = "%{public}@ <%p>: Could not find a network config for the device orientation %ld";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
LABEL_12:
      _os_log_impl(&dword_1C241C000, v11, v12, v10, v16, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = objc_opt_class();
    v9 = NSStringFromClass(v13);
    *v16 = 138543874;
    *&v16[4] = v9;
    *&v16[12] = 2048;
    *&v16[14] = self;
    *&v16[22] = 2048;
    v17 = a3;
    v10 = "Error: %{public}@ <%p>: Could not find a network config for the device orientation %ld";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    goto LABEL_12;
  }

LABEL_14:
  v14 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor configurationNameForLayout:self->_layout, *v16, *&v16[16], v17];

  return v14;
}

- (void)networkModeDidChange:(id)a3 toMode:(id)a4
{
  v5.receiver = self;
  v5.super_class = ARDepthTechnique;
  [(ARMLImageProcessingTechnique *)&v5 networkModeDidChange:a3 toMode:a4];
  CVPixelBufferRelease(self->_previousDepthBuffer);
  self->_previousDepthBuffer = 0;
  CVPixelBufferRelease(self->_previousConfidenceBuffer);
  self->_previousConfidenceBuffer = 0;
  if (self->_temporalConsistencyMethod == 2)
  {
    [(ARDepthTechnique *)self _allocateLKTBuffers];
  }
}

- (id)createResultDataFromTensors:(id *)a3 numberOfOutputTensors:(unint64_t)a4 imageDataForNeuralNetwork:(id)a5 inputImageData:(id)a6 rotationNeeded:(int64_t)a7 regionOfInterest:(CGSize)a8
{
  height = a8.height;
  width = a8.width;
  v361 = *MEMORY[0x1E69E9840];
  v285 = a5;
  v286 = a6;
  var4 = a3->var4;
  v13 = var4;
  var5 = a3->var5;
  v14 = var5;
  v357 = 0;
  v358[0] = &v357;
  v358[1] = 0x2020000000;
  v287 = self;
  v358[2] = ARCreateCVPixelBufferFromPool(&self->_outputDepthPixelBufferPool, 1717855600, self, @"Depth Output", var4, var5);
  if (!*(v358[0] + 24))
  {
    v35 = 0;
    goto LABEL_196;
  }

  v353[0] = MEMORY[0x1E69E9820];
  v353[1] = 3221225472;
  v354 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke;
  v355 = &unk_1E817C268;
  v356 = &v357;
  v349 = 0;
  v350 = &v349;
  v351 = 0x2020000000;
  v352 = ARCreateCVPixelBufferFromPool(&self->_outputConfidencePixelBufferPool, 1717855600, self, @"Confidence Ouput", v13, v14);
  if (v350[3])
  {
    v345[0] = MEMORY[0x1E69E9820];
    v345[1] = 3221225472;
    v346 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_2;
    v347 = &unk_1E817C268;
    v348 = &v349;
    v341 = 0;
    v342 = &v341;
    v343 = 0x2020000000;
    v344 = ARCreateCVPixelBufferFromPool(&self->_outputConfidenceMapPixelBufferPool, 1278226488, self, @"Confidence Map Ouput", v13, v14);
    if (!v342[3])
    {
      v35 = 0;
LABEL_194:
      _Block_object_dispose(&v341, 8);
      v346(v345);
      goto LABEL_195;
    }

    v337[0] = MEMORY[0x1E69E9820];
    v337[1] = 3221225472;
    v338 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_3;
    v339 = &unk_1E817C268;
    v340 = &v341;
    v336 = 0;
    v335 = 0;
    v275 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor depthOutput];
    v273 = [v275 imageDescriptor];
    [v273 sizeForLayout:self->_layout];
    v16 = v15;
    v17 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor depthOutput];
    v18 = [v17 imageDescriptor];
    [v18 sizeForLayout:self->_layout];
    v20 = v19;
    v21 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor depthOutput];
    v22 = [v21 imageDescriptor];
    v23 = [v22 pixelFormat];
    v24 = *[(ARMLImageProcessingTechnique *)self espressoOutputTensorsData];
    v25 = [(ADEspressoJasperColorInferenceDescriptor *)v287->_inferenceDescriptor depthOutput];
    v26 = [v25 imageDescriptor];
    [v26 sizeForLayout:v287->_layout];
    allocator = *MEMORY[0x1E695E480];
    v28 = CVPixelBufferCreateWithBytes(*MEMORY[0x1E695E480], v16, v20, v23, v24, vcvtd_n_u64_f64(v27, 2uLL), 0, 0, 0, &v336);

    if (v28)
    {
      v29 = v287;
      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique _initLKT];
        v29 = v287;
      }

      v30 = ARShouldUseLogTypeError_internalOSVersion_6;
      v31 = _ARLogTechnique_0();
      v32 = v31;
      if (v30 == 1)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          buf.columns[0].i32[0] = 138543618;
          *(buf.columns[0].i64 + 4) = v34;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = v29;
          _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Couldn't allocate pixel buffer for raw depth output", &buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        buf.columns[0].i32[0] = 138543618;
        *(buf.columns[0].i64 + 4) = v57;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = v29;
        _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Couldn't allocate pixel buffer for raw depth output", &buf, 0x16u);
      }

      v35 = 0;
      goto LABEL_193;
    }

    v331[0] = MEMORY[0x1E69E9820];
    v331[1] = 3221225472;
    v332 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_38;
    v333 = &__block_descriptor_40_e5_v8__0l;
    v334 = v336;
    v276 = [(ADEspressoJasperColorInferenceDescriptor *)v287->_inferenceDescriptor confidenceOutput];
    v274 = [v276 imageDescriptor];
    [v274 sizeForLayout:v287->_layout];
    v37 = v36;
    v38 = [(ADEspressoJasperColorInferenceDescriptor *)v287->_inferenceDescriptor confidenceOutput];
    v39 = [v38 imageDescriptor];
    [v39 sizeForLayout:v287->_layout];
    v41 = v40;
    v42 = [(ADEspressoJasperColorInferenceDescriptor *)v287->_inferenceDescriptor confidenceOutput];
    v43 = [v42 imageDescriptor];
    v44 = [v43 pixelFormat];
    v45 = [(ARMLImageProcessingTechnique *)v287 espressoOutputTensorsData][168];
    v46 = [(ADEspressoJasperColorInferenceDescriptor *)v287->_inferenceDescriptor confidenceOutput];
    v47 = [v46 imageDescriptor];
    [v47 sizeForLayout:v287->_layout];
    v49 = CVPixelBufferCreateWithBytes(allocator, v37, v41, v44, v45, vcvtd_n_u64_f64(v48, 2uLL), 0, 0, 0, &v335);

    if (v49)
    {
      v50 = v287;
      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique _initLKT];
        v50 = v287;
      }

      v51 = ARShouldUseLogTypeError_internalOSVersion_6;
      v52 = _ARLogTechnique_0();
      v53 = v52;
      if (v51 == 1)
      {
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v54 = objc_opt_class();
          v55 = NSStringFromClass(v54);
          buf.columns[0].i32[0] = 138543618;
          *(buf.columns[0].i64 + 4) = v55;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = v50;
          _os_log_impl(&dword_1C241C000, v53, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Couldn't allocate pixel buffer for raw confidence output", &buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v70 = objc_opt_class();
        v71 = NSStringFromClass(v70);
        buf.columns[0].i32[0] = 138543618;
        *(buf.columns[0].i64 + 4) = v71;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = v50;
        _os_log_impl(&dword_1C241C000, v53, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Couldn't allocate pixel buffer for raw confidence output", &buf, 0x16u);
      }

      v35 = 0;
      goto LABEL_192;
    }

    v327[0] = MEMORY[0x1E69E9820];
    v327[1] = 3221225472;
    v328 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_39;
    v329 = &__block_descriptor_40_e5_v8__0l;
    v330 = v335;
    [v286 timestamp];
    v58 = v287;
    kdebug_trace();
    v59 = v358;
    v60 = [(ADJasperColorPipeline *)v287->_pipeline postProcessWithDepth:v336 confidence:v335 depthOutput:*(v358[0] + 24) confidenceOutput:v350[3]];
    adLogger = v287->_adLogger;
    v62 = v336;
    [v286 timestamp];
    [(ADLogManager *)adLogger logPixelBuffer:v62 name:"depthOutRaw" timestamp:?];
    v63 = v287->_adLogger;
    v64 = v335;
    [v286 timestamp];
    [(ADLogManager *)v63 logPixelBuffer:v64 name:"confidenceOutRaw" timestamp:?];
    [v286 timestamp];
    kdebug_trace();
    if (v60)
    {
      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique _initLKT];
      }

      v65 = ARShouldUseLogTypeError_internalOSVersion_6;
      v66 = _ARLogTechnique_0();
      v67 = v66;
      if (v65 == 1)
      {
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v68 = objc_opt_class();
          v69 = NSStringFromClass(v68);
          buf.columns[0].i32[0] = 138543874;
          *(buf.columns[0].i64 + 4) = v69;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = v287;
          buf.columns[1].i16[3] = 2048;
          buf.columns[1].i64[1] = v60;
          _os_log_impl(&dword_1C241C000, v67, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to post process AppleDepth pipeline output: %li", &buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        v72 = objc_opt_class();
        v73 = NSStringFromClass(v72);
        buf.columns[0].i32[0] = 138543874;
        *(buf.columns[0].i64 + 4) = v73;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = v287;
        buf.columns[1].i16[3] = 2048;
        buf.columns[1].i64[1] = v60;
        _os_log_impl(&dword_1C241C000, v67, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to post process AppleDepth pipeline output: %li", &buf, 0x20u);
      }

      v58 = v287;
      v59 = v358;
    }

    v74 = [*(v58 + 344) postProcessConfidence:v335 confidenceOutput:v342[3] confidenceUnits:1];
    if (v74)
    {
      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique _initLKT];
        v58 = v287;
      }

      v75 = ARShouldUseLogTypeError_internalOSVersion_6;
      v76 = _ARLogTechnique_0();
      v77 = v76;
      if (v75 == 1)
      {
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          v78 = objc_opt_class();
          v79 = NSStringFromClass(v78);
          buf.columns[0].i32[0] = 138543874;
          *(buf.columns[0].i64 + 4) = v79;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = v58;
          buf.columns[1].i16[3] = 2048;
          buf.columns[1].i64[1] = v74;
          _os_log_impl(&dword_1C241C000, v77, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to post process AppleDepth confidence map output: %li", &buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v88 = objc_opt_class();
        v89 = NSStringFromClass(v88);
        buf.columns[0].i32[0] = 138543874;
        *(buf.columns[0].i64 + 4) = v89;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = v58;
        buf.columns[1].i16[3] = 2048;
        buf.columns[1].i64[1] = v74;
        _os_log_impl(&dword_1C241C000, v77, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to post process AppleDepth confidence map output: %li", &buf, 0x20u);
      }

      v35 = 0;
LABEL_191:
      v328(v327);
LABEL_192:
      v332(v331);
LABEL_193:
      v338(v337);
      goto LABEL_194;
    }

    v325 = 0;
    v326[0] = &v325;
    v326[1] = 0x2020000000;
    v326[2] = 0;
    v321 = 0;
    v322 = &v321;
    v323 = 0x2020000000;
    v324 = 0;
    v316[0] = MEMORY[0x1E69E9820];
    v316[1] = 3221225472;
    v317 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_42;
    v318 = &unk_1E817C2B0;
    v319 = &v325;
    v320 = &v321;
    v80 = *(v58 + 704);
    if (*(v58 + 368) && v80 == 2)
    {
      buf.columns[0].i64[0] = 0;
      buf.columns[0].i64[1] = &buf;
      buf.columns[1] = 0x2020000000uLL;
      v312[0] = MEMORY[0x1E69E9820];
      v312[1] = 3221225472;
      v313 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_2_43;
      v314 = &unk_1E817C268;
      p_buf = &buf;
      if (*(v58 + 496))
      {
        v81 = ARCreateCVPixelBufferFromPool((v58 + 392), 1717855600, v58, @"temporally smoothed depth buffer", v13, v14);
        *(v326[0] + 24) = v81;
        if (!v81)
        {
          if (ARShouldUseLogTypeError_onceToken_6 != -1)
          {
            [ARDepthTechnique _initLKT];
            v58 = v287;
          }

          v91 = ARShouldUseLogTypeError_internalOSVersion_6;
          v92 = _ARLogTechnique_0();
          v85 = v92;
          if (v91 == 1)
          {
            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              v93 = objc_opt_class();
              v94 = NSStringFromClass(v93);
              v359.columns[0].i32[0] = 138543618;
              *(v359.columns[0].i64 + 4) = v94;
              v359.columns[0].i16[6] = 2048;
              *(&v359.columns[0].i64[1] + 6) = v58;
              _os_log_impl(&dword_1C241C000, v85, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create pixel buffer for generating optical flow result pixelbuffer", &v359, 0x16u);
            }
          }

          else if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
          {
            v135 = objc_opt_class();
            v136 = NSStringFromClass(v135);
            v359.columns[0].i32[0] = 138543618;
            *(v359.columns[0].i64 + 4) = v136;
            v359.columns[0].i16[6] = 2048;
            *(&v359.columns[0].i64[1] + 6) = v58;
            _os_log_impl(&dword_1C241C000, v85, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create pixel buffer for generating optical flow result pixelbuffer", &v359, 0x16u);
          }

          goto LABEL_93;
        }

        os_unfair_lock_lock((v58 + 624));
        [v286 timestamp];
        kdebug_trace();
        v82 = [*(v58 + 344) warpAndFuseWithCurrDepth:*(v358[0] + 24) prevDepth:*(v58 + 496) opticalFlow:*(v58 + 720) alphaMap:*(buf.columns[0].i64[1] + 24) depthOutput:*(v326[0] + 24)];
        [v286 timestamp];
        kdebug_trace();
        [v58 setOpticalFlowOutputBuffer:0];
        os_unfair_lock_unlock((v58 + 624));
        if (v82)
        {
          if (ARShouldUseLogTypeError_onceToken_6 != -1)
          {
            [ARDepthTechnique _initLKT];
            v58 = v287;
          }

          v83 = ARShouldUseLogTypeError_internalOSVersion_6;
          v84 = _ARLogTechnique_0();
          v85 = v84;
          if (v83 == 1)
          {
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              v86 = objc_opt_class();
              v87 = NSStringFromClass(v86);
              v359.columns[0].i32[0] = 138543874;
              *(v359.columns[0].i64 + 4) = v87;
              v359.columns[0].i16[6] = 2048;
              *(&v359.columns[0].i64[1] + 6) = v58;
              v359.columns[1].i16[3] = 2048;
              v359.columns[1].i64[1] = v82;
              _os_log_impl(&dword_1C241C000, v85, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to warp and fuse AppleDepth pipeline output: %li", &v359, 0x20u);
            }
          }

          else if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
          {
            v133 = objc_opt_class();
            v134 = NSStringFromClass(v133);
            v359.columns[0].i32[0] = 138543874;
            *(v359.columns[0].i64 + 4) = v134;
            v359.columns[0].i16[6] = 2048;
            *(&v359.columns[0].i64[1] + 6) = v58;
            v359.columns[1].i16[3] = 2048;
            v359.columns[1].i64[1] = v82;
            _os_log_impl(&dword_1C241C000, v85, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to warp and fuse AppleDepth pipeline output: %li", &v359, 0x20u);
          }

LABEL_93:

          v58 = v287;
          goto LABEL_94;
        }

        CVPixelBufferRelease(*(v58 + 496));
        v59 = v326;
      }

      v95 = *(*v59 + 24);
      *(v58 + 496) = v95;
      CVPixelBufferRetain(v95);
LABEL_94:
      v313(v312);
      _Block_object_dispose(&buf, 8);
      goto LABEL_130;
    }

    if (v80 != 1)
    {
      if (var4 == width && var5 == height)
      {
        goto LABEL_132;
      }

LABEL_130:
      v167 = ARCreateCVPixelBufferFromPool((v58 + 432), 1717855600, v58, @"Scaled Depth Ouput", width, height);
      v168 = v167;
      if (!v167)
      {
        goto LABEL_166;
      }

      v308[0] = MEMORY[0x1E69E9820];
      v308[1] = 3221225472;
      v309 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_59;
      v310 = &__block_descriptor_40_e5_v8__0l;
      v311 = v167;
      [v286 timestamp];
      kdebug_trace();
      v169 = ARResizeBufferWithNearestNeighbors(*(v358[0] + 24), v168, 4uLL);
      [v286 timestamp];
      kdebug_trace();
      if (v169)
      {
        if (ARShouldUseLogTypeError_onceToken_6 != -1)
        {
          [ARDepthTechnique _initLKT];
        }

        v170 = ARShouldUseLogTypeError_internalOSVersion_6;
        v171 = _ARLogTechnique_0();
        v172 = v171;
        if (v170 == 1)
        {
          if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
          {
            v173 = objc_opt_class();
            v174 = NSStringFromClass(v173);
            buf.columns[0].i32[0] = 138543874;
            *(buf.columns[0].i64 + 4) = v174;
            buf.columns[0].i16[6] = 2048;
            *(&buf.columns[0].i64[1] + 6) = v287;
            buf.columns[1].i16[3] = 1024;
            buf.columns[1].i32[2] = v169;
            _os_log_impl(&dword_1C241C000, v172, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample pixel buffer: %i", &buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
        {
          v195 = objc_opt_class();
          v196 = NSStringFromClass(v195);
          buf.columns[0].i32[0] = 138543874;
          *(buf.columns[0].i64 + 4) = v196;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = v287;
          buf.columns[1].i16[3] = 1024;
          buf.columns[1].i32[2] = v169;
          _os_log_impl(&dword_1C241C000, v172, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample pixel buffer: %i", &buf, 0x1Cu);
        }

        v58 = v287;
      }

      else
      {
        CVPixelBufferRelease(*(v358[0] + 24));
        v194 = CVPixelBufferRetain(v168);
        *(v358[0] + 24) = v194;
      }

      v309(v308);
      if (v169)
      {
        goto LABEL_166;
      }

      if (*(v326[0] + 24))
      {
        v197 = ARCreateCVPixelBufferFromPool((v58 + 456), 1717855600, v58, @"Scaled Temporally Consistent Depth Ouput", width, height);
        v198 = v197;
        if (!v197)
        {
          goto LABEL_166;
        }

        v304[0] = MEMORY[0x1E69E9820];
        v304[1] = 3221225472;
        v305 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_63;
        v306 = &__block_descriptor_40_e5_v8__0l;
        v307 = v197;
        v199 = ARResizeBufferWithNearestNeighbors(*(v326[0] + 24), v197, 4uLL);
        if (v199)
        {
          if (ARShouldUseLogTypeError_onceToken_6 != -1)
          {
            [ARDepthTechnique _initLKT];
          }

          v200 = ARShouldUseLogTypeError_internalOSVersion_6;
          v201 = _ARLogTechnique_0();
          v202 = v201;
          if (v200 == 1)
          {
            if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
            {
              v203 = objc_opt_class();
              v204 = NSStringFromClass(v203);
              buf.columns[0].i32[0] = 138543874;
              *(buf.columns[0].i64 + 4) = v204;
              buf.columns[0].i16[6] = 2048;
              *(&buf.columns[0].i64[1] + 6) = v287;
              buf.columns[1].i16[3] = 1024;
              buf.columns[1].i32[2] = v199;
              _os_log_impl(&dword_1C241C000, v202, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample temporally consistent depth buffer: %i", &buf, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v201, OS_LOG_TYPE_INFO))
          {
            v222 = objc_opt_class();
            v223 = NSStringFromClass(v222);
            buf.columns[0].i32[0] = 138543874;
            *(buf.columns[0].i64 + 4) = v223;
            buf.columns[0].i16[6] = 2048;
            *(&buf.columns[0].i64[1] + 6) = v287;
            buf.columns[1].i16[3] = 1024;
            buf.columns[1].i32[2] = v199;
            _os_log_impl(&dword_1C241C000, v202, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample temporally consistent depth buffer: %i", &buf, 0x1Cu);
          }

          v58 = v287;
        }

        else
        {
          CVPixelBufferRelease(*(v326[0] + 24));
          v221 = CVPixelBufferRetain(v198);
          *(v326[0] + 24) = v221;
        }

        v305(v304);
        if (v199)
        {
          goto LABEL_166;
        }
      }

      v224 = ARCreateCVPixelBufferFromPool((v58 + 440), 1717855600, v58, @"Scaled Depth Confidence Ouput", width, height);
      v225 = v224;
      if (!v224)
      {
        goto LABEL_166;
      }

      v300[0] = MEMORY[0x1E69E9820];
      v300[1] = 3221225472;
      v301 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_67;
      v302 = &__block_descriptor_40_e5_v8__0l;
      v303 = v224;
      v226 = ARResizeBufferWithNearestNeighbors(v350[3], v224, 4uLL);
      if (v226)
      {
        if (ARShouldUseLogTypeError_onceToken_6 != -1)
        {
          [ARDepthTechnique _initLKT];
        }

        v227 = ARShouldUseLogTypeError_internalOSVersion_6;
        v228 = _ARLogTechnique_0();
        v229 = v228;
        if (v227 == 1)
        {
          if (os_log_type_enabled(v228, OS_LOG_TYPE_ERROR))
          {
            v230 = objc_opt_class();
            v231 = NSStringFromClass(v230);
            buf.columns[0].i32[0] = 138543874;
            *(buf.columns[0].i64 + 4) = v231;
            buf.columns[0].i16[6] = 2048;
            *(&buf.columns[0].i64[1] + 6) = v287;
            buf.columns[1].i16[3] = 1024;
            buf.columns[1].i32[2] = v226;
            _os_log_impl(&dword_1C241C000, v229, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample pixel buffer: %i", &buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v228, OS_LOG_TYPE_INFO))
        {
          v233 = objc_opt_class();
          v234 = NSStringFromClass(v233);
          buf.columns[0].i32[0] = 138543874;
          *(buf.columns[0].i64 + 4) = v234;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = v287;
          buf.columns[1].i16[3] = 1024;
          buf.columns[1].i32[2] = v226;
          _os_log_impl(&dword_1C241C000, v229, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample pixel buffer: %i", &buf, 0x1Cu);
        }

        v58 = v287;
      }

      else
      {
        CVPixelBufferRelease(v350[3]);
        v232 = CVPixelBufferRetain(v225);
        v350[3] = v232;
      }

      v301(v300);
      if (v226)
      {
        goto LABEL_166;
      }

      if (v322[3])
      {
        v235 = ARCreateCVPixelBufferFromPool((v58 + 456), 1717855600, v58, @"Scaled Temporally Consistent Depth Confidence Ouput", width, height);
        v236 = v235;
        if (!v235)
        {
          goto LABEL_166;
        }

        v296[0] = MEMORY[0x1E69E9820];
        v296[1] = 3221225472;
        v297 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_71;
        v298 = &__block_descriptor_40_e5_v8__0l;
        v299 = v235;
        v237 = ARResizeBufferWithNearestNeighbors(v322[3], v235, 4uLL);
        if (v237)
        {
          if (ARShouldUseLogTypeError_onceToken_6 != -1)
          {
            [ARDepthTechnique _initLKT];
          }

          v238 = ARShouldUseLogTypeError_internalOSVersion_6;
          v239 = _ARLogTechnique_0();
          v240 = v239;
          if (v238 == 1)
          {
            if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
            {
              v241 = objc_opt_class();
              v242 = NSStringFromClass(v241);
              buf.columns[0].i32[0] = 138543874;
              *(buf.columns[0].i64 + 4) = v242;
              buf.columns[0].i16[6] = 2048;
              *(&buf.columns[0].i64[1] + 6) = v287;
              buf.columns[1].i16[3] = 1024;
              buf.columns[1].i32[2] = v237;
              _os_log_impl(&dword_1C241C000, v240, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample temporally consistent confidence buffer: %i", &buf, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v239, OS_LOG_TYPE_INFO))
          {
            v244 = objc_opt_class();
            v245 = NSStringFromClass(v244);
            buf.columns[0].i32[0] = 138543874;
            *(buf.columns[0].i64 + 4) = v245;
            buf.columns[0].i16[6] = 2048;
            *(&buf.columns[0].i64[1] + 6) = v287;
            buf.columns[1].i16[3] = 1024;
            buf.columns[1].i32[2] = v237;
            _os_log_impl(&dword_1C241C000, v240, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample temporally consistent confidence buffer: %i", &buf, 0x1Cu);
          }
        }

        else
        {
          CVPixelBufferRelease(v322[3]);
          v243 = CVPixelBufferRetain(v236);
          v322[3] = v243;
        }

        v297(v296);
        v58 = v287;
        if (v237)
        {
          goto LABEL_166;
        }
      }

      v246 = ARCreateCVPixelBufferFromPool((v58 + 448), 1278226488, v58, @"Scaled Depth Confidence Map Ouput", width, height);
      v247 = v246;
      if (!v246)
      {
        goto LABEL_166;
      }

      v292[0] = MEMORY[0x1E69E9820];
      v292[1] = 3221225472;
      v293 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_75;
      v294 = &__block_descriptor_40_e5_v8__0l;
      v295 = v246;
      v248 = ARResizeBufferWithNearestNeighbors(v342[3], v246, 1uLL);
      if (v248)
      {
        if (ARShouldUseLogTypeError_onceToken_6 != -1)
        {
          [ARDepthTechnique _initLKT];
        }

        v249 = ARShouldUseLogTypeError_internalOSVersion_6;
        v250 = _ARLogTechnique_0();
        v251 = v250;
        if (v249 == 1)
        {
          if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
          {
            v252 = objc_opt_class();
            v253 = NSStringFromClass(v252);
            buf.columns[0].i32[0] = 138543874;
            *(buf.columns[0].i64 + 4) = v253;
            buf.columns[0].i16[6] = 2048;
            *(&buf.columns[0].i64[1] + 6) = v287;
            buf.columns[1].i16[3] = 1024;
            buf.columns[1].i32[2] = v248;
            _os_log_impl(&dword_1C241C000, v251, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample confidence buffer: %i", &buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v250, OS_LOG_TYPE_INFO))
        {
          v255 = objc_opt_class();
          v256 = NSStringFromClass(v255);
          buf.columns[0].i32[0] = 138543874;
          *(buf.columns[0].i64 + 4) = v256;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = v287;
          buf.columns[1].i16[3] = 1024;
          buf.columns[1].i32[2] = v248;
          _os_log_impl(&dword_1C241C000, v251, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample confidence buffer: %i", &buf, 0x1Cu);
        }
      }

      else
      {
        CVPixelBufferRelease(v342[3]);
        v254 = CVPixelBufferRetain(v247);
        v342[3] = v254;
      }

      v293(v292);
      v58 = v287;
      if (v248)
      {
LABEL_166:
        v35 = 0;
      }

      else
      {
LABEL_132:
        v159 = *(v58 + 600);
        if (!v159 || [v159 rotationAngle] != a7 || objc_msgSend(*(v58 + 600), "mirrorMode"))
        {
          v160 = [[ARImageRotationTechnique alloc] initWithRotation:a7 mirror:0];
          v161 = *(v58 + 600);
          *(v58 + 600) = v160;

          v58 = v287;
        }

        v162 = *(v58 + 608);
        if (!v162 || [v162 rotationAngle] != a7 || objc_msgSend(*(v58 + 608), "mirrorMode"))
        {
          v163 = [[ARImageRotationTechnique alloc] initWithRotation:a7 mirror:0];
          v164 = *(v58 + 608);
          *(v58 + 608) = v163;

          v58 = v287;
        }

        [v286 timestamp];
        kdebug_trace();
        v284 = [v58 _rotatedPixelBufferImageData:*(v358[0] + 24)];
        v282 = [v58 _rotatedPixelBufferImageData:v350[3]];
        v165 = [v58 _rotatedPixelBufferImageData:v342[3]];
        if (*(v326[0] + 24))
        {
          v166 = [v58 _rotatedPixelBufferImageData:?];

          v58 = v287;
        }

        else
        {
          v166 = 0;
        }

        if (v322[3])
        {
          v175 = [v58 _rotatedPixelBufferImageData:?];
        }

        else
        {
          v175 = 0;
        }

        [v286 timestamp];
        kdebug_trace();
        if (v166 && v175)
        {
          v176 = [ARMLDepthData alloc];
          [v286 timestamp];
          v178 = -[ARMLDepthData initWithTimestamp:depthBuffer:confidenceBuffer:source:](v176, "initWithTimestamp:depthBuffer:confidenceBuffer:source:", [v166 pixelBuffer], objc_msgSend(v175, "pixelBuffer"), 2, v177);
          -[ARMLDepthData setSingleFrameDepthBuffer:](v178, "setSingleFrameDepthBuffer:", [v284 pixelBuffer]);
          -[ARMLDepthData setSingleFrameConfidenceBuffer:](v178, "setSingleFrameConfidenceBuffer:", [v282 pixelBuffer]);
        }

        else
        {
          v179 = [ARMLDepthData alloc];
          [v286 timestamp];
          v178 = -[ARMLDepthData initWithTimestamp:depthBuffer:confidenceBuffer:source:](v179, "initWithTimestamp:depthBuffer:confidenceBuffer:source:", [v284 pixelBuffer], objc_msgSend(v282, "pixelBuffer"), 2, v180);
        }

        -[ARMLDepthData setConfidenceMap:](v178, "setConfidenceMap:", [v165 pixelBuffer]);
        v181 = [v286 originalImage];
        [(ARMLDepthData *)v178 setSourceImageData:v181];

        v182 = v287->_adLogger;
        v183 = [(ARMLDepthData *)v178 depthBuffer];
        [v286 timestamp];
        [(ADLogManager *)v182 logPixelBuffer:v183 name:"depthOutProcessed" timestamp:?];
        v184 = v287->_adLogger;
        v185 = [(ARMLDepthData *)v178 confidenceBuffer];
        [v286 timestamp];
        [(ADLogManager *)v184 logPixelBuffer:v185 name:"confidenceOutProcessed" timestamp:?];
        v186 = v287->_adLogger;
        v187 = [(ARMLDepthData *)v178 confidenceMap];
        [v286 timestamp];
        [(ADLogManager *)v186 logPixelBuffer:v187 name:"confidenceLevels" timestamp:?];
        if (v287->_computeNormals)
        {
          v188 = [(ARMLDepthData *)v178 singleFrameDepthBuffer];
          v189 = v188;
          if (v188)
          {
            v190 = CVPixelBufferGetWidth(v188);
            v191 = CVPixelBufferGetHeight(v189);
            v192 = v190;
            v193 = v191;
          }

          else
          {
            v192 = *MEMORY[0x1E695F060];
            v193 = *(MEMORY[0x1E695F060] + 8);
          }

          v205 = ARCreateCVPixelBufferFromPool(&v287->_normalPixelBufferPool, 1380410945, v287, @"Normals Map", v192, v193);
          v288[0] = MEMORY[0x1E69E9820];
          v288[1] = 3221225472;
          v289 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_83;
          v290 = &__block_descriptor_40_e5_v8__0l;
          v291 = v205;
          if (v205)
          {
            [v286 cameraIntrinsics];
            v278 = v207;
            v280 = v206;
            [v286 timestamp];
            kdebug_trace();
            v208 = [MEMORY[0x1E698C138] normalsFromDepth:-[ARMLDepthData depthBuffer](v178 focalLength:"depthBuffer") principalPoint:v205 normalsOutput:v287->_normalsHelperBuffer withHelperBuffer:{v280, *&v278, *(&v278 + 1)}];
            [v286 timestamp];
            kdebug_trace();
            if (v208)
            {
              if (ARShouldUseLogTypeError_onceToken_6 != -1)
              {
                [ARDepthTechnique _initLKT];
              }

              v209 = ARShouldUseLogTypeError_internalOSVersion_6;
              v210 = _ARLogTechnique_0();
              v211 = v210;
              if (v209 == 1)
              {
                if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
                {
                  v212 = objc_opt_class();
                  v213 = NSStringFromClass(v212);
                  buf.columns[0].i32[0] = 138543874;
                  *(buf.columns[0].i64 + 4) = v213;
                  buf.columns[0].i16[6] = 2048;
                  *(&buf.columns[0].i64[1] + 6) = v287;
                  buf.columns[1].i16[3] = 2048;
                  buf.columns[1].i64[1] = v208;
                  _os_log_impl(&dword_1C241C000, v211, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to generate normal map: %li", &buf, 0x20u);
                }
              }

              else if (os_log_type_enabled(v210, OS_LOG_TYPE_INFO))
              {
                v216 = objc_opt_class();
                v217 = NSStringFromClass(v216);
                buf.columns[0].i32[0] = 138543874;
                *(buf.columns[0].i64 + 4) = v217;
                buf.columns[0].i16[6] = 2048;
                *(&buf.columns[0].i64[1] + 6) = v287;
                buf.columns[1].i16[3] = 2048;
                buf.columns[1].i64[1] = v208;
                _os_log_impl(&dword_1C241C000, v211, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to generate normal map: %li", &buf, 0x20u);
              }
            }

            else
            {
              [(ARMLDepthData *)v178 setNormalsBuffer:v205];
              v214 = v287->_adLogger;
              v215 = [(ARMLDepthData *)v178 normalsBuffer];
              [v286 timestamp];
              [(ADLogManager *)v214 logPixelBuffer:v215 name:"normalsOutProcessed" timestamp:?];
            }
          }

          v289(v288);
        }

        [(ARMLDepthData *)v178 timestamp];
        kdebug_trace();
        [(ARMLDepthData *)v178 timestamp];
        v218 = [(ARMLDepthData *)v178 sourceImageData];
        v219 = [v218 cameraType];
        [v219 isEqualToString:*MEMORY[0x1E6986948]];
        kdebug_trace();

        [(ARMLDepthData *)v178 timestamp];
        [v286 cameraIntrinsics];
        [v286 cameraIntrinsics];
        [v286 cameraIntrinsics];
        kdebug_trace();
        v35 = v178;
      }

      v317(v316);
      _Block_object_dispose(&v321, 8);
      _Block_object_dispose(&v325, 8);
      goto LABEL_191;
    }

    if (a7 == -90)
    {
      v90 = 3;
    }

    else if (a7 == 180)
    {
      v90 = 2;
    }

    else
    {
      v90 = a7 == 90;
    }

    *v96.i64 = matrixForImageRotation(v90);
    v265 = v97;
    v267 = v96;
    v261 = v99;
    v263 = v98;
    v100 = MEMORY[0x1E698C198];
    [v286 visionTransform];
    [v100 transformMetersToMillimiters:?];
    v277 = v101;
    v270 = v103;
    *allocatora = v102;
    v269 = v104;
    v105 = [v286 calibrationData];

    if (v105)
    {
      v106 = objc_alloc(MEMORY[0x1E698C180]);
      v107 = [v286 calibrationData];
      v108 = [v106 ar_initWithImageData:v286 calibrationData:v107];

      v109 = objc_opt_new();
      [v108 setDistortionModel:v109];

      [v108 adjustForImageRotation:v90];
      [v108 referenceDimensions];
      v110 = v287;
      v112 = v111;
      [v108 referenceDimensions];
      v114 = var5;
      if (v112 * v13 != v113 * v14)
      {
        [v108 referenceDimensions];
        v116 = v115;
        [v108 referenceDimensions];
        v114 = v116 * v13 / v117;
      }

      [v108 scale:{v13, v114}];
    }

    else
    {
      v108 = 0;
      v110 = v287;
    }

    previousDepthBuffer = v110->_previousDepthBuffer;
    v119 = &OBJC_IVAR___ARReplaySensorPublic__sequenceURL;
    if (!previousDepthBuffer || !v110->_previousConfidenceBuffer)
    {
      CVPixelBufferRelease(previousDepthBuffer);
      v287->_previousDepthBuffer = CVPixelBufferRetain(*(v358[0] + 24));
      CVPixelBufferRelease(v287->_previousConfidenceBuffer);
      v131 = CVPixelBufferRetain(v350[3]);
      v132 = v287;
      v287->_previousConfidenceBuffer = v131;
LABEL_129:
      *v132->_anon_210 = v277;
      *&v132->_anon_210[16] = *allocatora;
      *&v132->_anon_210[32] = v270;
      *&v132->_anon_210[48] = v269;
      objc_storeStrong((&v132->super.super.super.super.isa + v119[113]), v108);

      v58 = v287;
      goto LABEL_130;
    }

    v120 = ARCreateCVPixelBufferFromPool(&v110->_outputTemporalConsistentDepthPixelBufferPool, 1717855600, v110, @"temporally consistent depth buffer", v13, v14);
    *(v326[0] + 24) = v120;
    v121 = ARCreateCVPixelBufferFromPool(&v287->_outputTemporalConsistentConfidencePixelBufferPool, 1717855600, v287, @"temporally consistent confidence buffer", v13, v14);
    v322[3] = v121;
    if (!*(v326[0] + 24) || !v121)
    {
      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique _initLKT];
      }

      v137 = ARShouldUseLogTypeError_internalOSVersion_6;
      v138 = _ARLogTechnique_0();
      v139 = v138;
      if (v137 == 1)
      {
        if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          v140 = objc_opt_class();
          v141 = NSStringFromClass(v140);
          buf.columns[0].i32[0] = 138543618;
          *(buf.columns[0].i64 + 4) = v141;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = v287;
          _os_log_impl(&dword_1C241C000, v139, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create pixel buffer for generating optical flow result pixelbuffer", &buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
      {
        v142 = objc_opt_class();
        v143 = NSStringFromClass(v142);
        buf.columns[0].i32[0] = 138543618;
        *(buf.columns[0].i64 + 4) = v143;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = v287;
        _os_log_impl(&dword_1C241C000, v139, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create pixel buffer for generating optical flow result pixelbuffer", &buf, 0x16u);
      }

      v132 = v287;
      goto LABEL_129;
    }

    os_unfair_lock_lock(&v287->_opticalFlowOutputBufferLock);
    [v286 timestamp];
    kdebug_trace();
    v363 = __invert_f4(*v287->_anon_210);
    v122 = 0;
    v359 = v363;
    memset(&buf, 0, sizeof(buf));
    do
    {
      buf.columns[v122] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v277, COERCE_FLOAT(*&v359.columns[v122])), *allocatora, *v359.columns[v122].f32, 1), v270, v359.columns[v122], 2), v269, v359.columns[v122], 3);
      ++v122;
    }

    while (v122 != 4);
    v259 = buf.columns[1];
    v260 = buf.columns[0];
    v257 = buf.columns[3];
    v258 = buf.columns[2];
    v364.columns[1] = v265;
    v364.columns[0] = v267;
    v364.columns[3] = v261;
    v364.columns[2] = v263;
    v365 = __invert_f4(v364);
    v123 = 0;
    v359.columns[0] = v267;
    v359.columns[1] = v265;
    v359.columns[2] = v263;
    v359.columns[3] = v261;
    memset(&buf, 0, sizeof(buf));
    do
    {
      buf.columns[v123] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v260, COERCE_FLOAT(*&v359.columns[v123])), v259, *v359.columns[v123].f32, 1), v258, v359.columns[v123], 2), v257, v359.columns[v123], 3);
      ++v123;
    }

    while (v123 != 4);
    v124 = 0;
    v359 = buf;
    memset(&buf, 0, sizeof(buf));
    do
    {
      buf.columns[v124] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v365.columns[0], COERCE_FLOAT(*&v359.columns[v124])), v365.columns[1], *v359.columns[v124].f32, 1), v365.columns[2], v359.columns[v124], 2), v365.columns[3], v359.columns[v124], 3);
      ++v124;
    }

    while (v124 != 4);
    v266 = *buf.columns[1].i64;
    v268 = *buf.columns[0].i64;
    v262 = *buf.columns[3].i64;
    v264 = *buf.columns[2].i64;
    previousWarpedDepthBuffer = v287->_previousWarpedDepthBuffer;
    if (previousWarpedDepthBuffer)
    {
      v126 = CVPixelBufferGetWidth(v287->_previousWarpedDepthBuffer);
      v127 = CVPixelBufferGetHeight(previousWarpedDepthBuffer);
      v128 = v13 == v126 && v14 == v127;
      v129 = v287;
      if (v128)
      {
LABEL_106:
        previousWarpedConfidenceBuffer = v129->_previousWarpedConfidenceBuffer;
        if (previousWarpedConfidenceBuffer)
        {
          v146 = CVPixelBufferGetWidth(v129->_previousWarpedConfidenceBuffer);
          v147 = CVPixelBufferGetHeight(previousWarpedConfidenceBuffer);
          v148 = v287->_previousWarpedConfidenceBuffer;
          if (v13 == v146 && v14 == v147)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v148 = 0;
        }

        CVPixelBufferRelease(v148);
        v148 = ARCreateCVPixelBufferFromPool(&v287->_outputTemporalConsistentConfidencePixelBufferPool, 1717855600, v287, @"temporally consistent depth buffer", v13, v14);
        v287->_previousWarpedConfidenceBuffer = v148;
LABEL_115:
        v150 = [(ADJasperColorPipeline *)v287->_pipeline warpPreviousDepth:v287->_previousDepthBuffer intoCurrentDepth:v287->_previousWarpedDepthBuffer previousConfidence:v287->_previousConfidenceBuffer intoCurrentConfidence:v148 usingPoseDelta:v287->_previousCameraCalibration previousCalibration:v108 currentCalibration:v268, v266, v264, v262];
        if (!v150)
        {
          v150 = [(ADJasperColorPipeline *)v287->_pipeline fuseCurrentDepth:*(v358[0] + 24) previousDepth:v287->_previousWarpedDepthBuffer intoOutputDepth:*(v326[0] + 24) currentConfidence:v350[3] previousConfidence:v287->_previousWarpedConfidenceBuffer intoOutputConfidence:v322[3]];
        }

        [v286 timestamp];
        kdebug_trace();
        os_unfair_lock_unlock(&v287->_opticalFlowOutputBufferLock);
        if (v150)
        {
          if (ARShouldUseLogTypeError_onceToken_6 != -1)
          {
            [ARDepthTechnique _initLKT];
          }

          v151 = ARShouldUseLogTypeError_internalOSVersion_6;
          v152 = _ARLogTechnique_0();
          v153 = v152;
          if (v151 == 1)
          {
            if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
            {
              v154 = objc_opt_class();
              v155 = NSStringFromClass(v154);
              buf.columns[0].i32[0] = 138543874;
              *(buf.columns[0].i64 + 4) = v155;
              buf.columns[0].i16[6] = 2048;
              *(&buf.columns[0].i64[1] + 6) = v287;
              buf.columns[1].i16[3] = 2048;
              buf.columns[1].i64[1] = v150;
              _os_log_impl(&dword_1C241C000, v153, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to warp and fuse AppleDepth pipeline output: %li", &buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
          {
            v157 = objc_opt_class();
            v158 = NSStringFromClass(v157);
            buf.columns[0].i32[0] = 138543874;
            *(buf.columns[0].i64 + 4) = v158;
            buf.columns[0].i16[6] = 2048;
            *(&buf.columns[0].i64[1] + 6) = v287;
            buf.columns[1].i16[3] = 2048;
            buf.columns[1].i64[1] = v150;
            _os_log_impl(&dword_1C241C000, v153, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to warp and fuse AppleDepth pipeline output: %li", &buf, 0x20u);
          }

          v132 = v287;
        }

        else
        {
          CVPixelBufferRelease(v287->_previousDepthBuffer);
          v287->_previousDepthBuffer = CVPixelBufferRetain(*(v326[0] + 24));
          CVPixelBufferRelease(v287->_previousConfidenceBuffer);
          v156 = CVPixelBufferRetain(v322[3]);
          v132 = v287;
          v287->_previousConfidenceBuffer = v156;
        }

        v119 = &OBJC_IVAR___ARReplaySensorPublic__sequenceURL;
        goto LABEL_129;
      }

      v130 = v287->_previousWarpedDepthBuffer;
    }

    else
    {
      v130 = 0;
    }

    CVPixelBufferRelease(v130);
    v144 = ARCreateCVPixelBufferFromPool(&v287->_outputTemporalConsistentDepthPixelBufferPool, 1717855600, v287, @"temporally consistent depth buffer", v13, v14);
    v129 = v287;
    v287->_previousWarpedDepthBuffer = v144;
    goto LABEL_106;
  }

  v35 = 0;
LABEL_195:
  _Block_object_dispose(&v349, 8);
  v354(v353);
LABEL_196:
  _Block_object_dispose(&v357, 8);

  return v35;
}

void __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_42(uint64_t a1)
{
  CVPixelBufferRelease(*(*(*(a1 + 32) + 8) + 24));
  v2 = *(*(*(a1 + 40) + 8) + 24);

  CVPixelBufferRelease(v2);
}

- (id)_rotatedPixelBufferImageData:(__CVBuffer *)a3
{
  v5 = objc_opt_new();
  [v5 setPixelBuffer:a3];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v7 = &OBJC_IVAR___ARDepthTechnique__float32RotationTechnique;
  if (PixelFormatType == 1278226488)
  {
    v7 = &OBJC_IVAR___ARDepthTechnique__oneComponent8RotationTechnique;
  }

  v8 = [*(&self->super.super.super.super.isa + *v7) processData:v5];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARDepthTechnique;
  if ([(ARTechnique *)&v9 isEqual:v4])
  {
    v5 = v4;
    v6 = [(ARDepthTechnique *)self prioritization];
    v7 = v6 == [v5 prioritization] && self->_temporalConsistencyMethod == v5[88];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)sceneDepthTechniqueForPrioritization:(int64_t)a3 temporalSmoothing:(BOOL)a4
{
  v4 = a4;
  v6 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.appleDepth.useLegacyDepthTechnique"];
  v7 = off_1E817A6A8;
  if (!v6)
  {
    v7 = off_1E817AB80;
  }

  v8 = [objc_alloc(*v7) initWithPrioritization:a3 temporalSmoothing:v4];

  return v8;
}

@end