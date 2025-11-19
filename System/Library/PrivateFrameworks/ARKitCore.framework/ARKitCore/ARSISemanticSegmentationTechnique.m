@interface ARSISemanticSegmentationTechnique
+ (void)createUncertaintyMaskedSegmentationBuffer:(__CVBuffer *)a3 fromSegmentationBuffer:(__CVBuffer *)a4 uncertaintyBuffer:(__CVBuffer *)a5 maskValue:(unsigned __int8)a6;
- (BOOL)_scaleOutputBuffersIfNeededForTargetResolution:(CGSize)a3 segmentationPixelBuffer:(__CVBuffer *)a4 confidencePixelBuffer:(__CVBuffer *)a5 normalPixelBuffer:(__CVBuffer *)a6 uncertaintyPixelBuffer:(__CVBuffer *)a7;
- (BOOL)_scalePixelOutputBuffer:(__CVBuffer *)a3 toTargetResolution:(CGSize)a4 description:(id)a5;
- (id)_rotateImageData:(id)a3 withRotationTechnique:(id)a4 rotationNeeded:(int64_t)a5;
- (id)createResultDataFromOutputSegmentation:(__CVBuffer *)a3 outputConfidence:(__CVBuffer *)a4 outputNormalize:(__CVBuffer *)a5 outputUncertainty:(__CVBuffer *)a6 inputImageData:(id)a7 originalData:(id)a8 rotationNeeded:(int64_t)a9 regionOfInterest:(CGSize)a10;
- (id)initLegacyAlgorithmUsingSynchronizedUltrawideWhenAvailable:(BOOL)a3;
- (id)initUsingSynchronizedUltrawideWhenAvailable:(BOOL)a3;
- (id)resultDataClasses;
- (id)runNeuralNetworkWithImageData:(id)a3 originalImageData:(id)a4 regionOfInterest:(CGSize)a5 rotationOfResultTensor:(int64_t)a6;
- (int64_t)_mapUIDeviceOrientation:(int64_t)a3;
- (void)_prepareOnce:(BOOL)a3;
- (void)dealloc;
@end

@implementation ARSISemanticSegmentationTechnique

+ (void)createUncertaintyMaskedSegmentationBuffer:(__CVBuffer *)a3 fromSegmentationBuffer:(__CVBuffer *)a4 uncertaintyBuffer:(__CVBuffer *)a5 maskValue:(unsigned __int8)a6
{
  Height = CVPixelBufferGetHeight(a4);
  Width = CVPixelBufferGetWidth(a4);
  CVPixelBufferLockBaseAddress(a5, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
  BaseAddress = CVPixelBufferGetBaseAddress(a4);
  v14 = CVPixelBufferGetBaseAddress(a3);
  v15 = CVPixelBufferGetBytesPerRow(a5);
  v16 = CVPixelBufferGetBaseAddress(a5);
  if (Height)
  {
    v17 = 0;
    do
    {
      v18 = Width;
      v19 = BaseAddress;
      v20 = v14;
      for (i = v16; v18; --v18)
      {
        v22 = a6;
        if (*i > 0.0)
        {
          v22 = *v19;
        }

        *v20++ = v22;
        ++i;
        ++v19;
      }

      ++v17;
      v16 = (v16 + v15);
      v14 += BytesPerRow;
      BaseAddress += BytesPerRow;
    }

    while (v17 != Height);
  }

  CVPixelBufferUnlockBaseAddress(a3, 0);
  CVPixelBufferUnlockBaseAddress(a5, 1uLL);

  CVPixelBufferUnlockBaseAddress(a4, 1uLL);
}

- (id)initLegacyAlgorithmUsingSynchronizedUltrawideWhenAvailable:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.semanticSegmentationTechnique");
  v12.receiver = self;
  v12.super_class = ARSISemanticSegmentationTechnique;
  v6 = [(ARMLImageProcessingTechnique *)&v12 initWithDispatchQueue:v5 networkInputScaleBeforeRotation:1 delegateInference:256.0, 192.0];
  if (v6)
  {
    v7 = _ARLogTechnique_13();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543618;
      v14 = v9;
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Running scene segmentation technique legacy by SceneIntelligence", buf, 0x16u);
    }

    v6->_numClasses = 12;
    v6->_lastResultPushTimestamp = 0.0;
    if (v3)
    {
      v10 = ARDeviceSupportsUltraWideCamera();
    }

    else
    {
      v10 = 0;
    }

    v6->_shouldUseSynchronizedUltraWide = v10;
    v6->_isLegacyModel = 1;
  }

  return v6;
}

