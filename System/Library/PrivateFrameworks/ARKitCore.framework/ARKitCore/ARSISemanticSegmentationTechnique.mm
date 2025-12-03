@interface ARSISemanticSegmentationTechnique
+ (void)createUncertaintyMaskedSegmentationBuffer:(__CVBuffer *)buffer fromSegmentationBuffer:(__CVBuffer *)segmentationBuffer uncertaintyBuffer:(__CVBuffer *)uncertaintyBuffer maskValue:(unsigned __int8)value;
- (BOOL)_scaleOutputBuffersIfNeededForTargetResolution:(CGSize)resolution segmentationPixelBuffer:(__CVBuffer *)buffer confidencePixelBuffer:(__CVBuffer *)pixelBuffer normalPixelBuffer:(__CVBuffer *)normalPixelBuffer uncertaintyPixelBuffer:(__CVBuffer *)uncertaintyPixelBuffer;
- (BOOL)_scalePixelOutputBuffer:(__CVBuffer *)buffer toTargetResolution:(CGSize)resolution description:(id)description;
- (id)_rotateImageData:(id)data withRotationTechnique:(id)technique rotationNeeded:(int64_t)needed;
- (id)createResultDataFromOutputSegmentation:(__CVBuffer *)segmentation outputConfidence:(__CVBuffer *)confidence outputNormalize:(__CVBuffer *)normalize outputUncertainty:(__CVBuffer *)uncertainty inputImageData:(id)data originalData:(id)originalData rotationNeeded:(int64_t)needed regionOfInterest:(CGSize)self0;
- (id)initLegacyAlgorithmUsingSynchronizedUltrawideWhenAvailable:(BOOL)available;
- (id)initUsingSynchronizedUltrawideWhenAvailable:(BOOL)available;
- (id)resultDataClasses;
- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (int64_t)_mapUIDeviceOrientation:(int64_t)orientation;
- (void)_prepareOnce:(BOOL)once;
- (void)dealloc;
@end

@implementation ARSISemanticSegmentationTechnique

