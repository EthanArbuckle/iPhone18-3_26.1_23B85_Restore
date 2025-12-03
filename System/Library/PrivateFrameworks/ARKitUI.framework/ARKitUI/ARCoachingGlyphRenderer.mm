@interface ARCoachingGlyphRenderer
- (ARCoachingGlyphRenderer)initWithLayer:(id)layer device:(id)device pixelFormat:(unint64_t)format sampleCount:(int)count deviceMaskImage:(id)image;
- (void)bottomPlaneTranslationTargetChanged;
- (void)computeRotation:(double)rotation;
- (void)computeTesselationFactorsForCommandBuffer:(id)buffer;
- (void)drawWithTimeDelta:(double)delta drawable:(id)drawable commandBuffer:(id)buffer;
- (void)generateTexturesWithSize:(CGSize)size;
- (void)prepareWithCompletionHandler:(id)handler;
- (void)quaternionTargetChanged;
- (void)renderPostTessellationInDrawable:(id)drawable withCommandBuffer:(id)buffer;
- (void)resetAnimationTime:(double)time;
- (void)resetData;
- (void)resetSprings;
- (void)resizeIfNeeded:(id)needed;
- (void)restartAnimation;
- (void)scaleTargetChanged;
- (void)snapStateChanged;
- (void)stepSprings:(double)springs;
- (void)topPlaneTranslationTargetChanged;
- (void)updateAngularVelocity;
@end

@implementation ARCoachingGlyphRenderer