- (id)initUsingSynchronizedUltrawideWhenAvailable:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.semanticSegmentationTechnique");
  v12.receiver = self;
  v12.super_class = ARSISemanticSegmentationTechnique;
  v6 = [(ARMLImageProcessingTechnique *)&v12 initWithDispatchQueue:v5 networkInputScaleBeforeRotation:1 delegateInference:256.0, 192.0];
  if (v6)
  {
    v7 = _ARLogTechnique_13();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543618;
      v14 = v9;
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Running scene segmentation technique by SceneIntelligence", buf, 0x16u);
    }

    v6->_numClasses = 34;
    v6->_lastResultPushTimestamp = 0.0;
    if (v3)
    {
      v10 = ARDeviceSupportsUltraWideCamera();
    }

    else
    {
      v10 = 0;
    }

    v6->_shouldUseSynchronizedUltraWide = v10;
    v6->_isLegacyModel = 0;
  }

  return v6;
}

- (void)_prepareOnce:(BOOL)a3
{
  v39 = *MEMORY[0x1E69E9840];
  if (self->_isLegacyModel)
  {
    v4 = objc_alloc(MEMORY[0x1E69C9CE8]);
    [(ARMLImageProcessingTechnique *)self networkInputScaleBeforeRotation];
    v5 = [v4 initWithInputResolution:1 andComputeEngine:?];
    sceneUnderstandingAlgorithm = self->_sceneUnderstandingAlgorithm;
    self->_sceneUnderstandingAlgorithm = v5;

    if (self->_sceneUnderstandingAlgorithm)
    {
      return;
    }

    if (ARShouldUseLogTypeError_onceToken_17 != -1)
    {
      [ARSISemanticSegmentationTechnique _prepareOnce:];
    }

    v7 = ARShouldUseLogTypeError_internalOSVersion_17;
    v8 = _ARLogGeneral_7();
    v9 = v8;
    if (v7 == 1)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543618;
      v36 = v11;
      v37 = 2048;
      v38 = self;
      v12 = "%{public}@ <%p>: SISceneUnderstandingAlgorithm could not be initialized!";
      v13 = v9;
      v14 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v29 = objc_opt_class();
      v11 = NSStringFromClass(v29);
      *buf = 138543618;
      v36 = v11;
      v37 = 2048;
      v38 = self;
      v12 = "Error: %{public}@ <%p>: SISceneUnderstandingAlgorithm could not be initialized!";
      v13 = v9;
      v14 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v13, v14, v12, buf, 0x16u);

LABEL_17:
    if (ARSkipCrashOnCrash_onceToken_0 != -1)
    {
      [ARSISemanticSegmentationTechnique _prepareOnce:];
    }

    if ((ARSkipCrashOnCrash_skipCrashOnCrash_0 & 1) == 0)
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = @"SISceneUnderstandingAlgorithm could not be initialized!";
LABEL_28:
      v33 = [v30 stringWithFormat:v31];
      v34 = [v30 stringWithFormat:@"ARCrash: %@", v33];

      qword_1EBF41A28 = strdup([v34 UTF8String]);
      if ((ARInternalOSBuild() & 1) == 0)
      {
        abort();
      }

      ARAbortWithError(v34);

      return;
    }

    return;
  }

  [ARKitUserDefaults floatForKey:@"com.apple.arkit.semanticSegmentation.uncertaintyThreshold"];
  v16 = v15;
  v17 = objc_alloc(MEMORY[0x1E69C9CE0]);
  LODWORD(v18) = v16;
  v19 = [v17 initWithComputeEngine:1 andNetworkConfiguration:0 uncertaintyThreshold:v18];
  sceneSegmentationAlgorithm = self->_sceneSegmentationAlgorithm;
  self->_sceneSegmentationAlgorithm = v19;

  if (self->_sceneSegmentationAlgorithm)
  {
    return;
  }

  if (ARShouldUseLogTypeError_onceToken_17 != -1)
  {
    [ARSISemanticSegmentationTechnique _prepareOnce:];
  }

  v21 = ARShouldUseLogTypeError_internalOSVersion_17;
  v22 = _ARLogGeneral_7();
  v23 = v22;
  if (v21 == 1)
  {
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    *buf = 138543618;
    v36 = v25;
    v37 = 2048;
    v38 = self;
    v26 = "%{public}@ <%p>: SISceneSegmentationAlgorithm could not be initialized!";
    v27 = v23;
    v28 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v32 = objc_opt_class();
    v25 = NSStringFromClass(v32);
    *buf = 138543618;
    v36 = v25;
    v37 = 2048;
    v38 = self;
    v26 = "Error: %{public}@ <%p>: SISceneSegmentationAlgorithm could not be initialized!";
    v27 = v23;
    v28 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_1C241C000, v27, v28, v26, buf, 0x16u);