+ (void)createUncertaintyMaskedSegmentationBuffer:(__CVBuffer *)buffer fromSegmentationBuffer:(__CVBuffer *)segmentationBuffer uncertaintyBuffer:(__CVBuffer *)uncertaintyBuffer maskValue:(unsigned __int8)value
{
  Height = CVPixelBufferGetHeight(segmentationBuffer);
  Width = CVPixelBufferGetWidth(segmentationBuffer);
  CVPixelBufferLockBaseAddress(uncertaintyBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(segmentationBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(buffer, 0);
  BytesPerRow = CVPixelBufferGetBytesPerRow(segmentationBuffer);
  BaseAddress = CVPixelBufferGetBaseAddress(segmentationBuffer);
  v14 = CVPixelBufferGetBaseAddress(buffer);
  v15 = CVPixelBufferGetBytesPerRow(uncertaintyBuffer);
  v16 = CVPixelBufferGetBaseAddress(uncertaintyBuffer);
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
        valueCopy = value;
        if (*i > 0.0)
        {
          valueCopy = *v19;
        }

        *v20++ = valueCopy;
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

  CVPixelBufferUnlockBaseAddress(buffer, 0);
  CVPixelBufferUnlockBaseAddress(uncertaintyBuffer, 1uLL);

  CVPixelBufferUnlockBaseAddress(segmentationBuffer, 1uLL);
}

- (id)initLegacyAlgorithmUsingSynchronizedUltrawideWhenAvailable:(BOOL)available
{
  availableCopy = available;
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
    if (availableCopy)
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

- (id)initUsingSynchronizedUltrawideWhenAvailable:(BOOL)available
{
  availableCopy = available;
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
    if (availableCopy)
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

- (void)_prepareOnce:(BOOL)once
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
      selfCopy4 = self;
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
      selfCopy4 = self;
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
    selfCopy4 = self;
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
    selfCopy4 = self;
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

- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  height = interest.height;
  width = interest.width;
  v88 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  imageDataCopy = imageData;
  if (self->_sceneSegmentationAlgorithm)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_38;
  }

  if (self->_sceneUnderstandingAlgorithm)
  {
    v17 = dataCopy == 0;
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
  [dataCopy timestamp];
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
    pixelBuffer = [dataCopy pixelBuffer];
    if (pixelBuffer)
    {
      v20 = pixelBuffer;
      v14 = CVPixelBufferGetWidth(pixelBuffer);
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
    tensor = v33;
    if (v32 == 1)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138543618;
        v85 = v36;
        v86 = 2048;
        selfCopy6 = self;
        _os_log_impl(&dword_1C241C000, tensor, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Pixelbuffer is nil. Returning empty result.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *buf = 138543618;
      v85 = v38;
      v86 = 2048;
      selfCopy6 = self;
      _os_log_impl(&dword_1C241C000, tensor, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Pixelbuffer is nil. Returning empty result.", buf, 0x16u);
    }

    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_36;
  }

  v21 = [(ARMLImageProcessingTechnique *)self getDeviceOrientationFromImageData:imageDataCopy];
  v22 = v21;
  if (self->_isLegacyModel)
  {
    sceneUnderstandingAlgorithm = self->_sceneUnderstandingAlgorithm;
    pixelBuffer2 = [dataCopy pixelBuffer];
    IOSurface = CVPixelBufferGetIOSurface(v80[3]);
    v26 = CVPixelBufferGetIOSurface(v76[3]);
    [(SISceneUnderstandingAlgorithm *)sceneUnderstandingAlgorithm runWithInput:pixelBuffer2 output:IOSurface confidenceOutput:v26 normalsOutput:CVPixelBufferGetIOSurface(v72[3]) orientation:[(ARSISemanticSegmentationTechnique *)self _mapUIDeviceOrientation:v22]];
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
          selfCopy6 = self;
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
        selfCopy6 = self;
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
        tensor = [v52 stringWithFormat:@"ARCrash: %@", v53];

        v54 = tensor;
        qword_1EBF41A28 = strdup([tensor UTF8String]);
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
    pixelBuffer3 = [dataCopy pixelBuffer];
    v43 = CVPixelBufferGetIOSurface(v80[3]);
    v44 = CVPixelBufferGetIOSurface(v76[3]);
    [(SISceneSegmentationAlgorithm *)sceneSegmentationAlgorithm runWithInput:pixelBuffer3 output:v43 confidenceOutput:v44 uncertaintyOutput:CVPixelBufferGetIOSurface(v68[3]) resampleOutput:1 networkConfiguration:v40];
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
          selfCopy6 = self;
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
        selfCopy6 = self;
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
        tensor = [v57 stringWithFormat:@"ARCrash: %@", v58];

        v59 = tensor;
        qword_1EBF41A28 = strdup([tensor UTF8String]);
        if (ARInternalOSBuild())
        {
LABEL_66:
          ARAbortWithError(tensor);
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

  [dataCopy timestamp];
  [(ARSISemanticSegmentationTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
  tensor = [(ARSISemanticSegmentationTechnique *)self createResultDataFromOutputSegmentation:v80[3] outputConfidence:v76[3] outputNormalize:v72[3] outputUncertainty:v68[3] inputImageData:imageDataCopy originalData:dataCopy rotationNeeded:width regionOfInterest:height, tensor];
  v83 = tensor;
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

- (BOOL)_scaleOutputBuffersIfNeededForTargetResolution:(CGSize)resolution segmentationPixelBuffer:(__CVBuffer *)buffer confidencePixelBuffer:(__CVBuffer *)pixelBuffer normalPixelBuffer:(__CVBuffer *)normalPixelBuffer uncertaintyPixelBuffer:(__CVBuffer *)uncertaintyPixelBuffer
{
  height = resolution.height;
  width = resolution.width;
  v14 = *buffer;
  if (*buffer)
  {
    v15 = CVPixelBufferGetWidth(*buffer);
    v16 = CVPixelBufferGetHeight(v14);
  }

  else
  {
    v15 = *MEMORY[0x1E695F060];
    v16 = *(MEMORY[0x1E695F060] + 8);
  }

  v17 = width == v15 && height == v16;
  if (v17 || (v18 = [(ARSISemanticSegmentationTechnique *)self _scalePixelOutputBuffer:buffer toTargetResolution:@"Scaled Segmentation Output" description:width, height]) && (v18 = [(ARSISemanticSegmentationTechnique *)self _scalePixelOutputBuffer:pixelBuffer toTargetResolution:@"Scaled Confidence Output" description:width, height]) && (!normalPixelBuffer || (v18 = [(ARSISemanticSegmentationTechnique *)self _scalePixelOutputBuffer:normalPixelBuffer toTargetResolution:@"Scaled Normals Output" description:width, height])) && (!uncertaintyPixelBuffer || (v18 = [(ARSISemanticSegmentationTechnique *)self _scalePixelOutputBuffer:uncertaintyPixelBuffer toTargetResolution:@"Scaled Uncertainty Output" description:width, height])))
  {
    LOBYTE(v18) = 1;
  }

  return v18;
}

- (BOOL)_scalePixelOutputBuffer:(__CVBuffer *)buffer toTargetResolution:(CGSize)resolution description:(id)description
{
  height = resolution.height;
  width = resolution.width;
  v37 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (buffer)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(*buffer);
    v11 = ARCreateCVPixelBufferFromPool(&self->_scaledSegmentationOutputPixelBufferPool, PixelFormatType, self, descriptionCopy, width, height);
    if (v11)
    {
      v12 = v11;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v26 = __92__ARSISemanticSegmentationTechnique__scalePixelOutputBuffer_toTargetResolution_description___block_invoke;
      v27 = &__block_descriptor_40_e5_v8__0l;
      v28 = v11;
      IOSurface = CVPixelBufferGetIOSurface(*buffer);
      if (IOSurface)
      {
        BytesPerElement = IOSurfaceGetBytesPerElement(IOSurface);
        v15 = ARResizeBufferWithNearestNeighbors(*buffer, v12, BytesPerElement);
        if (!v15)
        {
          CVPixelBufferRelease(*buffer);
          *buffer = CVPixelBufferRetain(v12);
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
            selfCopy2 = self;
            v33 = 2112;
            v34 = descriptionCopy;
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
          selfCopy2 = self;
          v33 = 2112;
          v34 = descriptionCopy;
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

- (id)createResultDataFromOutputSegmentation:(__CVBuffer *)segmentation outputConfidence:(__CVBuffer *)confidence outputNormalize:(__CVBuffer *)normalize outputUncertainty:(__CVBuffer *)uncertainty inputImageData:(id)data originalData:(id)originalData rotationNeeded:(int64_t)needed regionOfInterest:(CGSize)self0
{
  dataCopy = data;
  v16 = objc_opt_new();
  [v16 setPixelBuffer:segmentation];
  v17 = objc_opt_new();
  [v17 setPixelBuffer:confidence];
  segmentationRotationTechnique = self->_segmentationRotationTechnique;
  if (!segmentationRotationTechnique || [(ARImageRotationTechnique *)segmentationRotationTechnique rotationAngle]!= needed || [(ARImageRotationTechnique *)self->_segmentationRotationTechnique mirrorMode])
  {
    v19 = [[ARImageRotationTechnique alloc] initWithRotation:needed mirror:0];
    v20 = self->_segmentationRotationTechnique;
    self->_segmentationRotationTechnique = v19;

    v21 = [[ARImageRotationTechnique alloc] initWithRotation:needed mirror:0];
    confidenceUncertaintyRotationTechnique = self->_confidenceUncertaintyRotationTechnique;
    self->_confidenceUncertaintyRotationTechnique = v21;
  }

  v23 = [(ARSISemanticSegmentationTechnique *)self _rotateImageData:v16 withRotationTechnique:self->_segmentationRotationTechnique rotationNeeded:needed];
  [(ARSISemanticSegmentationTechnique *)self _rotateImageData:v17 withRotationTechnique:self->_confidenceUncertaintyRotationTechnique rotationNeeded:needed];
  v46 = v45 = v23;
  if (!uncertainty || self->_isLegacyModel)
  {
    v31 = [ARSegmentationData alloc];
    [dataCopy timestamp];
    v30 = -[ARSegmentationData initWithTimestamp:segmentationBuffer:confidenceBuffer:source:](v31, "initWithTimestamp:segmentationBuffer:confidenceBuffer:source:", [v23 pixelBuffer], objc_msgSend(v46, "pixelBuffer"), 2, v32);
  }

  else
  {
    normalizeCopy = normalize;
    v24 = objc_opt_new();
    [v24 setPixelBuffer:uncertainty];
    [(ARSISemanticSegmentationTechnique *)self _rotateImageData:v24 withRotationTechnique:self->_confidenceUncertaintyRotationTechnique rotationNeeded:needed];
    v44 = v17;
    v25 = v16;
    v27 = v26 = dataCopy;
    v28 = [ARSegmentationData alloc];
    [v26 timestamp];
    v30 = -[ARSegmentationData initWithTimestamp:segmentationBuffer:confidenceBuffer:uncertaintyBuffer:source:](v28, "initWithTimestamp:segmentationBuffer:confidenceBuffer:uncertaintyBuffer:source:", [v23 pixelBuffer], objc_msgSend(v46, "pixelBuffer"), objc_msgSend(v27, "pixelBuffer"), 2, v29);

    dataCopy = v26;
    v16 = v25;
    v17 = v44;

    normalize = normalizeCopy;
  }

  if (normalize && self->_isLegacyModel)
  {
    normalsRotationTechnique = self->_normalsRotationTechnique;
    if (!normalsRotationTechnique || [(ARImageRotationTechnique *)normalsRotationTechnique rotationAngle]!= needed || [(ARImageRotationTechnique *)self->_normalsRotationTechnique mirrorMode])
    {
      v34 = [[ARImageRotationTechnique alloc] initWithRotation:needed mirror:0];
      v35 = self->_normalsRotationTechnique;
      self->_normalsRotationTechnique = v34;
    }

    v36 = objc_opt_new();
    [v36 setPixelBuffer:normalize];
    v37 = [(ARSISemanticSegmentationTechnique *)self _rotateImageData:v36 withRotationTechnique:self->_normalsRotationTechnique rotationNeeded:needed];
    -[ARSegmentationData setNormalsBuffer:](v30, "setNormalsBuffer:", [v37 pixelBuffer]);
  }

  originalImage = [dataCopy originalImage];
  [(ARSegmentationData *)v30 setSourceImageData:originalImage];

  sourceImageData = [(ARSegmentationData *)v30 sourceImageData];
  [sourceImageData timestamp];
  sourceImageData2 = [(ARSegmentationData *)v30 sourceImageData];
  cameraType = [sourceImageData2 cameraType];
  [cameraType isEqualToString:*MEMORY[0x1E6986948]];
  CVPixelBufferGetWidth([(ARSegmentationData *)v30 segmentationBuffer]);
  CVPixelBufferGetHeight([(ARSegmentationData *)v30 segmentationBuffer]);
  kdebug_trace();

  return v30;
}

- (int64_t)_mapUIDeviceOrientation:(int64_t)orientation
{
  if ((orientation - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1C25C8B90[orientation - 1];
  }
}

- (id)_rotateImageData:(id)data withRotationTechnique:(id)technique rotationNeeded:(int64_t)needed
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = [technique processData:dataCopy];

  if (needed && v9 == dataCopy)
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
        selfCopy2 = self;
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
      selfCopy2 = self;
      v15 = "Error: %{public}@ <%p>: Could not rotate image data.";
      v16 = v12;
      v17 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    delegate = [(ARTechnique *)self delegate];
    v20 = ARErrorWithCodeAndUserInfo(151, 0);
    [delegate technique:self didFailWithError:v20];
  }

  return v9;
}

@end