- (ARCoachingGlyphRenderer)initWithLayer:(id)layer device:(id)device pixelFormat:(unint64_t)format sampleCount:(int)count deviceMaskImage:(id)image
{
  layerCopy = layer;
  deviceCopy = device;
  imageCopy = image;
  v123.receiver = self;
  v123.super_class = ARCoachingGlyphRenderer;
  v16 = [(ARCoachingGlyphRenderer *)&v123 init];
  v17 = v16;
  if (v16)
  {
    v106 = layerCopy;
    objc_storeStrong(&v16->_device, device);
    v17->_pixelFormat = format;
    v17->_sampleCount = count;
    objc_storeStrong(&v17->_layer, layer);
    v17->_strokeWeight = 0.035;
    __asm { FMOV            V0.2S, #16.0 }

    *&v17->_edgeFactor = _D0;
    v17->_dirty_tesselation_factors = 1;
    v17->_angularVelocity.angle = 0.0;
    *&v17->_anon_c8[8] = 0;
    *&v17->_anon_c8[16] = 0;
    *&v17->_anon_c8[24] = 0u;
    [(ARCoachingGlyphRenderer *)v17 setA_vel:0.0];
    [(ARCoachingGlyphRenderer *)v17 setRotationAngleY:0.0];
    v23 = objc_alloc_init(ARCoachingGlyphState);
    state = v17->_state;
    v17->_state = v23;

    v25 = objc_alloc_init(ARCoachingAnimTime);
    time = v17->_time;
    v17->_time = v25;

    v17->_lastDrawableSize.width = -1.0;
    v17->_lastDrawableSize.height = -1.0;
    v27 = [[ARCoachingDeviceController alloc] initWithDeviceMaskImage:imageCopy geoTrackingMode:0];
    deviceController = v17->_deviceController;
    v17->_deviceController = v27;

    v29 = [ARCoachingDeviceController alloc];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v105 = imageCopy;
    v31 = [(ARCoachingDeviceController *)v29 initWithDeviceMaskImage:imageCopy solidColor:whiteColor geoTrackingMode:0];
    parallaxDeviceController = v17->_parallaxDeviceController;
    v17->_parallaxDeviceController = v31;

    [(ARCoachingDeviceController *)v17->_parallaxDeviceController setLayerParent:v17->_layer];
    [(ARCoachingDeviceController *)v17->_deviceController setLayerParent:v17->_layer];
    [(CAMetalLayer *)v17->_layer setAllowsGroupBlending:1];
    v33 = ARCreateNonFixedPriorityDispatchQueue();
    queue = v17->_queue;
    v17->_queue = v33;

    v35 = deviceCopy;
    v36 = [[ARCoachingMetalSplineData alloc] init:deviceCopy];
    splineData = v17->_splineData;
    v17->_splineData = v36;

    v38 = v17->_splineData;
    shapes = [(ARCoachingMetalSplineData *)v38 shapes];
    controlPoints = [shapes controlPoints];
    v41 = [controlPoints objectAtIndexedSubscript:2];
    controlPoints2 = [v41 controlPoints];
    shapes2 = [(ARCoachingMetalSplineData *)v17->_splineData shapes];
    controlPoints3 = [shapes2 controlPoints];
    v45 = [controlPoints3 objectAtIndexedSubscript:2];
    -[ARCoachingMetalSplineData computeShapeBlendWithEnd:endCount:](v38, "computeShapeBlendWithEnd:endCount:", controlPoints2, [v45 numControlPoints]);

    v46 = objc_alloc_init(ARCoachingQuaternionSpring);
    rotationSpring = v17->_rotationSpring;
    v17->_rotationSpring = v46;

    v48 = v17->_state;
    if (v48)
    {
      [(ARCoachingGlyphState *)v48 computeQuaternionTarget];
    }

    else
    {
      v121 = 0u;
      v122 = 0u;
    }

    v49 = v17->_rotationSpring;
    v119 = v121;
    v120 = v122;
    [(ARCoachingQuaternionSpring *)v49 setTarget:&v119];
    v50 = v17->_rotationSpring;
    deviceCopy = v35;
    if (v50)
    {
      [(ARCoachingQuaternionSpring *)v50 target];
    }

    else
    {
      v119 = 0u;
      v120 = 0u;
    }

    imageCopy = v105;
    v51 = v120;
    *v17->_anon_a0 = v119;
    *&v17->_anon_a0[16] = v51;
    v52 = objc_alloc_init(ARCoachingSpringDouble3);
    scaleSpring = v17->_scaleSpring;
    v17->_scaleSpring = v52;

    [(ARCoachingSpringDouble3 *)v17->_scaleSpring setResponse:0.699999988];
    v55 = v17->_state;
    if (v55)
    {
      [(ARCoachingGlyphState *)v55 computeScaleTarget];
      v56 = v117;
      v57 = vextq_s8(v56, v56, 8uLL).u64[0];
      *&v54 = v118;
    }

    else
    {
      v56.i64[0] = 0;
      v57 = 0;
      *&v54 = 0;
    }

    v58 = v17->_scaleSpring;
    v56.i64[1] = v57;
    v119 = v56;
    v120 = v54;
    [(ARCoachingSpringDouble3 *)v58 setTarget:&v119];
    v60 = v17->_scaleSpring;
    if (v60)
    {
      [(ARCoachingSpringDouble3 *)v60 target];
      v61 = v115;
      v62 = vextq_s8(v61, v61, 8uLL).u64[0];
      *&v59 = v116;
      v60 = v17->_scaleSpring;
    }

    else
    {
      v61.i64[0] = 0;
      v62 = 0;
      *&v59 = 0;
    }

    v61.i64[1] = v62;
    v119 = v61;
    v120 = v59;
    [(ARCoachingSpringDouble3 *)v60 setValue:&v119];
    v63 = objc_alloc_init(ARCoachingSpringDouble3);
    topPlaneTranslationSpring = v17->_topPlaneTranslationSpring;
    v17->_topPlaneTranslationSpring = v63;

    [(ARCoachingSpringDouble3 *)v17->_topPlaneTranslationSpring setResponse:0.699999988];
    v66 = v17->_state;
    if (v66)
    {
      [(ARCoachingGlyphState *)v66 computeTopPlaneTranslationTarget];
      v67 = v113;
      v68 = vextq_s8(v67, v67, 8uLL).u64[0];
      *&v65 = v114;
    }

    else
    {
      v67.i64[0] = 0;
      v68 = 0;
      *&v65 = 0;
    }

    v69 = v17->_topPlaneTranslationSpring;
    v67.i64[1] = v68;
    v119 = v67;
    v120 = v65;
    [(ARCoachingSpringDouble3 *)v69 setTarget:&v119];
    v71 = v17->_topPlaneTranslationSpring;
    if (v71)
    {
      [(ARCoachingSpringDouble3 *)v71 target];
      v72 = v111;
      v73 = vextq_s8(v72, v72, 8uLL).u64[0];
      *&v70 = v112;
      v71 = v17->_topPlaneTranslationSpring;
    }

    else
    {
      v72.i64[0] = 0;
      v73 = 0;
      *&v70 = 0;
    }

    v72.i64[1] = v73;
    v119 = v72;
    v120 = v70;
    [(ARCoachingSpringDouble3 *)v71 setValue:&v119];
    v74 = objc_alloc_init(ARCoachingSpringDouble3);
    bottomPlaneTranslationSpring = v17->_bottomPlaneTranslationSpring;
    v17->_bottomPlaneTranslationSpring = v74;

    [(ARCoachingSpringDouble3 *)v17->_bottomPlaneTranslationSpring setResponse:0.699999988];
    v77 = v17->_state;
    if (v77)
    {
      [(ARCoachingGlyphState *)v77 computeBottomPlaneTranslationTarget];
      v78 = v109;
      v79 = vextq_s8(v78, v78, 8uLL).u64[0];
      *&v76 = v110;
    }

    else
    {
      v78.i64[0] = 0;
      v79 = 0;
      *&v76 = 0;
    }

    v80 = v17->_bottomPlaneTranslationSpring;
    v78.i64[1] = v79;
    v119 = v78;
    v120 = v76;
    [(ARCoachingSpringDouble3 *)v80 setTarget:&v119];
    v82 = v17->_bottomPlaneTranslationSpring;
    if (v82)
    {
      [(ARCoachingSpringDouble3 *)v82 target];
      v83 = v107;
      v84 = vextq_s8(v83, v83, 8uLL).u64[0];
      *&v81 = v108;
      v82 = v17->_bottomPlaneTranslationSpring;
    }

    else
    {
      v83.i64[0] = 0;
      v84 = 0;
      *&v81 = 0;
    }

    v83.i64[1] = v84;
    v119 = v83;
    v120 = v81;
    [(ARCoachingSpringDouble3 *)v82 setValue:&v119];
    v85 = [[ARCoachingStateSpring alloc] initWithValue:0.0];
    cubeResolveSpring = v17->_cubeResolveSpring;
    v17->_cubeResolveSpring = v85;

    [(ARFLSpring *)v17->_cubeResolveSpring parameters];
    v88 = v87;
    [(ARFLSpring *)v17->_cubeResolveSpring parameters];
    [(ARFLSpring *)v17->_cubeResolveSpring setParameters:ARFLSpringParametersMake([(ARFLSpring *)v17->_cubeResolveSpring parameters], v88, v89, 0.699999988)];
    [(ARFLSpring *)v17->_cubeResolveSpring setTarget:0.0];
    [(ARFLSpring *)v17->_cubeResolveSpring setValue:0.0];
    v90 = [[ARCoachingStateSpring alloc] initWithValue:0.0];
    planeResolveSpring = v17->_planeResolveSpring;
    v17->_planeResolveSpring = v90;

    [(ARFLSpring *)v17->_planeResolveSpring parameters];
    v93 = v92;
    [(ARFLSpring *)v17->_planeResolveSpring parameters];
    [(ARFLSpring *)v17->_planeResolveSpring setParameters:ARFLSpringParametersMake([(ARFLSpring *)v17->_planeResolveSpring parameters], v93, v94, 0.699999988)];
    [(ARFLSpring *)v17->_planeResolveSpring setTarget:0.0];
    [(ARFLSpring *)v17->_planeResolveSpring setValue:0.0];
    v95 = [[ARCoachingStateSpring alloc] initWithValue:0.0];
    verticalResolvingSpring = v17->_verticalResolvingSpring;
    v17->_verticalResolvingSpring = v95;

    [(ARFLSpring *)v17->_verticalResolvingSpring parameters];
    [(ARFLSpring *)v17->_verticalResolvingSpring setParameters:?];
    [(ARFLSpring *)v17->_verticalResolvingSpring setTarget:0.0];
    [(ARFLSpring *)v17->_verticalResolvingSpring setValue:0.0];
    v97 = [[ARCoachingStateSpring alloc] initWithValue:0.0];
    alphaSpring = v17->_alphaSpring;
    v17->_alphaSpring = v97;

    [(ARFLSpring *)v17->_alphaSpring setTarget:0.0];
    [(ARFLSpring *)v17->_alphaSpring setValue:0.0];
    v99 = [ARCoachingBasicSpring alloc];
    LODWORD(v100) = 1128792064;
    LODWORD(v101) = 22.0;
    v102 = [(ARCoachingBasicSpring *)v99 initWithTension:v100 friction:v101];
    orientationSpring = v17->_orientationSpring;
    v17->_orientationSpring = v102;

    [(ARCoachingGlyphState *)v17->_state setDelegate:v17];
    layerCopy = v106;
  }

  return v17;
}

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_device;
  pixelFormat = self->_pixelFormat;
  sampleCount = self->_sampleCount;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__ARCoachingGlyphRenderer_prepareWithCompletionHandler___block_invoke;
  v11[3] = &unk_278BCD748;
  v12 = v5;
  v9 = v5;
  objc_copyWeak(v14, &location);
  v15 = sampleCount;
  v14[1] = pixelFormat;
  v13 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __56__ARCoachingGlyphRenderer_prepareWithCompletionHandler___block_invoke(uint64_t a1)
{
  v99 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = ARKitUIBundle();
  v4 = [v3 URLForResource:@"default" withExtension:@"metallib"];
  if (v4)
  {
    v92 = 0;
    v5 = [v2 newLibraryWithURL:v4 error:&v92];
    v6 = v92;
    [v5 setLabel:@"com.apple.arkit.coachinganimation.library"];
    if (!v6)
    {
      goto LABEL_21;
    }

    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      __56__ARCoachingGlyphRenderer_prepareWithCompletionHandler___block_invoke_cold_1();
    }

    v7 = ARShouldUseLogTypeError_internalOSVersion_2;
    v8 = _ARLogCoaching_6();
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = [v6 localizedDescription];
        v11 = [v6 localizedFailureReason];
        v12 = [v6 localizedRecoverySuggestion];
        *buf = 138412802;
        v94 = v10;
        v95 = 2112;
        v96 = v11;
        v97 = 2112;
        v98 = v12;
        v13 = "Error while loading metal library for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
        v14 = v9;
        v15 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_23D3AE000, v14, v15, v13, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 localizedDescription];
      v11 = [v6 localizedFailureReason];
      v12 = [v6 localizedRecoverySuggestion];
      *buf = 138412802;
      v94 = v10;
      v95 = 2112;
      v96 = v11;
      v97 = 2112;
      v98 = v12;
      v13 = "Error: Error while loading metal library for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
      v14 = v9;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  if (ARShouldUseLogTypeError_onceToken_2 != -1)
  {
    __56__ARCoachingGlyphRenderer_prepareWithCompletionHandler___block_invoke_cold_2();
  }

  v16 = ARShouldUseLogTypeError_internalOSVersion_2;
  v17 = _ARLogCoaching_6();
  v6 = v17;
  if (v16 == 1)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "Failed to find metal library for coaching animations";
      v19 = v6;
      v20 = OS_LOG_TYPE_ERROR;
LABEL_19:
      _os_log_impl(&dword_23D3AE000, v19, v20, v18, buf, 2u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v18 = "Error: Failed to find metal library for coaching animations";
    v19 = v6;
    v20 = OS_LOG_TYPE_INFO;
    goto LABEL_19;
  }

  v5 = 0;
LABEL_21:

  v21 = [[ARCoachingDotsRenderer alloc] init:*(a1 + 32) pixelFormat:*(a1 + 56) metalLibrary:v5 sampleCount:*(a1 + 64)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setDotsRenderer:v21];

  v23 = [v5 newFunctionWithName:@"tessellation_kernel_quad"];
  v24 = [v5 newFunctionWithName:@"tessellation_vertex_quad"];
  v25 = [v5 newFunctionWithName:@"tessellation_fragment"];
  v26 = [MEMORY[0x277CD7090] vertexDescriptor];
  v27 = [v26 attributes];
  v28 = [v27 objectAtIndexedSubscript:0];
  [v28 setFormat:30];

  v29 = [v26 attributes];
  v30 = [v29 objectAtIndexedSubscript:0];
  [v30 setOffset:0];

  v31 = [v26 attributes];
  v32 = [v31 objectAtIndexedSubscript:0];
  [v32 setBufferIndex:0];

  v33 = [v26 attributes];
  v34 = [v33 objectAtIndexedSubscript:1];
  [v34 setFormat:28];

  v35 = [v26 attributes];
  v36 = [v35 objectAtIndexedSubscript:1];
  [v36 setOffset:16];

  v37 = [v26 attributes];
  v38 = [v37 objectAtIndexedSubscript:1];
  [v38 setBufferIndex:0];

  v39 = [v26 layouts];
  v40 = [v39 objectAtIndexedSubscript:0];
  [v40 setStepFunction:4];

  v41 = [v26 layouts];
  v42 = [v41 objectAtIndexedSubscript:0];
  [v42 setStepRate:1];

  v43 = [v26 layouts];
  v44 = [v43 objectAtIndexedSubscript:0];
  [v44 setStride:32];

  v45 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v45 setVertexDescriptor:v26];
  [v45 setTessellationFactorScaleEnabled:0];
  [v45 setTessellationFactorFormat:0];
  [v45 setTessellationControlPointIndexType:1];
  [v45 setTessellationFactorStepFunction:1];
  [v45 setTessellationOutputWindingOrder:0];
  [v45 setTessellationPartitionMode:3];
  [v45 setMaxTessellationFactor:16];
  [v45 setVertexFunction:v24];
  v89 = v25;
  [v45 setFragmentFunction:v25];
  v46 = [v45 colorAttachments];
  v47 = [v46 objectAtIndexedSubscript:0];
  [v47 setBlendingEnabled:1];

  v48 = [v45 colorAttachments];
  v49 = [v48 objectAtIndexedSubscript:0];
  [v49 setRgbBlendOperation:4];

  v50 = [v45 colorAttachments];
  v51 = [v50 objectAtIndexedSubscript:0];
  [v51 setAlphaBlendOperation:4];

  v52 = [v45 colorAttachments];
  v53 = [v52 objectAtIndexedSubscript:0];
  [v53 setSourceRGBBlendFactor:1];

  v54 = [v45 colorAttachments];
  v55 = [v54 objectAtIndexedSubscript:0];
  [v55 setSourceAlphaBlendFactor:1];

  v56 = [v45 colorAttachments];
  v57 = [v56 objectAtIndexedSubscript:0];
  [v57 setDestinationRGBBlendFactor:5];

  v58 = [v45 colorAttachments];
  v59 = [v58 objectAtIndexedSubscript:0];
  [v59 setDestinationAlphaBlendFactor:5];

  v60 = *(a1 + 56);
  v61 = [v45 colorAttachments];
  v62 = [v61 objectAtIndexedSubscript:0];
  [v62 setPixelFormat:v60];

  [v45 setRasterSampleCount:*(a1 + 64)];
  v63 = *(a1 + 32);
  v91 = 0;
  v64 = [v63 newRenderPipelineStateWithDescriptor:v45 error:&v91];
  v65 = v91;
  if (v64)
  {
    v66 = objc_loadWeakRetained((a1 + 48));
    [v66 setPostTessellationPipelineState:v64];

    v67 = *(a1 + 32);
    v90 = 0;
    v68 = [v67 newComputePipelineStateWithFunction:v23 error:&v90];
    v65 = v90;
    if (v68)
    {
      v69 = objc_loadWeakRetained((a1 + 48));
      [v69 setComputePipelineState:v68];

      v70 = *(a1 + 40);
      if (v70)
      {
        v71 = *(v70 + 16);
LABEL_45:
        v71();
        goto LABEL_46;
      }

      goto LABEL_46;
    }

    v88 = v24;
    v78 = v23;
    if (ARShouldUseLogTypeError_onceToken_2 != -1)
    {
      __56__ARCoachingGlyphRenderer_prepareWithCompletionHandler___block_invoke_cold_1();
    }

    v79 = ARShouldUseLogTypeError_internalOSVersion_2;
    v80 = _ARLogCoaching_6();
    v81 = v80;
    if (v79 == 1)
    {
      v23 = v78;
      if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      *buf = 138412290;
      v94 = v65;
      v82 = "Failed to create compute pipeline state object. error %@";
      v83 = v81;
      v84 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v23 = v78;
      if (!os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        goto LABEL_43;
      }

      *buf = 138412290;
      v94 = v65;
      v82 = "Error: Failed to create compute pipeline state object. error %@";
      v83 = v81;
      v84 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_23D3AE000, v83, v84, v82, buf, 0xCu);
LABEL_43:

    v86 = *(a1 + 40);
    v24 = v88;
    if (v86)
    {
      v71 = *(v86 + 16);
      goto LABEL_45;
    }

LABEL_46:

    goto LABEL_47;
  }

  if (ARShouldUseLogTypeError_onceToken_2 != -1)
  {
    __56__ARCoachingGlyphRenderer_prepareWithCompletionHandler___block_invoke_cold_1();
  }

  v72 = ARShouldUseLogTypeError_internalOSVersion_2;
  v73 = _ARLogCoaching_6();
  v74 = v73;
  if (v72 == 1)
  {
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 138412290;
    v94 = v65;
    v75 = "Failed to create post tessellation render pipeline state object. error %@";
    v76 = v74;
    v77 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      goto LABEL_38;
    }

    *buf = 138412290;
    v94 = v65;
    v75 = "Error: Failed to create post tessellation render pipeline state object. error %@";
    v76 = v74;
    v77 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_23D3AE000, v76, v77, v75, buf, 0xCu);
