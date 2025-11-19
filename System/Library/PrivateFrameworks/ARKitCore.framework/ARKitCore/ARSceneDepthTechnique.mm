@interface ARSceneDepthTechnique
+ (BOOL)isSupported;
- (ADJasperColorPipelineParameters)pipelineParameters;
- (ARSceneDepthTechnique)initWithPrioritization:(int64_t)a3 temporalSmoothing:(BOOL)a4;
- (BOOL)isBusy;
- (BOOL)isEqual:(id)a3;
- (id)_generateDepthForDownscaledImageData:(id)a3 error:(id *)a4;
- (id)_getCameraCalibration:(id)a3 rotation:(int64_t)a4 inputDimensions:(CGSize)a5;
- (id)_rotatedPixelBufferImageData:(__CVBuffer *)a3 rotationAngle:(int64_t)a4;
- (id)_safeProcessData:(id)a3;
- (id)processData:(id)a3;
- (id)resultDataClasses;
- (void)_prepareOnDimensionsChange:(CGSize)a3 outputRotation:(int64_t)a4 error:(id *)a5;
- (void)_prepareOnce;
- (void)dealloc;
- (void)prepare:(BOOL)a3;
- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)a3;
- (void)waitForProcessingCompleteInDeterministicMode;
@end

@implementation ARSceneDepthTechnique

+ (BOOL)isSupported
{
  v2 = ARDeviceSupportsJasper();
  if (v2)
  {

    LOBYTE(v2) = ARAppleNeuralEngine();
  }

  return v2;
}

- (void)prepare:(BOOL)a3
{
  os_unfair_lock_lock(&self->_prepLock);
  self->_deterministic = a3;
  startedPrepare = self->_startedPrepare;
  self->_startedPrepare = 1;
  os_unfair_lock_unlock(&self->_prepLock);
  if (!startedPrepare)
  {
    [(ARSceneDepthTechnique *)self _prepareOnce];
    self->_prepared = 1;
  }
}

- (void)_prepareOnce
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = +[ARBKSAccelerometer sharedWeakAccelerometerHandle];
  v4 = [v3 currentOrientation];
  if ((v4 - 3) >= 2)
  {
    v5 = 192.0;
  }

  else
  {
    v5 = 256.0;
  }

  if ((v4 - 1) > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1C25C8B68[v4 - 1];
  }

  v18 = 0;
  [(ARSceneDepthTechnique *)self _prepareOnDimensionsChange:v6 outputRotation:&v18 error:v5];
  v7 = v18;
  if (v7)
  {
    if (ARShouldUseLogTypeError_onceToken_16 != -1)
    {
      [ARSceneDepthTechnique _prepareOnce];
    }

    v8 = ARShouldUseLogTypeError_internalOSVersion_16;
    v9 = _ARLogTechnique_12();
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543874;
        v20 = v12;
        v21 = 2048;
        v22 = self;
        v23 = 2112;
        v24 = v7;
        v13 = "%{public}@ <%p>: Failed preparing scene depth: %@";
        v14 = v10;
        v15 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_1C241C000, v14, v15, v13, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v12 = NSStringFromClass(v16);
      *buf = 138543874;
      v20 = v12;
      v21 = 2048;
      v22 = self;
      v23 = 2112;
      v24 = v7;
      v13 = "Error: %{public}@ <%p>: Failed preparing scene depth: %@";
      v14 = v10;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

    v17 = [(ARTechnique *)self delegate];
    [v17 technique:self didFailWithError:v7];
  }
}

- (BOOL)isBusy
{
  v3 = dispatch_semaphore_wait(self->_busySemaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_busySemaphore);
  }

  return v3 != 0;
}