LABEL_24:
  if (ARSkipCrashOnCrash_onceToken_0 != -1)
  {
    [ARSISemanticSegmentationTechnique _prepareOnce:];
  }

  if ((ARSkipCrashOnCrash_skipCrashOnCrash_0 & 1) == 0)
  {
    v30 = MEMORY[0x1E696AEC0];
    v31 = @"SISceneSegmentationAlgorithm could not be initialized!";
    goto LABEL_28;
  }
}

- (void)dealloc
{
  outputSegmentationPixelBufferPool = self->_outputSegmentationPixelBufferPool;
  if (outputSegmentationPixelBufferPool)
  {
    CVPixelBufferPoolRelease(outputSegmentationPixelBufferPool);
    self->_outputSegmentationPixelBufferPool = 0;
  }

  outputConfidencePixelBufferPool = self->_outputConfidencePixelBufferPool;
  if (outputConfidencePixelBufferPool)
  {
    CVPixelBufferPoolRelease(outputConfidencePixelBufferPool);
    self->_outputConfidencePixelBufferPool = 0;
  }

  outputNormalPixelBufferPool = self->_outputNormalPixelBufferPool;
  if (outputNormalPixelBufferPool)
  {
    CVPixelBufferPoolRelease(outputNormalPixelBufferPool);
    self->_outputNormalPixelBufferPool = 0;
  }

  scaledSegmentationOutputPixelBufferPool = self->_scaledSegmentationOutputPixelBufferPool;
  if (scaledSegmentationOutputPixelBufferPool)
  {
    CVPixelBufferPoolRelease(scaledSegmentationOutputPixelBufferPool);
    self->_scaledSegmentationOutputPixelBufferPool = 0;
  }

  scaledConfidencePixelBufferPool = self->_scaledConfidencePixelBufferPool;
  if (scaledConfidencePixelBufferPool)
  {
    CVPixelBufferPoolRelease(scaledConfidencePixelBufferPool);
    self->_scaledConfidencePixelBufferPool = 0;
  }

  scaledNormalsPixelBufferPool = self->_scaledNormalsPixelBufferPool;
  if (scaledNormalsPixelBufferPool)
  {
    CVPixelBufferPoolRelease(scaledNormalsPixelBufferPool);
    self->_scaledNormalsPixelBufferPool = 0;
  }

  outputUncertaintyPixelBufferPool = self->_outputUncertaintyPixelBufferPool;
  if (outputUncertaintyPixelBufferPool)
  {
    CVPixelBufferPoolRelease(outputUncertaintyPixelBufferPool);
    self->_outputUncertaintyPixelBufferPool = 0;
  }

  v10.receiver = self;
  v10.super_class = ARSISemanticSegmentationTechnique;
  [(ARMLImageProcessingTechnique *)&v10 dealloc];
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)runNeuralNetworkWithImageData:(id)a3 originalImageData:(id)a4 regionOfInterest:(CGSize)a5 rotationOfResultTensor:(int64_t)a6
{
  height = a5.height;
  width = a5.width;
  v88 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  if (self->_sceneSegmentationAlgorithm)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_38;
  }

  if (self->_sceneUnderstandingAlgorithm)
  {
    v17 = v11 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    goto LABEL_10;
  }