LABEL_38:

  v85 = *(a1 + 40);
  if (v85)
  {
    (*(v85 + 16))(v85, v65);
  }

LABEL_47:

  v87 = *MEMORY[0x277D85DE8];
}

- (void)snapStateChanged
{
  [(ARCoachingMetalSplineData *)self->_splineData recordState];
  [(ARCoachingAnimTime *)self->_time absoluteTime];
  [(ARCoachingAnimTime *)self->_time setStartTime:?];
  v3 = 1.0;
  if ([(ARCoachingGlyphState *)self->_state snapState]== 1)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  [(ARFLSpring *)self->_planeResolveSpring setTarget:v4];
  isVertical = [(ARCoachingGlyphState *)self->_state isVertical];
  v6 = 1.0;
  if (!isVertical)
  {
    snapState = [(ARCoachingGlyphState *)self->_state snapState];
    v6 = 1.0;
    if (snapState != 3)
    {
      v6 = 0.0;
    }
  }

  [(ARFLSpring *)self->_verticalResolvingSpring setTarget:v6];
  if ([(ARCoachingGlyphState *)self->_state snapState])
  {
    if ([(ARCoachingGlyphState *)self->_state snapState]== 4)
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }
  }

  [(ARFLSpring *)self->_cubeResolveSpring setTarget:v3];
  snapState2 = [(ARCoachingGlyphState *)self->_state snapState];
  v9 = 1.0;
  if (!snapState2)
  {
    v9 = 0.0;
  }

  [(ARFLSpring *)self->_alphaSpring setTarget:v9];
  if ([(ARCoachingGlyphState *)self->_state snapState]== 1)
  {
    [(ARFLSpring *)self->_planeResolveSpring target];
    [(ARFLSpring *)self->_planeResolveSpring setValue:?];
    [(ARFLSpring *)self->_verticalResolvingSpring target];
    [(ARFLSpring *)self->_verticalResolvingSpring setValue:?];
    [(ARFLSpring *)self->_cubeResolveSpring target];
    [(ARFLSpring *)self->_cubeResolveSpring setValue:?];
    [(ARFLSpring *)self->_alphaSpring target];
    [(ARFLSpring *)self->_alphaSpring setValue:?];
    time = self->_time;

    [(ARCoachingAnimTime *)time setAbsoluteTime:0.0];
  }
}