- (ARSceneDepthTechnique)initWithPrioritization:(int64_t)a3 temporalSmoothing:(BOOL)a4
{
  v4 = a4;
  v29.receiver = self;
  v29.super_class = ARSceneDepthTechnique;
  v6 = [(ARImageBasedTechnique *)&v29 init];
  v7 = v6;
  if (v6)
  {
    v6->_prepared = 0;
    v6->_startedPrepare = 0;
    v6->_deterministic = 0;
    v6->_prepLock._os_unfair_lock_opaque = 0;
    v8 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.scenedepthtechnique");
    depthProcessingQueue = v7->_depthProcessingQueue;
    v7->_depthProcessingQueue = v8;

    v7->_prioritization = a3;
    v7->_inputDimensions = *MEMORY[0x1E695F060];
    v10 = dispatch_semaphore_create(1);
    busySemaphore = v7->_busySemaphore;
    v7->_busySemaphore = v10;

    if (v4)
    {
      v12 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.appleDepth.temporalSmoothingMethod"];
    }

    else
    {
      v12 = 0;
    }

    v7->_temporalConsistencyMethod = v12;
    v13 = [objc_alloc(MEMORY[0x1E698C110]) initWithInputPrioritization:a3];
    executor = v7->_executor;
    v7->_executor = v13;

    temporalConsistencyMethod = v7->_temporalConsistencyMethod;
    v16 = [(ADJasperColorExecutor *)v7->_executor executorParameters];
    [v16 setTemporalConsistencyMethod:temporalConsistencyMethod];

    v17 = [(ADJasperColorExecutor *)v7->_executor executorParameters];
    [v17 setBufferCopyPolicy:1];

    v18 = [(ADJasperColorExecutor *)v7->_executor executorParameters];
    [v18 setIgnoreDistortionInDepthReprojection:1];

    v19 = [(ADJasperColorExecutor *)v7->_executor pipeline];
    v20 = [v19 inferenceDescriptor];
    v21 = [v20 depthOutput];
    v22 = [v21 imageDescriptor];

    [v22 sizeForLayout:1];
    v7->_outputDimensionsInOriginalImageRotation.width = v23;
    v7->_outputDimensionsInOriginalImageRotation.height = v24;
    v7->_outputDepthPixelBufferPool = 0;
    v7->_outputConfidencePixelBufferPool = 0;
    v7->_outputSingleFrameDepthPixelBufferPool = 0;
    v7->_outputSingleFrameConfidencePixelBufferPool = 0;
    v7->_outputConfidenceMapPixelBufferPool = 0;
    v7->_outputNormalsInOriginalImageRotationPixelBufferPool = 0;
    v7->_outputScaledDepthPixelBufferPool = 0;
    v7->_outputScaledConfidencePixelBufferPool = 0;
    v7->_outputScaledSingleFrameDepthPixelBufferPool = 0;
    v7->_outputScaledSingleFrameConfidencePixelBufferPool = 0;
    v7->_outputScaledConfidenceMapPixelBufferPool = 0;
    v25 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.appleDepth.computeNormals"];
    v7->_computeNormals = v25;
    if (v25)
    {
      v26 = objc_opt_new();
      normalsHelperBuffer = v7->_normalsHelperBuffer;
      v7->_normalsHelperBuffer = v26;
    }
  }

  return v7;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_outputDepthPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputConfidencePixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputSingleFrameDepthPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputSingleFrameConfidencePixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputConfidenceMapPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputNormalsInOriginalImageRotationPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputScaledDepthPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputScaledConfidencePixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputScaledSingleFrameDepthPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputScaledSingleFrameConfidencePixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputScaledConfidenceMapPixelBufferPool);
  v3.receiver = self;
  v3.super_class = ARSceneDepthTechnique;
  [(ARSceneDepthTechnique *)&v3 dealloc];
}

- (ADJasperColorPipelineParameters)pipelineParameters
{
  v2 = [(ADJasperColorExecutor *)self->_executor pipeline];
  v3 = [v2 pipelineParameters];

  return v3;
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_prioritization == v4[13] && self->_temporalConsistencyMethod == v4[12];

  return v5;
}

- (id)_rotatedPixelBufferImageData:(__CVBuffer *)a3 rotationAngle:(int64_t)a4
{
  v7 = objc_opt_new();
  [v7 setPixelBuffer:a3];
  if (CVPixelBufferGetPixelFormatType(a3) == 1278226488)
  {
    v8 = 256;
  }

  else
  {
    v8 = 248;
  }

  v9 = (&self->super.super.super.isa + v8);
  if (!*v9 || [*v9 rotationAngle] != a4 || objc_msgSend(*v9, "mirrorMode"))
  {
    v10 = [[ARImageRotationTechnique alloc] initWithRotation:a4 mirror:0];
    v11 = *v9;
    *v9 = v10;
  }

  v12 = [*v9 processData:v7];

  return v12;
}

- (id)_getCameraCalibration:(id)a3 rotation:(int64_t)a4 inputDimensions:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v9 = [v8 calibrationData];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E698C180]);
    v11 = [v8 calibrationData];
    v12 = [v10 ar_initWithImageData:v8 calibrationData:v11];
  }

  else
  {
    v12 = [v8 adCameraCalibration];

    if (!v12)
    {
      goto LABEL_17;
    }

    v10 = [v8 adCameraCalibration];
    v12 = [v10 mutableCopy];
  }

  if (a4)
  {
    v13 = 3;
    if (a4 == 90)
    {
      v13 = 1;
    }

    if (a4 == 180)
    {
      v14 = 2;
    }

    else
    {
      v14 = v13;
    }

    [v12 adjustForImageRotation:v14];
  }

  if (width != *MEMORY[0x1E695F060] || height != *(MEMORY[0x1E695F060] + 8))
  {
    [v12 scaleAllowStretch:{width, height}];
  }