LABEL_3:
  [v11 timestamp];
  [(ARSISemanticSegmentationTechnique *)self _startMLRunNetworkSignpostWithTimestamp:?];
  if (self->_isLegacyModel)
  {
    [MEMORY[0x1E69C9CE8] outputResolution];
    v14 = v13;
    v16 = v15;
  }

  else if (self->_shouldUseSynchronizedUltraWide)
  {
    v16 = height;
    v14 = width;
  }

  else
  {
    v19 = [v11 pixelBuffer];
    if (v19)
    {
      v20 = v19;
      v14 = CVPixelBufferGetWidth(v19);
      v16 = CVPixelBufferGetHeight(v20);
    }

    else
    {
      v14 = *MEMORY[0x1E695F060];
      v16 = *(MEMORY[0x1E695F060] + 8);
    }
  }

  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = ARCreateCVPixelBufferFromPool(&self->_outputSegmentationPixelBufferPool, 1278226488, self, @"segmentation output label", v14, v16);
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = ARCreateCVPixelBufferFromPool(&self->_outputConfidencePixelBufferPool, 1278226534, self, @"segmentation output confidence", v14, v16);
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = ARCreateCVPixelBufferFromPool(&self->_outputNormalPixelBufferPool, 1380410945, self, @"segmentation output normal", v14, v16);
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = ARCreateCVPixelBufferFromPool(&self->_outputUncertaintyPixelBufferPool, 1278226534, self, @"segmentation output uncertainty", v14, v16);
  v60[1] = 3221225472;
  v60[0] = MEMORY[0x1E69E9820];
  v61 = __125__ARSISemanticSegmentationTechnique_runNeuralNetworkWithImageData_originalImageData_regionOfInterest_rotationOfResultTensor___block_invoke;
  v62 = &unk_1E817C790;
  v63 = &v79;
  v64 = &v75;
  v65 = &v67;
  v66 = &v71;
  if (!v80[3] || !v76[3] || !v68[3] || self->_isLegacyModel && !v72[3])
  {
    if (ARShouldUseLogTypeError_onceToken_17 != -1)
    {
      [ARSISemanticSegmentationTechnique runNeuralNetworkWithImageData:originalImageData:regionOfInterest:rotationOfResultTensor:];
    }

    v32 = ARShouldUseLogTypeError_internalOSVersion_17;
    v33 = _ARLogTechnique_13();
    v34 = v33;
    if (v32 == 1)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138543618;
        v85 = v36;
        v86 = 2048;
        v87 = self;
        _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Pixelbuffer is nil. Returning empty result.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *buf = 138543618;
      v85 = v38;
      v86 = 2048;
      v87 = self;
      _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Pixelbuffer is nil. Returning empty result.", buf, 0x16u);
    }

    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_36;
  }

  v21 = [(ARMLImageProcessingTechnique *)self getDeviceOrientationFromImageData:v12];
  v22 = v21;
  if (self->_isLegacyModel)
  {
    sceneUnderstandingAlgorithm = self->_sceneUnderstandingAlgorithm;
    v24 = [v11 pixelBuffer];
    IOSurface = CVPixelBufferGetIOSurface(v80[3]);
    v26 = CVPixelBufferGetIOSurface(v76[3]);
    [(SISceneUnderstandingAlgorithm *)sceneUnderstandingAlgorithm runWithInput:v24 output:IOSurface confidenceOutput:v26 normalsOutput:CVPixelBufferGetIOSurface(v72[3]) orientation:[(ARSISemanticSegmentationTechnique *)self _mapUIDeviceOrientation:v22]];
    if (![(ARSISemanticSegmentationTechnique *)self _scaleOutputBuffersIfNeededForTargetResolution:v80 + 3 segmentationPixelBuffer:v76 + 3 confidencePixelBuffer:v72 + 3 normalPixelBuffer:0 uncertaintyPixelBuffer:width, height])
    {
      if (ARShouldUseLogTypeError_onceToken_17 != -1)
      {
        [ARSISemanticSegmentationTechnique runNeuralNetworkWithImageData:originalImageData:regionOfInterest:rotationOfResultTensor:];
      }

      v27 = ARShouldUseLogTypeError_internalOSVersion_17;
      v28 = _ARLogGeneral_7();
      v29 = v28;
      if (v27 == 1)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          *buf = 138543618;
          v85 = v31;
          v86 = 2048;
          v87 = self;
          _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Output buffer scaling failed. (legacy)", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        *buf = 138543618;
        v85 = v51;
        v86 = 2048;
        v87 = self;
        _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Output buffer scaling failed. (legacy)", buf, 0x16u);
      }

      if (ARSkipCrashOnCrash_onceToken_0 != -1)
      {
        [ARSISemanticSegmentationTechnique _prepareOnce:];
      }

      if ((ARSkipCrashOnCrash_skipCrashOnCrash_0 & 1) == 0)
      {
        v52 = MEMORY[0x1E696AEC0];
        v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output buffer scaling failed. (legacy)"];
        v34 = [v52 stringWithFormat:@"ARCrash: %@", v53];

        v54 = v34;
        qword_1EBF41A28 = strdup([v34 UTF8String]);
        if (ARInternalOSBuild())
        {
          goto LABEL_66;
        }

        goto LABEL_67;
      }

      goto LABEL_64;
    }
  }

  else
  {
    if ((v21 - 3) < 2)
    {
      v40 = 1;
    }

    else
    {
      v40 = 2 * ((v21 - 1) < 2);
    }

    sceneSegmentationAlgorithm = self->_sceneSegmentationAlgorithm;
    v42 = [v11 pixelBuffer];
    v43 = CVPixelBufferGetIOSurface(v80[3]);
    v44 = CVPixelBufferGetIOSurface(v76[3]);
    [(SISceneSegmentationAlgorithm *)sceneSegmentationAlgorithm runWithInput:v42 output:v43 confidenceOutput:v44 uncertaintyOutput:CVPixelBufferGetIOSurface(v68[3]) resampleOutput:1 networkConfiguration:v40];
    if (!self->_shouldUseSynchronizedUltraWide && ![(ARSISemanticSegmentationTechnique *)self _scaleOutputBuffersIfNeededForTargetResolution:v80 + 3 segmentationPixelBuffer:v76 + 3 confidencePixelBuffer:0 normalPixelBuffer:v68 + 3 uncertaintyPixelBuffer:width, height])
    {
      if (ARShouldUseLogTypeError_onceToken_17 != -1)
      {
        [ARSISemanticSegmentationTechnique runNeuralNetworkWithImageData:originalImageData:regionOfInterest:rotationOfResultTensor:];
      }

      v45 = ARShouldUseLogTypeError_internalOSVersion_17;
      v46 = _ARLogGeneral_7();
      v47 = v46;
      if (v45 == 1)
      {
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v48 = objc_opt_class();
          v49 = NSStringFromClass(v48);
          *buf = 138543618;
          v85 = v49;
          v86 = 2048;
          v87 = self;
          _os_log_impl(&dword_1C241C000, v47, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Output buffer scaling failed. (Non-legacy)", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        *buf = 138543618;
        v85 = v56;
        v86 = 2048;
        v87 = self;
        _os_log_impl(&dword_1C241C000, v47, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Output buffer scaling failed. (Non-legacy)", buf, 0x16u);
      }

      if (ARSkipCrashOnCrash_onceToken_0 != -1)
      {
        [ARSISemanticSegmentationTechnique _prepareOnce:];
      }

      if ((ARSkipCrashOnCrash_skipCrashOnCrash_0 & 1) == 0)
      {
        v57 = MEMORY[0x1E696AEC0];
        v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output buffer scaling failed. (Non-legacy)"];
        v34 = [v57 stringWithFormat:@"ARCrash: %@", v58];

        v59 = v34;
        qword_1EBF41A28 = strdup([v34 UTF8String]);
        if (ARInternalOSBuild())
        {
LABEL_66:
          ARAbortWithError(v34);
          v18 = 0;
          goto LABEL_36;
        }

LABEL_67:
        abort();
      }

LABEL_64:
      v18 = 0;
      goto LABEL_37;
    }
  }

  [v11 timestamp];
  [(ARSISemanticSegmentationTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
  v34 = [(ARSISemanticSegmentationTechnique *)self createResultDataFromOutputSegmentation:v80[3] outputConfidence:v76[3] outputNormalize:v72[3] outputUncertainty:v68[3] inputImageData:v12 originalData:v11 rotationNeeded:width regionOfInterest:height, a6];
  v83 = v34;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
LABEL_36:

LABEL_37:
  v61(v60);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);
LABEL_38:

  return v18;
}

void __125__ARSISemanticSegmentationTechnique_runNeuralNetworkWithImageData_originalImageData_regionOfInterest_rotationOfResultTensor___block_invoke(void *a1)
{
  CVPixelBufferRelease(*(*(a1[4] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[5] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[6] + 8) + 24));
  v2 = *(*(a1[7] + 8) + 24);

  CVPixelBufferRelease(v2);
}

- (BOOL)_scaleOutputBuffersIfNeededForTargetResolution:(CGSize)a3 segmentationPixelBuffer:(__CVBuffer *)a4 confidencePixelBuffer:(__CVBuffer *)a5 normalPixelBuffer:(__CVBuffer *)a6 uncertaintyPixelBuffer:(__CVBuffer *)a7
{
  height = a3.height;
  width = a3.width;
  v14 = *a4;
  if (*a4)
  {
    v15 = CVPixelBufferGetWidth(*a4);
    v16 = CVPixelBufferGetHeight(v14);
  }

  else
  {
    v15 = *MEMORY[0x1E695F060];
    v16 = *(MEMORY[0x1E695F060] + 8);
  }

  v17 = width == v15 && height == v16;
  if (v17 || (v18 = [(ARSISemanticSegmentationTechnique *)self _scalePixelOutputBuffer:a4 toTargetResolution:@"Scaled Segmentation Output" description:width, height]) && (v18 = [(ARSISemanticSegmentationTechnique *)self _scalePixelOutputBuffer:a5 toTargetResolution:@"Scaled Confidence Output" description:width, height]) && (!a6 || (v18 = [(ARSISemanticSegmentationTechnique *)self _scalePixelOutputBuffer:a6 toTargetResolution:@"Scaled Normals Output" description:width, height])) && (!a7 || (v18 = [(ARSISemanticSegmentationTechnique *)self _scalePixelOutputBuffer:a7 toTargetResolution:@"Scaled Uncertainty Output" description:width, height])))
  {
    LOBYTE(v18) = 1;
  }

  return v18;
}

- (BOOL)_scalePixelOutputBuffer:(__CVBuffer *)a3 toTargetResolution:(CGSize)a4 description:(id)a5
{
  height = a4.height;
  width = a4.width;
  v37 = *MEMORY[0x1E69E9840];
  v9 = a5;
  if (a3)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(*a3);
    v11 = ARCreateCVPixelBufferFromPool(&self->_scaledSegmentationOutputPixelBufferPool, PixelFormatType, self, v9, width, height);
    if (v11)
    {
      v12 = v11;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v26 = __92__ARSISemanticSegmentationTechnique__scalePixelOutputBuffer_toTargetResolution_description___block_invoke;
      v27 = &__block_descriptor_40_e5_v8__0l;
      v28 = v11;
      IOSurface = CVPixelBufferGetIOSurface(*a3);
      if (IOSurface)
      {
        BytesPerElement = IOSurfaceGetBytesPerElement(IOSurface);
        v15 = ARResizeBufferWithNearestNeighbors(*a3, v12, BytesPerElement);
        if (!v15)
        {
          CVPixelBufferRelease(*a3);
          *a3 = CVPixelBufferRetain(v12);
          v21 = 1;
LABEL_17:
          v26(v25);
          goto LABEL_18;
        }

        if (ARShouldUseLogTypeError_onceToken_17 != -1)
        {
          [ARSISemanticSegmentationTechnique runNeuralNetworkWithImageData:originalImageData:regionOfInterest:rotationOfResultTensor:];
        }

        v16 = ARShouldUseLogTypeError_internalOSVersion_17;
        v17 = _ARLogTechnique_13();
        v18 = v17;
        if (v16 == 1)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            *buf = 138544130;
            v30 = v20;
            v31 = 2048;
            v32 = self;
            v33 = 2112;
            v34 = v9;
            v35 = 1024;
            v36 = v15;
            _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample pixel buffer (%@): %i", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          *buf = 138544130;
          v30 = v23;
          v31 = 2048;
          v32 = self;
          v33 = 2112;
          v34 = v9;
          v35 = 1024;
          v36 = v15;
          _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample pixel buffer (%@): %i", buf, 0x26u);
        }
      }

      v21 = 0;
      goto LABEL_17;
    }
  }

  v21 = 0;
LABEL_18:

  return v21;
}