- (void)quaternionTargetChanged
{
  state = self->_state;
  if (state)
  {
    [(ARCoachingGlyphState *)state quaternionTarget];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  rotationSpring = self->_rotationSpring;
  v10 = v12;
  v11 = v13;
  [(ARCoachingQuaternionSpring *)rotationSpring setTarget:&v10];
  v5 = *&self->_anon_a0[16];
  v6 = self->_rotationSpring;
  v10 = *self->_anon_a0;
  v11 = v5;
  [(ARCoachingQuaternionSpring *)v6 setValue:&v10];
  if ([(ARCoachingGlyphState *)self->_state snapState]== 1)
  {
    v7 = self->_rotationSpring;
    if (v7)
    {
      [(ARCoachingQuaternionSpring *)v7 target];
      v7 = self->_rotationSpring;
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    v10 = v8;
    v11 = v9;
    [(ARCoachingQuaternionSpring *)v7 setValue:&v10, v8, v9];
  }
}

- (void)scaleTargetChanged
{
  state = self->_state;
  if (state)
  {
    [(ARCoachingGlyphState *)state scaleTarget];
    v5 = v16;
    v6 = vextq_s8(v5, v5, 8uLL).u64[0];
    *&v2 = v17;
  }

  else
  {
    v5.i64[0] = 0;
    v6 = 0;
    *&v2 = 0;
  }

  scaleSpring = self->_scaleSpring;
  v5.i64[1] = v6;
  v14 = v5;
  v15 = v2;
  [(ARCoachingSpringDouble3 *)scaleSpring setTarget:&v14];
  if ([(ARCoachingGlyphState *)self->_state snapState]== 1)
  {
    v9 = self->_scaleSpring;
    if (v9)
    {
      [(ARCoachingSpringDouble3 *)v9 target];
      v10 = v12;
      v11 = vextq_s8(v10, v10, 8uLL).u64[0];
      *&v8 = v13;
      v9 = self->_scaleSpring;
    }

    else
    {
      v10.i64[0] = 0;
      v11 = 0;
      *&v8 = 0;
    }

    v10.i64[1] = v11;
    v14 = v10;
    v15 = v8;
    [(ARCoachingSpringDouble3 *)v9 setValue:&v14];
  }
}

- (void)topPlaneTranslationTargetChanged
{
  state = self->_state;
  if (state)
  {
    [(ARCoachingGlyphState *)state topPlaneTranslationTarget];
    v5 = v16;
    v6 = vextq_s8(v5, v5, 8uLL).u64[0];
    *&v2 = v17;
  }

  else
  {
    v5.i64[0] = 0;
    v6 = 0;
    *&v2 = 0;
  }

  topPlaneTranslationSpring = self->_topPlaneTranslationSpring;
  v5.i64[1] = v6;
  v14 = v5;
  v15 = v2;
  [(ARCoachingSpringDouble3 *)topPlaneTranslationSpring setTarget:&v14];
  if ([(ARCoachingGlyphState *)self->_state snapState]== 1)
  {
    v9 = self->_topPlaneTranslationSpring;
    if (v9)
    {
      [(ARCoachingSpringDouble3 *)v9 target];
      v10 = v12;
      v11 = vextq_s8(v10, v10, 8uLL).u64[0];
      *&v8 = v13;
      v9 = self->_topPlaneTranslationSpring;
    }

    else
    {
      v10.i64[0] = 0;
      v11 = 0;
      *&v8 = 0;
    }

    v10.i64[1] = v11;
    v14 = v10;
    v15 = v8;
    [(ARCoachingSpringDouble3 *)v9 setValue:&v14];
  }
}

- (void)bottomPlaneTranslationTargetChanged
{
  state = self->_state;
  if (state)
  {
    [(ARCoachingGlyphState *)state bottomPlaneTranslationTarget];
    v5 = v16;
    v6 = vextq_s8(v5, v5, 8uLL).u64[0];
    *&v2 = v17;
  }

  else
  {
    v5.i64[0] = 0;
    v6 = 0;
    *&v2 = 0;
  }

  bottomPlaneTranslationSpring = self->_bottomPlaneTranslationSpring;
  v5.i64[1] = v6;
  v14 = v5;
  v15 = v2;
  [(ARCoachingSpringDouble3 *)bottomPlaneTranslationSpring setTarget:&v14];
  if ([(ARCoachingGlyphState *)self->_state snapState]== 1)
  {
    v9 = self->_bottomPlaneTranslationSpring;
    if (v9)
    {
      [(ARCoachingSpringDouble3 *)v9 target];
      v10 = v12;
      v11 = vextq_s8(v10, v10, 8uLL).u64[0];
      *&v8 = v13;
      v9 = self->_bottomPlaneTranslationSpring;
    }

    else
    {
      v10.i64[0] = 0;
      v11 = 0;
      *&v8 = 0;
    }

    v10.i64[1] = v11;
    v14 = v10;
    v15 = v8;
    [(ARCoachingSpringDouble3 *)v9 setValue:&v14];
  }
}

- (void)generateTexturesWithSize:(CGSize)size
{
  if (size.width != *MEMORY[0x277CBF3A8] || size.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    if (self->_sampleCount == 1)
    {
      msaaTex = self->_msaaTex;
      self->_msaaTex = 0;
    }

    else
    {
      v9 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:self->_pixelFormat width:size.width height:size.height mipmapped:0];
      [v9 setUsage:4];
      [v9 setTextureType:4];
      [v9 setSampleCount:self->_sampleCount];
      [v9 setStorageMode:3];
      v7 = [(MTLDevice *)self->_device newTextureWithDescriptor:v9];
      v8 = self->_msaaTex;
      self->_msaaTex = v7;

      msaaTex = v9;
    }
  }
}

- (void)computeTesselationFactorsForCommandBuffer:(id)buffer
{
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"Compute Command Encoder"];
  [computeCommandEncoder pushDebugGroup:@"Compute Tessellation Factors"];
  [computeCommandEncoder setComputePipelineState:self->_computePipelineState];
  [computeCommandEncoder setBytes:&self->_edgeFactor length:4 atIndex:0];
  [computeCommandEncoder setBytes:&self->_insideFactor length:4 atIndex:1];
  tessellationFactorsBuffer = [(ARCoachingMetalSplineData *)self->_splineData tessellationFactorsBuffer];
  [computeCommandEncoder setBuffer:tessellationFactorsBuffer offset:0 atIndex:2];

  patchUserDataBuffer = [(ARCoachingMetalSplineData *)self->_splineData patchUserDataBuffer];
  [computeCommandEncoder setBuffer:patchUserDataBuffer offset:0 atIndex:3];

  v9 = vdupq_n_s64(1uLL);
  v10 = 1;
  patchCount = [(ARCoachingMetalSplineData *)self->_splineData patchCount];
  v8 = v9;
  [computeCommandEncoder dispatchThreadgroups:&v9 threadsPerThreadgroup:&patchCount];
  [computeCommandEncoder popDebugGroup];
  [computeCommandEncoder endEncoding];
}