LABEL_17:

  return v12;
}

- (id)_generateDepthForDownscaledImageData:(id)a3 error:(id *)a4
{
  v174 = *MEMORY[0x1E69E9840];
  v109 = a3;
  v162 = 0;
  v163 = &v162;
  v164 = 0x2020000000;
  p_inputDimensions = &self->_inputDimensions;
  v165 = ARCreateCVPixelBufferFromPool(&self->_outputDepthPixelBufferPool, 1717855600, self, @"Depth Output", self->_inputDimensions.width, self->_inputDimensions.height);
  v158 = 0;
  v159 = &v158;
  v160 = 0x2020000000;
  v161 = ARCreateCVPixelBufferFromPool(&self->_outputConfidencePixelBufferPool, 1717855600, self, @"Confidence Output", self->_inputDimensions.width, self->_inputDimensions.height);
  v154 = 0;
  v155 = &v154;
  v156 = 0x2020000000;
  v157 = ARCreateCVPixelBufferFromPool(&self->_outputSingleFrameDepthPixelBufferPool, 1717855600, self, @"single frame Depth Output", self->_inputDimensions.width, self->_inputDimensions.height);
  v150 = 0;
  v151 = &v150;
  v152 = 0x2020000000;
  v153 = ARCreateCVPixelBufferFromPool(&self->_outputSingleFrameConfidencePixelBufferPool, 1717855600, self, @"single frame Confidence Output", self->_inputDimensions.width, self->_inputDimensions.height);
  v146 = 0;
  v147 = &v146;
  v148 = 0x2020000000;
  v149 = ARCreateCVPixelBufferFromPool(&self->_outputConfidenceMapPixelBufferPool, 1278226488, self, @"Confidence Map Output", self->_inputDimensions.width, self->_inputDimensions.height);
  v138[0] = MEMORY[0x1E69E9820];
  v138[1] = 3221225472;
  v139 = __68__ARSceneDepthTechnique__generateDepthForDownscaledImageData_error___block_invoke;
  v140 = &unk_1E817C768;
  v141 = &v162;
  v142 = &v158;
  v143 = &v154;
  v144 = &v150;
  v145 = &v146;
  if (!v163[3] || !v159[3] || !v155[3] || !v151[3] || !v147[3])
  {
    _createAllocationError();
    *a4 = v46 = 0;
    goto LABEL_12;
  }

  v6 = MEMORY[0x1E698C198];
  v7 = [v109 originalImageData];
  [v7 visionTransform];
  [v6 transformMetersToMillimiters:?];
  v134 = v8;
  v135 = v9;
  v136 = v10;
  v137 = v11;

  v12 = [v109 rotationOfResultTensor] * 3.14159265 / -180.0;
  v13 = __sincosf_stret(v12 * 0.5);
  v14 = 0;
  _Q2 = vmulq_n_f32(xmmword_1C25C86A0, v13.__sinval);
  _S3 = _Q2.i32[1];
  _S5 = _Q2.i32[2];
  __asm { FMLS            S0, S5, V2.S[2] }

  v21 = vmuls_lane_f32(v13.__cosval, _Q2, 2);
  v22 = vmuls_lane_f32(v13.__cosval, *_Q2.f32, 1);
  _Q0.i32[3] = 0;
  _Q0.f32[0] = _Q0.f32[0] + (v13.__cosval * v13.__cosval);
  _Q0.f32[1] = (v21 + (_Q2.f32[0] * _Q2.f32[1])) + (v21 + (_Q2.f32[0] * _Q2.f32[1]));
  *&v24 = -(v21 - (_Q2.f32[0] * _Q2.f32[1])) - (v21 - (_Q2.f32[0] * _Q2.f32[1]));
  __asm { FMLA            S4, S3, V2.S[1] }

  *&v26 = (_S4 + (v13.__cosval * v13.__cosval)) - (_Q2.f32[0] * _Q2.f32[0]);
  __asm { FMLA            S4, S5, V2.S[1] }

  *&v28 = _S4 + _S4;
  v29.i64[0] = __PAIR64__(v26, v24);
  v29.i64[1] = v28;
  __asm
  {
    FMLA            S7, S5, V2.S[1]
    FMLA            S16, S5, V2.S[2]
  }

  v33.f32[0] = (v22 + (_Q2.f32[2] * _Q2.f32[0])) + (v22 + (_Q2.f32[2] * _Q2.f32[0]));
  v33.f32[1] = _S7 + _S7;
  __asm { FMLS            S5, S3, V2.S[1] }

  v33.i64[1] = _S5;
  v166 = v134;
  v167 = v135;
  v168 = v136;
  v169 = v137;
  memset(buf, 0, sizeof(buf));
  v172 = 0u;
  v173 = 0u;
  do
  {
    _Q0.f32[2] = -(v22 - (_Q2.f32[0] * _Q2.f32[2])) - (v22 - (_Q2.f32[0] * _Q2.f32[2]));
    *&buf[v14] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(_Q0, COERCE_FLOAT(*(&v166 + v14))), v29, *(&v166 + v14), 1), v33, *(&v166 + v14), 2), xmmword_1C25C8560, *(&v166 + v14), 3);
    v14 += 16;
  }

  while (v14 != 64);
  v134 = *buf;
  v135 = *&buf[16];
  v136 = v172;
  v137 = v173;
  v34 = [v109 originalImageData];
  v107 = -[ARSceneDepthTechnique _getCameraCalibration:rotation:inputDimensions:](self, "_getCameraCalibration:rotation:inputDimensions:", v34, [v109 rotationOfResultTensor], p_inputDimensions->width, self->_inputDimensions.height);

  v35 = [v109 originalImageData];
  v106 = [(ARSceneDepthTechnique *)self _getCameraCalibration:v35 rotation:0 inputDimensions:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  v36 = [v109 originalImageData];
  v37 = [v36 pointCloud];
  v38 = [v37 depthPointCloud];

  if (!v38)
  {
    if (ARShouldUseLogTypeError_onceToken_16 != -1)
    {
      [ARSceneDepthTechnique _prepareOnce];
    }

    v48 = ARShouldUseLogTypeError_internalOSVersion_16;
    v49 = _ARLogTechnique_12();
    v50 = v49;
    if (v48 == 1)
    {
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        *buf = 138543618;
        *&buf[4] = v52;
        *&buf[12] = 2048;
        *&buf[14] = self;
        _os_log_impl(&dword_1C241C000, v50, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed generating depth: missing point cloud", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      *buf = 138543618;
      *&buf[4] = v58;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v50, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed generating depth: missing point cloud", buf, 0x16u);
    }

    goto LABEL_26;
  }

  executor = self->_executor;
  v40 = [v109 downScalingResults];
  v41 = [v40 objectAtIndexedSubscript:0];
  v42 = [v41 pixelBuffer];
  v170 = v38;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v170 count:1];
  v44 = [(ADJasperColorExecutor *)executor executeWithColor:v42 colorCameraCalibration:v107 colorWorldToPlatformTransform:v43 pointClouds:v106 lidarCameraCalibration:&v134 pointCloudWorldToPlatformTransforms:v163 + 3 outDepthMap:*&v134 outConfMap:*&v135 outNonTemporalyConsistentDepthMap:*&v136 outNonTemporalyConsistentConfMap:*&v137 outConfidenceLevels:v159 + 3, v155[3], v151[3], 0];

  if (!v44)
  {
    v53 = [(ADJasperColorExecutor *)self->_executor getIntermediateWithName:@"Unprocessed Conf"];
    v54 = [(ADJasperColorExecutor *)self->_executor pipeline];
    v55 = [v54 postProcessConfidence:v53 confidenceOutput:v147[3] confidenceUnits:1];

    if (v55)
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed compute confidence levels with error: %li", v55];
      *a4 = _createADError(v56);

      goto LABEL_26;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000uLL;
    *&v166 = 0;
    *(&v166 + 1) = &v166;
    v167 = 0x2020000000uLL;
    v130 = 0;
    v131 = &v130;
    v132 = 0x2020000000;
    v133 = 0;
    v126 = 0;
    v127 = &v126;
    v128 = 0x2020000000;
    v129 = 0;
    v122 = 0;
    v123 = &v122;
    v124 = 0x2020000000;
    v125 = 0;
    v114[0] = MEMORY[0x1E69E9820];
    v114[1] = 3221225472;
    v115 = __68__ARSceneDepthTechnique__generateDepthForDownscaledImageData_error___block_invoke_38;
    v116 = &unk_1E817C768;
    v117 = buf;
    v118 = &v166;
    v119 = &v130;
    v120 = &v126;
    v121 = &v122;
    v59 = [v109 downScalingResults];
    v60 = [v59 objectAtIndexedSubscript:0];
    [v60 regionOfInterest];
    v62 = v61;
    v64 = v63;

    _ZF = p_inputDimensions->width == v62 && self->_inputDimensions.height == v64;
    v66 = _ZF;
    if (!_ZF)
    {
      v74 = ARCreateCVPixelBufferFromPool(&self->_outputScaledDepthPixelBufferPool, 1717855600, self, @"Scaled Depth Output", v62, v64);
      *(*&buf[8] + 24) = v74;
      v75 = ARCreateCVPixelBufferFromPool(&self->_outputScaledConfidencePixelBufferPool, 1717855600, self, @"Scaled Confidence Output", v62, v64);
      *(*(&v166 + 1) + 24) = v75;
      v76 = ARCreateCVPixelBufferFromPool(&self->_outputScaledSingleFrameDepthPixelBufferPool, 1717855600, self, @"Scaled single frame Depth Output", v62, v64);
      v131[3] = v76;
      v77 = ARCreateCVPixelBufferFromPool(&self->_outputScaledSingleFrameConfidencePixelBufferPool, 1717855600, self, @"Scaled single frame Confidence Output", v62, v64);
      v127[3] = v77;
      v78 = ARCreateCVPixelBufferFromPool(&self->_outputScaledConfidenceMapPixelBufferPool, 1278226488, self, @"Scaled Confidence Map Output", v62, v64);
      v123[3] = v78;
      v79 = *(*&buf[8] + 24);
      if (!v79 || !*(*(&v166 + 1) + 24) || !v131[3] || !v127[3] || !v78)
      {
        v81 = _createAllocationError();
LABEL_56:
        v46 = 0;
        *a4 = v81;
LABEL_70:
        v115(v114);
        _Block_object_dispose(&v122, 8);
        _Block_object_dispose(&v126, 8);
        _Block_object_dispose(&v130, 8);
        _Block_object_dispose(&v166, 8);
        _Block_object_dispose(buf, 8);
        goto LABEL_27;
      }

      v80 = ARResizeBufferWithNearestNeighbors(v163[3], v79, 4uLL);
      if (v80 || (v80 = ARResizeBufferWithNearestNeighbors(v159[3], *(*(&v166 + 1) + 24), 4uLL)) != 0 || self->_temporalConsistencyMethod && ((v80 = ARResizeBufferWithNearestNeighbors(v155[3], v131[3], 4uLL)) != 0 || (v80 = ARResizeBufferWithNearestNeighbors(v151[3], v127[3], 4uLL)) != 0) || (v80 = ARResizeBufferWithNearestNeighbors(v147[3], v123[3], 1uLL)) != 0)
      {
        v81 = _createResamplingError(v80);
        goto LABEL_56;
      }
    }

    v67 = [v109 rotationOfResultTensor];
    v68 = buf;
    if (v66)
    {
      v68 = &v162;
    }

    v105 = [(ARSceneDepthTechnique *)self _rotatedPixelBufferImageData:*(*(v68 + 1) + 24) rotationAngle:v67];
    v69 = &v166;
    if (v66)
    {
      v69 = &v158;
    }

    v104 = [(ARSceneDepthTechnique *)self _rotatedPixelBufferImageData:*(v69[1] + 24) rotationAngle:v67];
    v70 = &v122;
    if (v66)
    {
      v70 = &v146;
    }

    v71 = [(ARSceneDepthTechnique *)self _rotatedPixelBufferImageData:*(v70[1] + 24) rotationAngle:v67];
    if (self->_temporalConsistencyMethod)
    {
      v72 = &v130;
      if (v66)
      {
        v72 = &v154;
      }

      v103 = [(ARSceneDepthTechnique *)self _rotatedPixelBufferImageData:*(v72[1] + 24) rotationAngle:v67];
      v73 = &v126;
      if (v66)
      {
        v73 = &v150;
      }

      v102 = [(ARSceneDepthTechnique *)self _rotatedPixelBufferImageData:*(v73[1] + 24) rotationAngle:v67];
    }

    else
    {
      v102 = 0;
      v103 = 0;
    }

    v82 = [ARMLDepthData alloc];
    v83 = [v109 originalImageData];
    [v83 timestamp];
    v85 = -[ARMLDepthData initWithTimestamp:depthBuffer:confidenceBuffer:source:](v82, "initWithTimestamp:depthBuffer:confidenceBuffer:source:", [v105 pixelBuffer], objc_msgSend(v104, "pixelBuffer"), 2, v84);

    -[ARMLDepthData setConfidenceMap:](v85, "setConfidenceMap:", [v71 pixelBuffer]);
    v86 = [v109 originalImageData];
    [(ARMLDepthData *)v85 setSourceImageData:v86];

    if (self->_temporalConsistencyMethod)
    {
      -[ARMLDepthData setSingleFrameDepthBuffer:](v85, "setSingleFrameDepthBuffer:", [v103 pixelBuffer]);
      -[ARMLDepthData setSingleFrameConfidenceBuffer:](v85, "setSingleFrameConfidenceBuffer:", [v102 pixelBuffer]);
    }

    if (self->_computeNormals && ((Width = CVPixelBufferGetWidth(-[ARMLDepthData depthBuffer](v85, "depthBuffer")), Height = CVPixelBufferGetHeight(-[ARMLDepthData depthBuffer](v85, "depthBuffer")), v89 = ARCreateCVPixelBufferFromPool(&self->_outputNormalsInOriginalImageRotationPixelBufferPool, 1380410945, self, @"Normals Map", Width, Height), v110[0] = MEMORY[0x1E69E9820], v110[1] = 3221225472, v111 = __68__ARSceneDepthTechnique__generateDepthForDownscaledImageData_error___block_invoke_2, v112 = &__block_descriptor_40_e5_v8__0l, (v113 = v89) == 0) ? (_createAllocationError(), v96 = 0, *a4 = objc_claimAutoreleasedReturnValue()) : (([v109 originalImageData], v90 = objc_claimAutoreleasedReturnValue(), -[ARSceneDepthTechnique _getCameraCalibration:rotation:inputDimensions:](self, "_getCameraCalibration:rotation:inputDimensions:", v90, 0, Width, Height), v91 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v91, "intrinsicMatrix"), v100 = v93, v101 = v92, v91, v90, (v94 = objc_msgSend(MEMORY[0x1E698C138], "normalsFromDepth:focalLength:principalPoint:normalsOutput:withHelperBuffer:", -[ARMLDepthData depthBuffer](v85, "depthBuffer"), v89, self->_normalsHelperBuffer, v101, *&v100, *(&v100 + 1))) == 0) ? (-[ADJasperColorExecutor executorParameters](self->_executor, "executorParameters"), v97 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v97, "logger"), v98 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v109, "originalImageData"), v99 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v99, "timestamp"), objc_msgSend(v98, "logPixelBuffer:name:timestamp:", v89, "normals"), v99, v98, v97, -[ARMLDepthData setNormalsBuffer:](v85, "setNormalsBuffer:", v89), v96 = 1) : (objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to generate normal map: %li", v94), v95 = objc_claimAutoreleasedReturnValue(), _createADError(v95), *a4 = objc_claimAutoreleasedReturnValue(), v95, v96 = 0)), v111(v110), (v96 & 1) == 0))
    {
      v46 = 0;
    }

    else
    {
      v46 = v85;
    }

    goto LABEL_70;
  }

  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed generating depth with AD error %li", v44];
  *a4 = _createADError(v45);

LABEL_26:
  v46 = 0;
LABEL_27:

LABEL_12:
  v139(v138);
  _Block_object_dispose(&v146, 8);
  _Block_object_dispose(&v150, 8);
  _Block_object_dispose(&v154, 8);
  _Block_object_dispose(&v158, 8);
  _Block_object_dispose(&v162, 8);

  return v46;
}