- (id)createResultDataFromOutputSegmentation:(__CVBuffer *)a3 outputConfidence:(__CVBuffer *)a4 outputNormalize:(__CVBuffer *)a5 outputUncertainty:(__CVBuffer *)a6 inputImageData:(id)a7 originalData:(id)a8 rotationNeeded:(int64_t)a9 regionOfInterest:(CGSize)a10
{
  v15 = a7;
  v16 = objc_opt_new();
  [v16 setPixelBuffer:a3];
  v17 = objc_opt_new();
  [v17 setPixelBuffer:a4];
  segmentationRotationTechnique = self->_segmentationRotationTechnique;
  if (!segmentationRotationTechnique || [(ARImageRotationTechnique *)segmentationRotationTechnique rotationAngle]!= a9 || [(ARImageRotationTechnique *)self->_segmentationRotationTechnique mirrorMode])
  {
    v19 = [[ARImageRotationTechnique alloc] initWithRotation:a9 mirror:0];
    v20 = self->_segmentationRotationTechnique;
    self->_segmentationRotationTechnique = v19;

    v21 = [[ARImageRotationTechnique alloc] initWithRotation:a9 mirror:0];
    confidenceUncertaintyRotationTechnique = self->_confidenceUncertaintyRotationTechnique;
    self->_confidenceUncertaintyRotationTechnique = v21;
  }

  v23 = [(ARSISemanticSegmentationTechnique *)self _rotateImageData:v16 withRotationTechnique:self->_segmentationRotationTechnique rotationNeeded:a9];
  [(ARSISemanticSegmentationTechnique *)self _rotateImageData:v17 withRotationTechnique:self->_confidenceUncertaintyRotationTechnique rotationNeeded:a9];
  v46 = v45 = v23;
  if (!a6 || self->_isLegacyModel)
  {
    v31 = [ARSegmentationData alloc];
    [v15 timestamp];
    v30 = -[ARSegmentationData initWithTimestamp:segmentationBuffer:confidenceBuffer:source:](v31, "initWithTimestamp:segmentationBuffer:confidenceBuffer:source:", [v23 pixelBuffer], objc_msgSend(v46, "pixelBuffer"), 2, v32);
  }

  else
  {
    v43 = a5;
    v24 = objc_opt_new();
    [v24 setPixelBuffer:a6];
    [(ARSISemanticSegmentationTechnique *)self _rotateImageData:v24 withRotationTechnique:self->_confidenceUncertaintyRotationTechnique rotationNeeded:a9];
    v44 = v17;
    v25 = v16;
    v27 = v26 = v15;
    v28 = [ARSegmentationData alloc];
    [v26 timestamp];
    v30 = -[ARSegmentationData initWithTimestamp:segmentationBuffer:confidenceBuffer:uncertaintyBuffer:source:](v28, "initWithTimestamp:segmentationBuffer:confidenceBuffer:uncertaintyBuffer:source:", [v23 pixelBuffer], objc_msgSend(v46, "pixelBuffer"), objc_msgSend(v27, "pixelBuffer"), 2, v29);

    v15 = v26;
    v16 = v25;
    v17 = v44;

    a5 = v43;
  }

  if (a5 && self->_isLegacyModel)
  {
    normalsRotationTechnique = self->_normalsRotationTechnique;
    if (!normalsRotationTechnique || [(ARImageRotationTechnique *)normalsRotationTechnique rotationAngle]!= a9 || [(ARImageRotationTechnique *)self->_normalsRotationTechnique mirrorMode])
    {
      v34 = [[ARImageRotationTechnique alloc] initWithRotation:a9 mirror:0];
      v35 = self->_normalsRotationTechnique;
      self->_normalsRotationTechnique = v34;
    }

    v36 = objc_opt_new();
    [v36 setPixelBuffer:a5];
    v37 = [(ARSISemanticSegmentationTechnique *)self _rotateImageData:v36 withRotationTechnique:self->_normalsRotationTechnique rotationNeeded:a9];
    -[ARSegmentationData setNormalsBuffer:](v30, "setNormalsBuffer:", [v37 pixelBuffer]);
  }

  v38 = [v15 originalImage];
  [(ARSegmentationData *)v30 setSourceImageData:v38];

  v39 = [(ARSegmentationData *)v30 sourceImageData];
  [v39 timestamp];
  v40 = [(ARSegmentationData *)v30 sourceImageData];
  v41 = [v40 cameraType];
  [v41 isEqualToString:*MEMORY[0x1E6986948]];
  CVPixelBufferGetWidth([(ARSegmentationData *)v30 segmentationBuffer]);
  CVPixelBufferGetHeight([(ARSegmentationData *)v30 segmentationBuffer]);
  kdebug_trace();

  return v30;
}

- (int64_t)_mapUIDeviceOrientation:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1C25C8B90[a3 - 1];
  }
}

- (id)_rotateImageData:(id)a3 withRotationTechnique:(id)a4 rotationNeeded:(int64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a4 processData:v8];

  if (a5 && v9 == v8)
  {
    if (ARShouldUseLogTypeError_onceToken_17 != -1)
    {
      [ARSISemanticSegmentationTechnique _prepareOnce:];
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_17;
    v11 = _ARLogTechnique_13();
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v22 = 138543618;
        v23 = v14;
        v24 = 2048;
        v25 = self;
        v15 = "%{public}@ <%p>: Could not rotate image data.";
        v16 = v12;
        v17 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_1C241C000, v16, v17, v15, &v22, 0x16u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v14 = NSStringFromClass(v18);
      v22 = 138543618;
      v23 = v14;
      v24 = 2048;
      v25 = self;
      v15 = "Error: %{public}@ <%p>: Could not rotate image data.";
      v16 = v12;
      v17 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    v19 = [(ARTechnique *)self delegate];
    v20 = ARErrorWithCodeAndUserInfo(151, 0);
    [v19 technique:self didFailWithError:v20];
  }

  return v9;
}

@end