- (void)renderPostTessellationInDrawable:(id)drawable withCommandBuffer:(id)buffer
{
  drawableCopy = drawable;
  bufferCopy = buffer;
  [(ARFLSpring *)self->_planeResolveSpring value];
  v120 = v8;
  [(ARFLSpring *)self->_cubeResolveSpring value];
  _Q1.f64[0] = v120;
  _Q1.f64[1] = v10;
  v11 = vmaxnm_f32(vcvt_f32_f64(_Q1), 0);
  __asm { FMOV            V1.2S, #1.0 }

  v121 = vminnm_f32(v11, *&_Q1.f64[0]);
  v131 = v121;
  [(ARFLSpring *)self->_alphaSpring value];
  *&v16 = fmin(fmax(v16, 0.0), 1.0);
  v130 = LODWORD(v16);
  v17 = vmlaq_lane_f32(*&self->_anon_1b0[16], vsubq_f32(*&self->_anon_170[16], *&self->_anon_1b0[16]), v121, 1);
  *self->_anon_130 = vmlaq_lane_f32(*self->_anon_1b0, vsubq_f32(*self->_anon_170, *self->_anon_1b0), v121, 1);
  *&self->_anon_130[16] = v17;
  v18 = vmlaq_lane_f32(*&self->_anon_1b0[48], vsubq_f32(*&self->_anon_170[48], *&self->_anon_1b0[48]), v121, 1);
  *&self->_anon_130[32] = vmlaq_lane_f32(*&self->_anon_1b0[32], vsubq_f32(*&self->_anon_170[32], *&self->_anon_1b0[32]), v121, 1);
  *&self->_anon_130[48] = v18;
  renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
  sampleCount = self->_sampleCount;
  if (sampleCount >= 2)
  {
    msaaTex = self->_msaaTex;
  }

  else
  {
    msaaTex = [drawableCopy texture];
  }

  colorAttachments = [renderPassDescriptor colorAttachments];
  v23 = [colorAttachments objectAtIndexedSubscript:0];
  [v23 setTexture:msaaTex];

  if (sampleCount <= 1)
  {
  }

  v24 = self->_sampleCount;
  if (v24 < 2)
  {
    texture = 0;
  }

  else
  {
    texture = [drawableCopy texture];
  }

  v26 = v121.f32[1];
  colorAttachments2 = [renderPassDescriptor colorAttachments];
  v28 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v28 setResolveTexture:texture];

  if (v24 >= 2)
  {
  }

  colorAttachments3 = [renderPassDescriptor colorAttachments];
  v30 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v30 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  if (self->_sampleCount <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  colorAttachments4 = [renderPassDescriptor colorAttachments];
  v33 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v33 setStoreAction:v31];

  colorAttachments5 = [renderPassDescriptor colorAttachments];
  v35 = [colorAttachments5 objectAtIndexedSubscript:0];
  [v35 setLoadAction:2];

  v36 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];
  [v36 setLabel:@"Render Command Encoder"];
  [v36 pushDebugGroup:@"Dots"];
  [(ARFLSpring *)self->_verticalResolvingSpring value];
  v109 = v37;
  [(ARFLSpring *)self->_verticalResolvingSpring value];
  v38 = 1.0 - v121.f32[1];
  v40 = v39 * v38;
  *&v41 = 0.5 * (v39 * v38);
  [ARCoachingTransformations translate:COERCE_DOUBLE(v41)];
  v114 = v43;
  v117 = v42;
  v110 = v45;
  v111 = v44;
  instanceTransforms = [(ARCoachingMetalSplineData *)self->_splineData instanceTransforms];
  firstObject = [instanceTransforms firstObject];
  [firstObject transform];
  v48 = 0;
  v49 = *self->_anon_f0;
  v50 = *&self->_anon_f0[16];
  v51 = *&self->_anon_f0[32];
  v52 = *&self->_anon_f0[48];
  v132 = v53;
  v133 = v54;
  v134 = v55;
  v135 = v56;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  do
  {
    *(&v136 + v48) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, COERCE_FLOAT(*(&v132 + v48))), v50, *(&v132 + v48), 1), v51, *(&v132 + v48), 2), v52, *(&v132 + v48), 3);
    v48 += 16;
  }

  while (v48 != 64);
  v104 = v137;
  v106 = v136;
  v100 = v139;
  v102 = v138;

  v57 = 0;
  v132 = v117;
  v133 = v114;
  v134 = v111;
  v135 = v110;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  do
  {
    *(&v136 + v57) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v106, COERCE_FLOAT(*(&v132 + v57))), v104, *(&v132 + v57), 1), v102, *(&v132 + v57), 2), v100, *(&v132 + v57), 3);
    v57 += 16;
  }

  while (v57 != 64);
  v58 = 0;
  v59 = *self->_anon_130;
  v60 = *&self->_anon_130[16];
  v61 = *&self->_anon_130[32];
  v62 = *&self->_anon_130[48];
  v132 = v136;
  v133 = v137;
  v134 = v138;
  v135 = v139;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  do
  {
    *(&v136 + v58) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(*(&v132 + v58))), v60, *(&v132 + v58), 1), v61, *(&v132 + v58), 2), v62, *(&v132 + v58), 3);
    v58 += 16;
  }

  while (v58 != 64);
  v105 = *v138.i64;
  v107 = *v139.i64;
  v101 = *&v136;
  v103 = *v137.i64;
  v128 = 0uLL;
  v129 = 0;
  v136 = kARCoachingDotsRenderParamsHorizontal;
  v137.i64[0] = 1077936128;
  v132 = kARCoachingDotsRenderParamsVertical;
  v133.i64[0] = 0x3E20D97C40200000;
  *&v63 = ARCoachingDotsRenderParamsLerp(&v136, &v132, &v128, v40);
  dotsRenderer = self->_dotsRenderer;
  device = self->_device;
  [(ARFLSpring *)self->_cubeResolveSpring value];
  v67 = 1.0 - v66;
  [(ARFLSpring *)self->_planeResolveSpring value];
  *&v67 = v67 * v68;
  [(ARCoachingAnimTime *)self->_time absoluteTime];
  v136 = v128;
  v137.i64[0] = v129;
  LODWORD(v69) = LODWORD(v67);
  [(ARCoachingDotsRenderer *)dotsRenderer encode:device renderCommandEncoder:v36 mvp:&v136 visibility:v101 renderParams:v103 time:v105, v107, v69, v70];
  [v36 popDebugGroup];
  if ([(ARCoachingGlyphState *)self->_state isVertical]&& [(ARCoachingGlyphState *)self->_state snapState]== 4)
  {
    v71 = xmmword_23D3DC450;
  }

  else
  {
    v71 = xmmword_23D3DC0C0;
  }

  v108 = v71;
  [(ARCoachingBasicSpring *)self->_orientationSpring output];
  v73 = __sincosf_stret(v72 * 0.5);
  v74 = 0;
  v75.f64[0] = v109;
  v76 = vmulq_n_f32(v108, v73.__sinval);
  v76.i32[3] = LODWORD(v73.__cosval);
  v75.f64[1] = 1.0 - v109;
  v77 = vmulq_f64(v75, xmmword_23D3DC8C0);
  v126 = 0u;
  v127 = 0u;
  *v77.f32 = vcvt_f32_f64(v77);
  v124 = 0u;
  v125 = 0u;
  v78 = vaddq_f32(v110, vmulq_lane_f32(v77, v121, 1));
  v79 = *self->_anon_f0;
  v80 = *&self->_anon_f0[16];
  v81 = *&self->_anon_f0[32];
  v82 = *&self->_anon_f0[48];
  v132 = v117;
  v133 = v114;
  v134 = v111;
  v135 = v78;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  do
  {
    *(&v136 + v74) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, COERCE_FLOAT(*(&v132 + v74))), v80, *(&v132 + v74), 1), v81, *(&v132 + v74), 2), v82, *(&v132 + v74), 3);
    v74 += 16;
  }

  while (v74 != 64);
  v118 = v137;
  v122 = v136;
  v112 = v139;
  v115 = v138;
  *&v83 = simd_matrix4x4(v76);
  v84 = 0;
  v132 = v83;
  v133 = v85;
  v134 = v86;
  v135 = v87;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  do
  {
    *(&v136 + v84) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, COERCE_FLOAT(*(&v132 + v84))), v118, *(&v132 + v84), 1), v115, *(&v132 + v84), 2), v112, *(&v132 + v84), 3);
    v84 += 16;
  }

  while (v84 != 64);
  v119 = v137;
  v123 = v136;
  v113 = v139;
  v116 = v138;
  v88 = v38 + (v26 * 0.85);
  *&v88 = v88;
  [ARCoachingTransformations scale:*vdupq_lane_s32(*&v88, 0).i64];
  v89 = 0;
  v132 = v90;
  v133 = v91;
  v134 = v92;
  v135 = v93;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  do
  {
    *(&v136 + v89) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v123, COERCE_FLOAT(*(&v132 + v89))), v119, *(&v132 + v89), 1), v116, *(&v132 + v89), 2), v113, *(&v132 + v89), 3);
    v89 += 16;
  }

  while (v89 != 64);
  v124 = v136;
  v125 = v137;
  v126 = v138;
  v127 = v139;
  [v36 pushDebugGroup:@"Post Tessellation and Render"];
  [v36 setRenderPipelineState:self->_postTessellationPipelineState];
  controlPointsBuffer = [(ARCoachingMetalSplineData *)self->_splineData controlPointsBuffer];
  [v36 setVertexBuffer:controlPointsBuffer offset:0 atIndex:0];

  instanceBuffer = [(ARCoachingMetalSplineData *)self->_splineData instanceBuffer];
  [v36 setVertexBuffer:instanceBuffer offset:0 atIndex:1];

  [v36 setVertexBytes:&v124 length:64 atIndex:2];
  [v36 setVertexBytes:self->_anon_130 length:64 atIndex:3];
  [v36 setVertexBytes:&self->_strokeWeight length:4 atIndex:4];
  [v36 setVertexBytes:&v131 length:8 atIndex:5];
  [v36 setVertexBytes:&v130 length:4 atIndex:6];
  tessellationFactorsBuffer = [(ARCoachingMetalSplineData *)self->_splineData tessellationFactorsBuffer];
  [v36 setTessellationFactorBuffer:tessellationFactorsBuffer offset:0 instanceStride:0];

  patchCount = [(ARCoachingMetalSplineData *)self->_splineData patchCount];
  controlPointIndicesBuffer = [(ARCoachingMetalSplineData *)self->_splineData controlPointIndicesBuffer];
  instanceTransforms2 = [(ARCoachingMetalSplineData *)self->_splineData instanceTransforms];
  [v36 drawIndexedPatches:4 patchStart:0 patchCount:patchCount patchIndexBuffer:0 patchIndexBufferOffset:0 controlPointIndexBuffer:controlPointIndicesBuffer controlPointIndexBufferOffset:0 instanceCount:objc_msgSend(instanceTransforms2 baseInstance:{"count"), 0}];

  [v36 popDebugGroup];
  [v36 endEncoding];
}