void __68__ARSceneDepthTechnique__generateDepthForDownscaledImageData_error___block_invoke(void *a1)
{
  CVPixelBufferRelease(*(*(a1[4] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[5] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[6] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[7] + 8) + 24));
  v2 = *(*(a1[8] + 8) + 24);

  CVPixelBufferRelease(v2);
}

void __68__ARSceneDepthTechnique__generateDepthForDownscaledImageData_error___block_invoke_38(void *a1)
{
  CVPixelBufferRelease(*(*(a1[4] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[5] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[6] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[7] + 8) + 24));
  v2 = *(*(a1[8] + 8) + 24);

  CVPixelBufferRelease(v2);
}

- (void)waitForProcessingCompleteInDeterministicMode
{
  if (self->_deterministic)
  {
    dispatch_sync(self->_depthProcessingQueue, &__block_literal_global_36);
  }
}

- (id)_safeProcessData:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v48.receiver = self;
  v48.super_class = ARSceneDepthTechnique;
  v5 = [(ARImageBasedTechnique *)&v48 processData:v4];
  if (!self->_prepared)
  {
    v12 = 0;
    goto LABEL_41;
  }

  if (![v4 isDroppedData])
  {
    v13 = [v4 downScalingResults];
    v14 = [v13 count];

    if (!v14)
    {
      if (ARShouldUseLogTypeError_onceToken_16 != -1)
      {
        [ARSceneDepthTechnique _prepareOnce];
      }

      v29 = ARShouldUseLogTypeError_internalOSVersion_16;
      v30 = _ARLogGeneral_6();
      v6 = v30;
      if (v29 == 1)
      {
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v31 = objc_opt_class();
        v8 = NSStringFromClass(v31);
        *buf = 138543618;
        v50 = v8;
        v51 = 2048;
        v52 = self;
        v9 = "%{public}@ <%p>: Received unexpected data, downScalingResults is empty.";
        v10 = v6;
        v11 = OS_LOG_TYPE_ERROR;
        goto LABEL_6;
      }

      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_7;
      }

      v42 = objc_opt_class();
      v8 = NSStringFromClass(v42);
      *buf = 138543618;
      v50 = v8;
      v51 = 2048;
      v52 = self;
      v9 = "Error: %{public}@ <%p>: Received unexpected data, downScalingResults is empty.";
LABEL_5:
      v10 = v6;
      v11 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_1C241C000, v10, v11, v9, buf, 0x16u);

      goto LABEL_7;
    }

    v15 = [v4 downScalingResults];
    v16 = [v15 objectAtIndexedSubscript:0];
    v17 = [v16 pixelBuffer];

    v18 = [v4 rotationOfResultTensor];
    Width = CVPixelBufferGetWidth(v17);
    v47 = 0;
    [(ARSceneDepthTechnique *)self _prepareOnDimensionsChange:v18 outputRotation:&v47 error:Width, CVPixelBufferGetHeight(v17)];
    v20 = v47;
    if (v20)
    {
      v6 = v20;
      if (ARShouldUseLogTypeError_onceToken_16 != -1)
      {
        [ARSceneDepthTechnique _prepareOnce];
      }

      v21 = ARShouldUseLogTypeError_internalOSVersion_16;
      v22 = _ARLogTechnique_12();
      v23 = v22;
      if (v21 == 1)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          *buf = 138543874;
          v50 = v25;
          v51 = 2048;
          v52 = self;
          v53 = 2112;
          v54 = v6;
          v26 = "%{public}@ <%p>: Failed preparing scene depth: %@";
          v27 = v23;
          v28 = OS_LOG_TYPE_ERROR;
LABEL_29:
          _os_log_impl(&dword_1C241C000, v27, v28, v26, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v41 = objc_opt_class();
        v25 = NSStringFromClass(v41);
        *buf = 138543874;
        v50 = v25;
        v51 = 2048;
        v52 = self;
        v53 = 2112;
        v54 = v6;
        v26 = "Error: %{public}@ <%p>: Failed preparing scene depth: %@";
        v27 = v23;
        v28 = OS_LOG_TYPE_INFO;
        goto LABEL_29;
      }

      v32 = [(ARTechnique *)self delegate];
      [v32 technique:self didFailWithError:v6];
LABEL_38:
      v12 = 0;
      goto LABEL_39;
    }

    v46 = 0;
    v32 = [(ARSceneDepthTechnique *)self _generateDepthForDownscaledImageData:v4 error:&v46];
    v6 = v46;
    if (!v6)
    {
      v32 = v32;
      v12 = v32;
LABEL_39:

      goto LABEL_40;
    }

    if (ARShouldUseLogTypeError_onceToken_16 != -1)
    {
      [ARSceneDepthTechnique _prepareOnce];
    }

    v33 = ARShouldUseLogTypeError_internalOSVersion_16;
    v34 = _ARLogTechnique_12();
    v35 = v34;
    if (v33 == 1)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *buf = 138543874;
        v50 = v37;
        v51 = 2048;
        v52 = self;
        v53 = 2112;
        v54 = v6;
        v38 = "%{public}@ <%p>: Failed running scene depth frame: %@";
        v39 = v35;
        v40 = OS_LOG_TYPE_ERROR;
