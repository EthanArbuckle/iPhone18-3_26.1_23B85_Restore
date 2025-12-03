@interface AR2DSkeletonDetectionPostProcessingTechnique
- (ABPK2DDetectionResult)abpkPrevious3DSkeleton;
- (AR2DSkeletonDetectionPostProcessingTechnique)init;
- (double)requiredTimeInterval;
- (id)processData:(id)data;
- (void)_process2DSkeletonRawEspressoResultInBackground:(id)background;
- (void)prepare:(BOOL)prepare;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
@end

@implementation AR2DSkeletonDetectionPostProcessingTechnique

- (AR2DSkeletonDetectionPostProcessingTechnique)init
{
  v6.receiver = self;
  v6.super_class = AR2DSkeletonDetectionPostProcessingTechnique;
  v2 = [(ARImageBasedTechnique *)&v6 init];
  if (v2)
  {
    v3 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.humanposepostprocessing");
    processingQueue = v2->_processingQueue;
    v2->_processingQueue = v3;

    v2->_previous3DSkeletonLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (ABPK2DDetectionResult)abpkPrevious3DSkeleton
{
  os_unfair_lock_lock_with_options();
  v3 = self->_abpkPrevious3DSkeleton;
  os_unfair_lock_unlock(&self->_previous3DSkeletonLock);

  return v3;
}

- (void)prepare:(BOOL)prepare
{
  v21 = *MEMORY[0x1E69E9840];
  self->_deterministic = prepare;
  if (!self->_postprocess2d)
  {
    self->_use3DSupportSkeletonForExtrapolation = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.bodyTracking.useSupport3DSkeleton"];
    self->_shouldPush3DSupportSkeleton = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.bodytracking.pushProjected3DSkeleton"];
    v4 = [objc_alloc(MEMORY[0x1E698A8E8]) initWithAlgorithmMode:1];
    [ARKitUserDefaults floatForKey:@"com.apple.arkit.bodytracking.extrapolationTimeLimitSeconds"];
    v6 = [MEMORY[0x1E698A8F0] get2DDetectionPostProcessWithNetworkConfig:v4 use3DSkeletonForExtrapolation:self->_use3DSupportSkeletonForExtrapolation shouldPush3DSupportSkeleton:self->_shouldPush3DSupportSkeleton withExtrapolationTime:v5];
    postprocess2d = self->_postprocess2d;
    self->_postprocess2d = v6;

    if (!self->_postprocess2d)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [AR2DSkeletonDetectionPostProcessingTechnique prepare:];
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
          _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Initialization of 2d post-processing algorithm failed", &v17, 0x16u);
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
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Initialization of 2d post-processing algorithm failed", &v17, 0x16u);
      }

      delegate = [(ARTechnique *)self delegate];
      v16 = ARErrorWithCodeAndUserInfo(151, 0);
      [delegate technique:self didFailWithError:v16];
    }
  }
}

- (double)requiredTimeInterval
{
  v2 = ARIsANEVersionEqualOrPriorToH12();
  result = 0.001;
  if (v2)
  {
    return 0.007;
  }

  return result;
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = AR2DSkeletonDetectionPostProcessingTechnique;
    v5 = [(ARImageBasedTechnique *)&v12 processData:dataCopy];
    objc_initWeak(&location, self);
    processingQueue = self->_processingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__AR2DSkeletonDetectionPostProcessingTechnique_processData___block_invoke;
    block[3] = &unk_1E817C1D0;
    objc_copyWeak(&v10, &location);
    v9 = dataCopy;
    dispatch_async(processingQueue, block);
    if (self->_deterministic)
    {
      dispatch_sync(self->_processingQueue, &__block_literal_global_8);
    }

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return dataCopy;
}

void __60__AR2DSkeletonDetectionPostProcessingTechnique_processData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _process2DSkeletonRawEspressoResultInBackground:*(a1 + 32)];
}