- (void)updateAngularVelocity
{
  [(ARCoachingGlyphRenderer *)self a_vel];
  *&v4 = v3 * 0.97;
  [(ARCoachingGlyphRenderer *)self setA_vel:v4];
  [(ARCoachingGlyphRenderer *)self a_vel];
  self->_angularVelocity.angle = self->_angularVelocity.angle + v5 + (self->_angularVelocity.angle + v5) * -0.01;
  if ([(ARCoachingGlyphState *)self->_state isVertical]&& [(ARCoachingGlyphState *)self->_state snapState]== 4)
  {
    v7 = 0.0;
    *&v8 = 1.0;
  }

  else
  {
    *&v8 = 0;
    v7 = 1.0;
  }

  *&v6 = 0;
  *(&v8 + 1) = v7;
  *&self->_anon_c8[8] = v8;
  *&self->_anon_c8[24] = v6;
}

- (void)stepSprings:(double)springs
{
  [(ARCoachingQuaternionSpring *)self->_rotationSpring stepWithDeltaTime:?];
  [(ARCoachingSpringDouble3 *)self->_scaleSpring stepWithDeltaTime:springs];
  [(ARCoachingSpringDouble3 *)self->_topPlaneTranslationSpring stepWithDeltaTime:springs];
  [(ARCoachingSpringDouble3 *)self->_bottomPlaneTranslationSpring stepWithDeltaTime:springs];
  [(ARFLSpring *)self->_cubeResolveSpring step:springs];
  [(ARFLSpring *)self->_planeResolveSpring step:springs];
  [(ARFLSpring *)self->_verticalResolvingSpring step:springs];
  [(ARFLSpring *)self->_alphaSpring step:springs];
  [(ARCoachingBasicSpring *)self->_orientationSpring stepWithDeltaTime:springs];
  rotationSpring = self->_rotationSpring;
  if (rotationSpring)
  {
    [(ARCoachingQuaternionSpring *)rotationSpring value];
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  *self->_anon_a0 = v6;
  *&self->_anon_a0[16] = v7;
}

- (void)resetSprings
{
  rotationSpring = self->_rotationSpring;
  if (rotationSpring)
  {
    [(ARCoachingQuaternionSpring *)rotationSpring target];
    rotationSpring = self->_rotationSpring;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v24 = v26;
  v25 = v27;
  [(ARCoachingQuaternionSpring *)rotationSpring setValue:&v24];
  scaleSpring = self->_scaleSpring;
  if (scaleSpring)
  {
    [(ARCoachingSpringDouble3 *)scaleSpring target];
    v6 = v22;
    v7 = vextq_s8(v6, v6, 8uLL).u64[0];
    *&v4 = v23;
    scaleSpring = self->_scaleSpring;
  }

  else
  {
    v6.i64[0] = 0;
    v7 = 0;
    *&v4 = 0;
  }

  v6.i64[1] = v7;
  v24 = v6;
  v25 = v4;
  [(ARCoachingSpringDouble3 *)scaleSpring setValue:&v24];
  topPlaneTranslationSpring = self->_topPlaneTranslationSpring;
  if (topPlaneTranslationSpring)
  {
    [(ARCoachingSpringDouble3 *)topPlaneTranslationSpring target];
    v10 = v20;
    v11 = vextq_s8(v10, v10, 8uLL).u64[0];
    *&v8 = v21;
    topPlaneTranslationSpring = self->_topPlaneTranslationSpring;
  }

  else
  {
    v10.i64[0] = 0;
    v11 = 0;
    *&v8 = 0;
  }

  v10.i64[1] = v11;
  v24 = v10;
  v25 = v8;
  [(ARCoachingSpringDouble3 *)topPlaneTranslationSpring setValue:&v24];
  bottomPlaneTranslationSpring = self->_bottomPlaneTranslationSpring;
  if (bottomPlaneTranslationSpring)
  {
    [(ARCoachingSpringDouble3 *)bottomPlaneTranslationSpring target];
    v14 = v18;
    v15 = vextq_s8(v14, v14, 8uLL).u64[0];
    *&v12 = v19;
    bottomPlaneTranslationSpring = self->_bottomPlaneTranslationSpring;
  }

  else
  {
    v14.i64[0] = 0;
    v15 = 0;
    *&v12 = 0;
  }

  v14.i64[1] = v15;
  v24 = v14;
  v25 = v12;
  [(ARCoachingSpringDouble3 *)bottomPlaneTranslationSpring setValue:&v24];
  [(ARFLSpring *)self->_cubeResolveSpring target];
  [(ARFLSpring *)self->_cubeResolveSpring setValue:?];
  [(ARFLSpring *)self->_planeResolveSpring target];
  [(ARFLSpring *)self->_planeResolveSpring setValue:?];
  [(ARFLSpring *)self->_verticalResolvingSpring target];
  [(ARFLSpring *)self->_verticalResolvingSpring setValue:?];
  [(ARFLSpring *)self->_alphaSpring target];
  [(ARFLSpring *)self->_alphaSpring setValue:?];
  v16 = self->_rotationSpring;
  if (v16)
  {
    [(ARCoachingQuaternionSpring *)v16 value];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v17 = v25;
  *self->_anon_a0 = v24;
  *&self->_anon_a0[16] = v17;
}

- (void)computeRotation:(double)rotation
{
  v5 = *self->_anon_a0;
  v6 = *&self->_anon_a0[16];
  anon_a0 = self->_anon_a0;
  if (vaddvq_f64(vaddq_f64(vmulq_f64(v5, v5), vmulq_f64(v6, v6))) >= 0.0)
  {
    v25 = *self->_anon_a0;
    v26 = v6;
    v23 = v5;
    v24 = v6;
    v7 = &v25;
    v8 = &v23;
  }

  else
  {
    v25 = vnegq_f64(v5);
    v26 = vnegq_f64(v6);
    v23 = v5;
    v24 = v6;
    v7 = &v23;
    v8 = &v25;
  }

  _simd_slerp_internal(v7, v8, v22);
  v9 = v22[1];
  *anon_a0 = v22[0];
  *(anon_a0 + 1) = v9;
  v20 = *&self->_anon_c8[8];
  v21 = *&self->_anon_c8[24];
  v11 = __sincos_stret(self->_angularVelocity.angle * 0.5);
  v10.f64[0] = v11.__sinval;
  v12 = vmulq_n_f64(v20, v11.__sinval);
  *&v10.f64[0] = *&vmulq_f64(v21, v10);
  v10.f64[1] = v11.__cosval;
  v13 = *self->_anon_a0;
  v14 = vnegq_f64(v12);
  v15 = vextq_s8(v10, vnegq_f64(v10), 8uLL);
  *&v16 = simd_matrix4x4(vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v12, *&self->_anon_a0[16], 1), vextq_s8(v14, v12, 8uLL), *&self->_anon_a0[16]), vmlaq_n_f64(vmulq_laneq_f64(v10, v13, 1), v15, v13.f64[0]))), vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v10, *&self->_anon_a0[16], 1), v15, *&self->_anon_a0[16]), vmlaq_n_f64(vmulq_laneq_f64(v14, v13, 1), vextq_s8(v12, v14, 8uLL), v13.f64[0]))));
  *self->_anon_f0 = v16;
  *&self->_anon_f0[16] = v17;
  *&self->_anon_f0[32] = v18;
  *&self->_anon_f0[48] = v19;
}