LABEL_36:
        _os_log_impl(&dword_1C241C000, v39, v40, v38, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v43 = objc_opt_class();
      v37 = NSStringFromClass(v43);
      *buf = 138543874;
      v50 = v37;
      v51 = 2048;
      v52 = self;
      v53 = 2112;
      v54 = v6;
      v38 = "Error: %{public}@ <%p>: Failed running scene depth frame: %@";
      v39 = v35;
      v40 = OS_LOG_TYPE_INFO;
      goto LABEL_36;
    }

    v44 = [(ARTechnique *)self delegate];
    [v44 technique:self didFailWithError:v6];

    goto LABEL_38;
  }

  v6 = _ARLogGeneral_6();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543618;
    v50 = v8;
    v51 = 2048;
    v52 = self;
    v9 = "%{public}@ <%p>: Downscaled data is dropped, the downscaling technique is not prepared yet.";
    goto LABEL_5;
  }

LABEL_7:
  v12 = 0;
LABEL_40:

LABEL_41:

  return v12;
}

- (id)processData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    depthProcessingQueue = self->_depthProcessingQueue;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __37__ARSceneDepthTechnique_processData___block_invoke;
    v10 = &unk_1E817BEC8;
    v11 = self;
    v12 = v4;
    dispatch_async(depthProcessingQueue, &v7);
    [(ARSceneDepthTechnique *)self waitForProcessingCompleteInDeterministicMode:v7];
  }

  return v4;
}