- (void)_process2DSkeletonRawEspressoResultInBackground:(id)background
{
  v33 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  v5 = _ARLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v30 = v7;
    v31 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Process 2D Skeleton Raw Espresso Result In Background", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_processingQueue);
  rotationNeeded = [backgroundCopy rotationNeeded];
  inputImageData = [backgroundCopy inputImageData];
  [inputImageData timestamp];
  v11 = v10;
  [inputImageData timestamp];
  kdebug_trace();
  inputImageData2 = [backgroundCopy inputImageData];
  Width = CVPixelBufferGetWidth([inputImageData2 pixelBuffer]);
  inputImageData3 = [backgroundCopy inputImageData];
  Height = CVPixelBufferGetHeight([inputImageData3 pixelBuffer]);

  imageDataForNeuralNetwork = [backgroundCopy imageDataForNeuralNetwork];
  v17 = CVPixelBufferGetWidth([imageDataForNeuralNetwork pixelBuffer]);
  imageDataForNeuralNetwork2 = [backgroundCopy imageDataForNeuralNetwork];
  v19 = CVPixelBufferGetHeight([imageDataForNeuralNetwork2 pixelBuffer]);

  v20 = [objc_alloc(MEMORY[0x1E698A938]) initWithType:1 inputResolution:Width outputResolution:{Height, v17, v19}];
  os_unfair_lock_lock(&self->_previous3DSkeletonLock);
  postprocess2d = self->_postprocess2d;
  [inputImageData timestamp];
  LODWORD(postprocess2d) = [(ABPK2DDetectionPostprocess *)postprocess2d extract2DSkeletonfromBuffers:backgroundCopy withImagePreProcessingParams:v20 atTimestamp:self->_abpkPrevious3DSkeleton previousSkeleton3D:?];
  os_unfair_lock_unlock(&self->_previous3DSkeletonLock);
  if (postprocess2d == -6661)
  {
    v22 = objc_opt_new();
    [v22 setTimestamp:v11];
    v28 = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [(ARImageBasedTechnique *)self pushResultData:v23 forTimestamp:v11];
  }

  else
  {
    v22 = [(ABPK2DDetectionPostprocess *)self->_postprocess2d getRaw2DDetectionResultforRotation:rotationNeeded croppedRect:0.0, 0.0, 1.0, 1.0];
    v23 = [(ABPK2DDetectionPostprocess *)self->_postprocess2d get2DDetectionResultforRotation:rotationNeeded croppedRect:0.0, 0.0, 1.0, 1.0];
    v24 = objc_opt_new();
    [v24 setTimestamp:v11];
    [v24 setTrackedDetectionResult:v23];
    [v24 setRawDetectionResult:v22];
    if (self->_shouldPush3DSupportSkeleton)
    {
      getAligned3DSkeleton = [(ABPK2DDetectionPostprocess *)self->_postprocess2d getAligned3DSkeleton];
      [v24 setAlignedDetectionResult:getAligned3DSkeleton];
    }

    v27 = v24;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    [(ARImageBasedTechnique *)self pushResultData:v26 forTimestamp:v11];

    [inputImageData timestamp];
    kdebug_trace();
  }
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  v99 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v89.receiver = self;
  v89.super_class = AR2DSkeletonDetectionPostProcessingTechnique;
  [(ARImageBasedTechnique *)&v89 requestResultDataAtTimestamp:timestamp context:?];
  v5 = [contextCopy resultDataOfClass:objc_opt_class()];
  firstObject = [v5 firstObject];

  v6 = [firstObject resultDataOfClass:objc_opt_class()];
  firstObject2 = [v6 firstObject];

  if (!firstObject2 || ([firstObject2 retargetedSkeletons], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count") == 0, v7, v8))
  {
    os_unfair_lock_lock(&self->_previous3DSkeletonLock);
    abpkPrevious3DSkeleton = self->_abpkPrevious3DSkeleton;
    self->_abpkPrevious3DSkeleton = 0;

    os_unfair_lock_unlock(&self->_previous3DSkeletonLock);
  }

  else
  {
    retargetedSkeletons = [firstObject2 retargetedSkeletons];
    firstObject3 = [retargetedSkeletons firstObject];

    [firstObject2 cameraIntrinsics];
    v83 = v10;
    [firstObject2 cameraIntrinsics];
    v79 = v11;
    [firstObject2 cameraIntrinsics];
    v77 = v12;
    [firstObject3 visionTransform];
    v13 = 0;
    v14 = v83;
    v14.i32[3] = 0;
    v16 = v77;
    v15 = v79;
    v15.i32[3] = 0;
    v16.i32[3] = 0;
    *v90 = v17;
    v91 = v18;
    v92 = v19;
    v93 = v20;
    do
    {
      *&__p[v13] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(*&v90[v13])), v15, v90[v13], 1), v16, *&v90[v13], 2), xmmword_1C25C8560, *&v90[v13], 3);
      v13 += 2;
    }

    while (v13 != 8);
    v78 = v95;
    v80 = *__p;
    v75 = v97;
    v76 = v96;
    liftedSkeletonData = [firstObject3 liftedSkeletonData];
    skeletonDetectionResult2D = [liftedSkeletonData skeletonDetectionResult2D];
    rotation = [skeletonDetectionResult2D rotation];

    v23 = -rotation * 3.14159265 / 180.0;
    v24 = __sincosf_stret(v23);
    v25 = +[ARSkeletonDefinition defaultBody2DSkeletonDefinition];
    jointCount = [v25 jointCount];

    __p[0] = 0;
    __p[1] = 0;
    v95.i64[0] = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(__p, jointCount);
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v27 = +[ARSkeletonDefinition defaultBody2DSkeletonDefinition];
    jointNames = [v27 jointNames];

    v29 = [jointNames countByEnumeratingWithState:&v85 objects:v98 count:16];
    if (v29)
    {
      v30.f32[0] = -v24.__sinval;
      v30.i32[1] = LODWORD(v24.__cosval);
      v74 = v30;
      v31 = *v86;
      __asm { FMOV            V10.2S, #-1.0 }

      v72 = 1;
      v73 = 1;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v86 != v31)
          {
            objc_enumerationMutation(jointNames);
          }

          v38 = *(*(&v85 + 1) + 8 * i);
          if ([(__CFString *)v38 isEqualToString:@"root"])
          {

            v38 = @"hips_joint";
          }

          v39 = +[ARSkeletonDefinition defaultBody3DSkeletonDefinition];
          jointNames2 = [v39 jointNames];
          v41 = [jointNames2 indexOfObject:v38];

          if (v41 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([(__CFString *)v38 isEqualToString:@"right_ear_joint"])
            {
              v90[0] = _D10;
              _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(__p, v90);
              v73 = 0;
            }

            else if ([(__CFString *)v38 isEqualToString:@"left_ear_joint"])
            {
              v90[0] = _D10;
              _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(__p, v90);
              v72 = 0;
            }
          }

          else
          {
            v84 = *([firstObject3 jointModelTransforms] + (v41 << 6) + 48);
            [firstObject3 estimatedScaleFactor];
            v43 = v42;
            [firstObject2 imageResolution];
            v45 = v44;
            [firstObject2 imageResolution];
            v46 = v43;
            v47 = vmulq_n_f32(v84, v46);
            v48 = vaddq_f32(v75, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80, v47.f32[0]), v78, *v47.f32, 1), v76, v47, 2));
            v48.i64[0] = vdivq_f32(v48, vdupq_laneq_s32(v48, 2)).u64[0];
            v48.f32[0] = v48.f32[0] / v45 + -0.5;
            *&v49 = v48.f32[1] / v49 + -0.5;
            v50 = vadd_f32(vmla_n_f32(vmul_n_f32(__PAIR64__(LODWORD(v24.__sinval), LODWORD(v24.__cosval)), v48.f32[0]), v74, *&v49), 0x3F0000003F000000);
            v51 = __p[1];
            if (__p[1] >= v95.i64[0])
            {
              v53 = (__p[1] - __p[0]) >> 3;
              if ((v53 + 1) >> 61)
              {
                _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
              }

              v54 = (v95.i64[0] - __p[0]) >> 2;
              if (v54 <= v53 + 1)
              {
                v54 = v53 + 1;
              }

              if (v95.i64[0] - __p[0] >= 0x7FFFFFFFFFFFFFF8)
              {
                v55 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v55 = v54;
              }

              if (v55)
              {
                _ZNSt3__19allocatorIDv2_fE17allocate_at_leastB8ne200100Em(__p, v55);
              }

              *(8 * v53) = v50;
              v52 = (8 * v53 + 8);
              v56 = (8 * v53 - (__p[1] - __p[0]));
              memcpy(v56, __p[0], __p[1] - __p[0]);
              v57 = __p[0];
              __p[0] = v56;
              __p[1] = v52;
              v95.i64[0] = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              *__p[1] = v50;
              v52 = v51 + 8;
            }

            __p[1] = v52;
          }
        }

        v29 = [jointNames countByEnumeratingWithState:&v85 objects:v98 count:16];
      }

      while (v29);
    }

    else
    {
      v72 = 1;
      v73 = 1;
    }

    std::vector<unsigned int>::vector[abi:ne200100](v90, (__p[1] - __p[0]) >> 3);
    if (v90[1] - v90[0] >= 1)
    {
      memset_pattern16(v90[0], &unk_1C25C8570, v90[1] - v90[0]);
    }

    v59 = +[ARSkeletonDefinition defaultBody2DSkeletonDefinition];
    jointNames3 = [v59 jointNames];
    v61 = [jointNames3 indexOfObject:@"right_ear_joint"];

    v62 = +[ARSkeletonDefinition defaultBody2DSkeletonDefinition];
    jointNames4 = [v62 jointNames];
    v64 = [jointNames4 indexOfObject:@"left_ear_joint"];

    v65 = v90[0];
    if (v61 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v90[0] + v61) = v73;
    }

    if (v64 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v65[v64] = v72;
    }

    v65[v64] = v72;
    v66 = [objc_alloc(MEMORY[0x1E698A8F8]) initWithJoints:0.0 trackingStates:0.0 numberOfJoints:1.0 rotation:1.0 croppedRect:? liftingData:?];
    os_unfair_lock_lock(&self->_previous3DSkeletonLock);
    v67 = self->_abpkPrevious3DSkeleton;
    self->_abpkPrevious3DSkeleton = v66;

    os_unfair_lock_unlock(&self->_previous3DSkeletonLock);
    if (v90[0])
    {
      v90[1] = v90[0];
      operator delete(v90[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

@end