- (void)drawWithTimeDelta:(double)delta drawable:(id)drawable commandBuffer:(id)buffer
{
  drawableCopy = drawable;
  bufferCopy = buffer;
  [(ARCoachingGlyphRenderer *)self stepSprings:delta];
  time = self->_time;
  if ([(ARCoachingGlyphState *)self->_state snapState]== 1)
  {
    deltaCopy = 0.0;
  }

  else
  {
    deltaCopy = delta;
  }

  [(ARCoachingAnimTime *)time absoluteTime];
  [(ARCoachingAnimTime *)time setAbsoluteTime:v10 + deltaCopy];
  [(ARFLSpring *)self->_cubeResolveSpring value];
  v12 = fmin(fmax(v11, 0.0), 1.0);
  [(ARCoachingAnimTime *)self->_time oscillatingTime];
  *&v14 = v12 * v13 * 0.05;
  *v14.i32 = *v14.i32;
  v67 = v14;
  splineData = self->_splineData;
  [(ARCoachingSpringDouble3 *)self->_scaleSpring floatValue];
  [(ARCoachingMetalSplineData *)splineData computeInstanceTransformScale:*vaddq_f32(v16, vdupq_lane_s32(v67, 0)).i64];
  v17 = self->_splineData;
  [(ARCoachingSpringDouble3 *)self->_bottomPlaneTranslationSpring floatValue];
  [(ARCoachingMetalSplineData *)v17 computeInstanceTransformTranslate:0 index:?];
  v18 = self->_splineData;
  [(ARCoachingSpringDouble3 *)self->_topPlaneTranslationSpring floatValue];
  [(ARCoachingMetalSplineData *)v18 computeInstanceTransformTranslate:1 index:?];
  v19 = self->_splineData;
  [(ARCoachingSpringDouble3 *)self->_bottomPlaneTranslationSpring floatValue];
  [(ARCoachingMetalSplineData *)v19 computeInstanceTransformTranslate:2 index:?];
  v20 = self->_splineData;
  [(ARCoachingSpringDouble3 *)self->_bottomPlaneTranslationSpring floatValue];
  [(ARCoachingMetalSplineData *)v20 computeInstanceTransformTranslate:3 index:?];
  v21 = self->_splineData;
  [(ARCoachingSpringDouble3 *)self->_bottomPlaneTranslationSpring floatValue];
  [(ARCoachingMetalSplineData *)v21 computeInstanceTransformTranslate:4 index:?];
  v22 = self->_splineData;
  [(ARCoachingSpringDouble3 *)self->_bottomPlaneTranslationSpring floatValue];
  [(ARCoachingMetalSplineData *)v22 computeInstanceTransformTranslate:5 index:?];
  v23 = self->_splineData;
  shapes = [(ARCoachingMetalSplineData *)v23 shapes];
  controlPoints = [shapes controlPoints];
  v63 = [controlPoints objectAtIndexedSubscript:1];
  controlPoints2 = [v63 controlPoints];
  shapes2 = [(ARCoachingMetalSplineData *)self->_splineData shapes];
  controlPoints3 = [shapes2 controlPoints];
  v60 = [controlPoints3 objectAtIndexedSubscript:1];
  numControlPoints = [v60 numControlPoints];
  shapes3 = [(ARCoachingMetalSplineData *)self->_splineData shapes];
  controlPoints4 = [shapes3 controlPoints];
  v26 = [controlPoints4 objectAtIndexedSubscript:0];
  controlPoints5 = [v26 controlPoints];
  shapes4 = [(ARCoachingMetalSplineData *)self->_splineData shapes];
  controlPoints6 = [shapes4 controlPoints];
  v30 = [controlPoints6 objectAtIndexedSubscript:0];
  numControlPoints2 = [v30 numControlPoints];
  [(ARCoachingAnimTime *)self->_time oscillatingTime];
  *&v32 = v32;
  v33 = [(ARCoachingMetalSplineData *)v23 shapeBlendWithStart:controlPoints2 startCount:numControlPoints end:controlPoints5 endCount:numControlPoints2 t:v32];

  v34 = self->_splineData;
  shapes5 = [(ARCoachingMetalSplineData *)v34 shapes];
  controlPoints7 = [shapes5 controlPoints];
  v35 = [controlPoints7 objectAtIndexedSubscript:2];
  controlPoints8 = [v35 controlPoints];
  shapes6 = [(ARCoachingMetalSplineData *)self->_splineData shapes];
  controlPoints9 = [shapes6 controlPoints];
  v39 = [controlPoints9 objectAtIndexedSubscript:2];
  numControlPoints3 = [v39 numControlPoints];
  controlPoints10 = [v33 controlPoints];
  v69 = v33;
  numControlPoints4 = [v33 numControlPoints];
  [(ARFLSpring *)self->_cubeResolveSpring value];
  *&v43 = v43;
  [(ARCoachingMetalSplineData *)v34 computeShapeBlendWithStart:controlPoints8 startCount:numControlPoints3 end:controlPoints10 endCount:numControlPoints4 t:v43];

  [(ARCoachingGlyphRenderer *)self updateAngularVelocity];
  [(ARCoachingGlyphRenderer *)self computeRotation:delta];
  if (self->_dirty_tesselation_factors)
  {
    [(ARCoachingGlyphRenderer *)self computeTesselationFactorsForCommandBuffer:bufferCopy];
    self->_dirty_tesselation_factors = 0;
  }

  [(ARCoachingGlyphRenderer *)self renderPostTessellationInDrawable:drawableCopy withCommandBuffer:bufferCopy];
  [(ARFLSpring *)self->_cubeResolveSpring value];
  v45 = v44;
  [(ARFLSpring *)self->_verticalResolvingSpring value];
  v46 = 1.0 - v45;
  v48 = (1.0 - v45) * v47;
  v76 = 0uLL;
  v77 = 0;
  v74 = kARCoachingDeviceRenderParamsHorizontal;
  v75 = 3233808384;
  v72 = kARCoachingDeviceRenderParamsVertical;
  v73 = 3262119936;
  ARCoachingDeviceRenderParamsLerp(&v74, &v72, &v76, v48);
  [(ARCoachingAnimTime *)self->_time absoluteTime];
  v50 = v48 * -0.2 + 0.2 + v49;
  [(ARFLSpring *)self->_planeResolveSpring value];
  v52 = v46 * v51;
  deviceController = self->_deviceController;
  layer = self->_layer;
  v74 = v76;
  v75 = v77;
  [(ARCoachingDeviceController *)deviceController update:layer visibility:&v74 layer:v50 renderParams:v52];
  *&v74 = v76;
  DWORD2(v74) = DWORD2(v76);
  v55 = (v48 * -0.0199 + 0.9999) * *(&v76 + 3);
  parallaxDeviceController = self->_parallaxDeviceController;
  v57 = self->_layer;
  *(&v74 + 3) = v55;
  v75 = v77;
  [(ARCoachingDeviceController *)parallaxDeviceController update:v57 visibility:&v74 layer:v50 renderParams:v52];
}