void __37__ARSceneDepthTechnique_processData___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  dispatch_semaphore_wait(*(*(a1 + 32) + 280), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 40);
  [v2 timestamp];
  kdebug_trace();
  v3 = [*(a1 + 32) _safeProcessData:v2];
  [v2 timestamp];
  kdebug_trace();
  dispatch_semaphore_signal(*(*(a1 + 32) + 280));
  v4 = *(a1 + 32);
  if (v3)
  {
    v6[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [v2 timestamp];
    [v4 pushResultData:v5 forTimestamp:?];
  }

  else
  {
    [v2 timestamp];
    [v4 pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
  }
}

- (void)_prepareOnDimensionsChange:(CGSize)a3 outputRotation:(int64_t)a4 error:(id *)a5
{
  height = a3.height;
  width = a3.width;
  v36 = *MEMORY[0x1E69E9840];
  p_inputDimensions = &self->_inputDimensions;
  v11 = a3.width == self->_inputDimensions.width && a3.height == self->_inputDimensions.height;
  if (!v11 || self->_outputRotation != a4)
  {
    v12 = _ARLogTechnique_12();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = p_inputDimensions->width;
      v16 = p_inputDimensions->height;
      *buf = 138544642;
      v25 = v14;
      v26 = 2048;
      v27 = self;
      v28 = 2048;
      v29 = v15;
      v30 = 2048;
      v31 = v16;
      v32 = 2048;
      v33 = width;
      v34 = 2048;
      v35 = height;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: preparing AppleDepth executor on orientation change: (%.0f,%.0f) -> (%.0f,%.0f)", buf, 0x3Eu);
    }

    v17 = [(ADJasperColorExecutor *)self->_executor prepareForEngineType:4 roi:1 exifOrientation:0 rotationPreference:0.0, 0.0, width, height];
    if (v17)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed preparing AppleDepth executor AD error %li", v17];
      *a5 = _createADError(v18);
    }

    else
    {
      v19 = [[ARImageRotationTechnique alloc] initWithRotation:a4 mirror:0];
      oneComponent8RotationTechnique = self->_oneComponent8RotationTechnique;
      self->_oneComponent8RotationTechnique = v19;

      v21 = [[ARImageRotationTechnique alloc] initWithRotation:a4 mirror:0];
      float32RotationTechnique = self->_float32RotationTechnique;
      self->_float32RotationTechnique = v21;

      v23 = ARRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(&self->_outputDepthPixelBufferPool, 1717855600, 0, width, height);
      if (v23 || (v23 = ARRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(&self->_outputConfidencePixelBufferPool, 1717855600, 0, width, height)) != 0 || (v23 = ARRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(&self->_outputSingleFrameDepthPixelBufferPool, 1717855600, 0, width, height)) != 0 || (v23 = ARRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(&self->_outputSingleFrameConfidencePixelBufferPool, 1717855600, 0, width, height)) != 0 || (v23 = ARRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(&self->_outputConfidenceMapPixelBufferPool, 1278226488, 0, width, height)) != 0)
      {
        *a5 = _createPoolAllocationError(v23);
      }

      else
      {
        p_inputDimensions->width = width;
        p_inputDimensions->height = height;
        self->_outputRotation = a4;
      }
    }
  }
}

- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)a3
{
  objc_initWeak(&location, self);
  depthProcessingQueue = self->_depthProcessingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__ARSceneDepthTechnique_pushEmptyResultOnAsynchronousQueueForTimestamp___block_invoke;
  block[3] = &unk_1E817C4E8;
  objc_copyWeak(v7, &location);
  v7[1] = *&a3;
  dispatch_async(depthProcessingQueue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __72__ARSceneDepthTechnique_pushEmptyResultOnAsynchronousQueueForTimestamp___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pushResultData:MEMORY[0x1E695E0F0] forTimestamp:*(a1 + 40)];
}

@end