- (void)resizeIfNeeded:(id)needed
{
  neededCopy = needed;
  texture = [neededCopy texture];
  width = [texture width];
  texture2 = [neededCopy texture];
  height = [texture2 height];

  if (self->_lastDrawableSize.width != width || self->_lastDrawableSize.height != height)
  {
    self->_lastDrawableSize.width = width;
    self->_lastDrawableSize.height = height;
    kdebug_trace();
    [(ARCoachingGlyphRenderer *)self generateTexturesWithSize:width, height];
    v9 = width / height;
    v10 = width / height;
    *&v9 = v10 * -1.5;
    *&v11 = v10 * 1.5;
    LODWORD(v12) = -1.5;
    LODWORD(v13) = 1.5;
    LODWORD(v14) = 4.0;
    [ARCoachingTransformations ortho2d:v9 right:v11 bottom:v12 top:v13 near:0.0 far:v14];
    v45 = v16;
    v47 = v15;
    v41 = v18;
    v43 = v17;
    [ARCoachingTransformations lookAt:0.0 center:0.0 up:?];
    v19 = 0;
    v50 = v20;
    v51 = v21;
    v52 = v22;
    v53 = v23;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    do
    {
      *(&v54 + v19) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, COERCE_FLOAT(*(&v50 + v19))), v45, *(&v50 + v19), 1), v43, *(&v50 + v19), 2), v41, *(&v50 + v19), 3);
      v19 += 16;
    }

    while (v19 != 64);
    HIDWORD(v24) = DWORD1(v54);
    v25 = v55;
    v26 = v56;
    v27 = v57;
    *self->_anon_170 = v54;
    *&self->_anon_170[16] = v25;
    *&self->_anon_170[32] = v26;
    *&self->_anon_170[48] = v27;
    LODWORD(v24) = 1118437376;
    LODWORD(v26) = 981668463;
    LODWORD(v27) = 5.0;
    *&v25 = v10;
    [ARCoachingTransformations perspective_fov:v24 aspect:*&v25 near:*&v26 far:*&v27];
    v46 = v29;
    v48 = v28;
    v42 = v31;
    v44 = v30;
    v32 = ARCoachingGlyphPerspectiveEye();
    [ARCoachingTransformations lookAt:v32 center:ARCoachingGlyphPerspectiveCenter() up:0.0078125];
    v33 = 0;
    v50 = v34;
    v51 = v35;
    v52 = v36;
    v53 = v37;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    do
    {
      *(&v54 + v33) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v48, COERCE_FLOAT(*(&v50 + v33))), v46, *(&v50 + v33), 1), v44, *(&v50 + v33), 2), v42, *(&v50 + v33), 3);
      v33 += 16;
    }

    while (v33 != 64);
    v38 = v55;
    v39 = v56;
    v40 = v57;
    *self->_anon_1b0 = v54;
    *&self->_anon_1b0[16] = v38;
    *&self->_anon_1b0[32] = v39;
    *&self->_anon_1b0[48] = v40;
    self->_dirty_tesselation_factors = 1;
  }
}

- (void)resetData
{
  v3 = [ARCoachingBasicSpring alloc];
  LODWORD(v4) = 1128792064;
  LODWORD(v5) = 22.0;
  v6 = [(ARCoachingBasicSpring *)v3 initWithTension:v4 friction:v5];
  orientationSpring = self->_orientationSpring;
  self->_orientationSpring = v6;

  v8 = objc_alloc_init(ARCoachingQuaternionSpring);
  rotationSpring = self->_rotationSpring;
  self->_rotationSpring = v8;

  state = self->_state;
  if (state)
  {
    [(ARCoachingGlyphState *)state computeQuaternionTarget];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v11 = self->_rotationSpring;
  v14 = v16;
  v15 = v17;
  [(ARCoachingQuaternionSpring *)v11 setTarget:&v14];
  v12 = self->_rotationSpring;
  if (v12)
  {
    [(ARCoachingQuaternionSpring *)v12 target];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v13 = v15;
  *self->_anon_a0 = v14;
  *&self->_anon_a0[16] = v13;
}

- (void)restartAnimation
{
  [(ARCoachingGlyphRenderer *)self resetData];
  [(ARCoachingGlyphRenderer *)self resetSprings];

  [(ARCoachingGlyphRenderer *)self resetAnimationTime:0.0];
}

- (void)resetAnimationTime:(double)time
{
  v5 = objc_alloc_init(ARCoachingAnimTime);
  time = self->_time;
  self->_time = v5;

  v7 = self->_time;

  [(ARCoachingAnimTime *)v7 setAbsoluteTime:time];
}

@end