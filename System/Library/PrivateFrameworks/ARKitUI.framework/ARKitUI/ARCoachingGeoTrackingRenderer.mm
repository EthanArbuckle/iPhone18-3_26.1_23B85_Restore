@interface ARCoachingGeoTrackingRenderer
- (ARCoachingGeoTrackingRenderer)initWithLayer:(id)a3 device:(id)a4 pixelFormat:(unint64_t)a5 sampleCount:(int)a6 deviceMaskImage:(id)a7;
- (BOOL)loadOutlineModelWith:(id *)a3;
- (void)drawBuildingOutlineWithTimeDelta:(double)a3 drawable:(id)a4 commandBuffer:(id)a5;
- (void)drawDeviceWithTimeDelta:(double)a3 drawable:(id)a4 commandBuffer:(id)a5;
- (void)drawWithTimeDelta:(double)a3 drawable:(id)a4 commandBuffer:(id)a5;
- (void)prepareWithCompletionHandler:(id)a3;
- (void)resetAnimationTime:(double)a3;
- (void)resizeIfNeeded:(id)a3;
- (void)updateFrameStateWithTimeDelta:(double)a3;
@end

@implementation ARCoachingGeoTrackingRenderer

- (ARCoachingGeoTrackingRenderer)initWithLayer:(id)a3 device:(id)a4 pixelFormat:(unint64_t)a5 sampleCount:(int)a6 deviceMaskImage:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v41.receiver = self;
  v41.super_class = ARCoachingGeoTrackingRenderer;
  v15 = [(ARCoachingGeoTrackingRenderer *)&v41 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_device, a4);
    v16->_pixelFormat = a5;
    objc_storeStrong(&v16->_layer, a3);
    v17 = objc_alloc_init(ARCoachingGlyphState);
    state = v16->_state;
    v16->_state = v17;

    v19 = objc_alloc_init(ARCoachingAnimTime);
    time = v16->_time;
    v16->_time = v19;

    v21 = [[ARCoachingDeviceController alloc] initWithDeviceMaskImage:v14 geoTrackingMode:1];
    deviceController = v16->_deviceController;
    v16->_deviceController = v21;

    [(ARCoachingDeviceController *)v16->_deviceController setLayerParent:v16->_layer];
    [(CAMetalLayer *)v16->_layer setAllowsGroupBlending:1];
    v23 = ARCreateNonFixedPriorityDispatchQueue();
    queue = v16->_queue;
    v16->_queue = v23;

    v25 = [[ARCoachingStateSpring alloc] initWithValue:0.0];
    cubeResolveSpring = v16->_cubeResolveSpring;
    v16->_cubeResolveSpring = v25;

    [(ARFLSpring *)v16->_cubeResolveSpring parameters];
    v28 = v27;
    [(ARFLSpring *)v16->_cubeResolveSpring parameters];
    ARFLSpringParametersMake([(ARFLSpring *)v16->_cubeResolveSpring parameters], v28, v29, 0.699999988);
    [(ARFLSpring *)v16->_cubeResolveSpring setParameters:?];
    [(ARFLSpring *)v16->_cubeResolveSpring setTarget:0.0];
    [(ARFLSpring *)v16->_cubeResolveSpring setValue:0.0];
    v30 = [[ARCoachingStateSpring alloc] initWithValue:0.0];
    verticalResolvingSpring = v16->_verticalResolvingSpring;
    v16->_verticalResolvingSpring = v30;

    [(ARFLSpring *)v16->_verticalResolvingSpring parameters];
    [(ARFLSpring *)v16->_verticalResolvingSpring setParameters:?];
    [(ARFLSpring *)v16->_verticalResolvingSpring setTarget:0.0];
    [(ARFLSpring *)v16->_verticalResolvingSpring setValue:0.0];
    v32 = [ARCoachingBasicSpring alloc];
    LODWORD(v33) = 1128792064;
    LODWORD(v34) = 22.0;
    v35 = [(ARCoachingBasicSpring *)v32 initWithTension:v33 friction:v34];
    orientationSpring = v16->_orientationSpring;
    v16->_orientationSpring = v35;

    v37 = objc_alloc_init(MEMORY[0x277CD6D60]);
    [v37 setDepthCompareFunction:1];
    [v37 setDepthWriteEnabled:1];
    v38 = [(MTLDevice *)v16->_device newDepthStencilStateWithDescriptor:v37];
    depthState = v16->_depthState;
    v16->_depthState = v38;
  }

  return v16;
}

- (void)prepareWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__ARCoachingGeoTrackingRenderer_prepareWithCompletionHandler___block_invoke;
  v7[3] = &unk_278BCD430;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __62__ARCoachingGeoTrackingRenderer_prepareWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 loadOutlineModelWith:&v5];
  v3 = v5;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)drawWithTimeDelta:(double)a3 drawable:(id)a4 commandBuffer:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(ARCoachingGeoTrackingRenderer *)self drawDeviceWithTimeDelta:v9 drawable:v8 commandBuffer:a3];
  [(ARCoachingGeoTrackingRenderer *)self drawBuildingOutlineWithTimeDelta:v9 drawable:v8 commandBuffer:a3];
}

- (void)drawDeviceWithTimeDelta:(double)a3 drawable:(id)a4 commandBuffer:(id)a5
{
  time = self->_time;
  [(ARCoachingAnimTime *)time absoluteTime:a4];
  [(ARCoachingAnimTime *)time setAbsoluteTime:v8 + a3];
  v10 = kARCoachingDeviceRenderParamsHorizontalGeoTracking;
  v11 = 3233808384;
  deviceController = self->_deviceController;
  [(ARCoachingAnimTime *)self->_time absoluteTime:kARCoachingDeviceRenderParamsHorizontalGeoTracking];
  [ARCoachingDeviceController update:"update:visibility:layer:renderParams:" visibility:self->_layer layer:&v10 renderParams:?];
}

- (void)drawBuildingOutlineWithTimeDelta:(double)a3 drawable:(id)a4 commandBuffer:(id)a5
{
  v35 = a4;
  v8 = a5;
  [(ARCoachingGeoTrackingRenderer *)self updateFrameStateWithTimeDelta:a3];
  v9 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  v10 = [v35 texture];
  v11 = [v9 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript:0];
  [v12 setTexture:v10];

  v13 = [v9 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript:0];
  [v14 setStoreAction:1];

  v15 = [v9 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript:0];
  [v16 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  v17 = [v9 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript:0];
  [v18 setLoadAction:2];

  v19 = [v9 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript:0];
  [v20 setStoreAction:1];

  depthTexture = self->_depthTexture;
  v22 = [v9 depthAttachment];
  [v22 setTexture:depthTexture];

  v23 = [v9 depthAttachment];
  [v23 setLoadAction:2];

  v24 = [v9 depthAttachment];
  [v24 setClearDepth:1.0];

  v25 = [v9 depthAttachment];
  [v25 setDepthResolveFilter:0];

  v26 = [v8 renderCommandEncoderWithDescriptor:v9];
  [v26 setLabel:@"Drawable Render Encoder"];
  [v26 setRenderPipelineState:self->_inflatedHullPipeline];
  [v26 setDepthStencilState:self->_depthState];
  [v26 setVertexBuffer:self->_contentVertexPositions offset:0 atIndex:0];
  [v26 setVertexBuffer:self->_contentVertexGenerics offset:0 atIndex:1];
  [v26 setVertexBytes:self->_anon_d0 length:64 atIndex:2];
  [v26 setCullMode:1];
  if ([(NSMutableArray *)self->_contentIndexBuffers count])
  {
    v27 = 0;
    do
    {
      v28 = [(NSMutableArray *)self->_contentIndexBuffers objectAtIndexedSubscript:v27];
      v29 = [v28 length] >> 2;

      v30 = [(NSMutableArray *)self->_contentIndexBuffers objectAtIndexedSubscript:v27];
      [v26 drawIndexedPrimitives:3 indexCount:v29 indexType:1 indexBuffer:v30 indexBufferOffset:0];

      ++v27;
    }

    while (v27 < [(NSMutableArray *)self->_contentIndexBuffers count]);
  }

  [v26 setCullMode:2];
  [v26 setRenderPipelineState:self->_blockColorPipeline];
  if ([(NSMutableArray *)self->_contentIndexBuffers count])
  {
    v31 = 0;
    do
    {
      v32 = [(NSMutableArray *)self->_contentIndexBuffers objectAtIndexedSubscript:v31];
      v33 = [v32 length] >> 2;

      v34 = [(NSMutableArray *)self->_contentIndexBuffers objectAtIndexedSubscript:v31];
      [v26 drawIndexedPrimitives:3 indexCount:v33 indexType:1 indexBuffer:v34 indexBufferOffset:0];

      ++v31;
    }

    while (v31 < [(NSMutableArray *)self->_contentIndexBuffers count]);
  }

  [v26 endEncoding];
}

- (void)resizeIfNeeded:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_depthTexture)
  {
    v6 = [v4 texture];
    v7 = [v6 width];
    if (v7 == [(MTLTexture *)self->_depthTexture width])
    {
      v8 = [v5 texture];
      v9 = [v8 height];
      v10 = [(MTLTexture *)self->_depthTexture height];

      if (v9 == v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v11 = [v5 texture];
  v12 = [v11 width];
  v13 = [v5 texture];
  v14 = [v13 height];

  kdebug_trace();
  v15 = _ARLogCoaching_0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v26 = 138544130;
    v27 = v17;
    v28 = 2048;
    v29 = self;
    v30 = 2048;
    v31 = v12;
    v32 = 2048;
    v33 = v14;
    _os_log_impl(&dword_23D3AE000, v15, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Creating new depth texture because the drawable size has changed to %.0fx%.0f", &v26, 0x2Au);
  }

  v18 = v14;
  v19 = v12 / v18;
  v20 = tanf(0.56723);
  LODWORD(v21) = 0;
  *(&v21 + 1) = 1.0 / v20;
  *self->_anon_90 = COERCE_UNSIGNED_INT((1.0 / v20) / v19);
  *&self->_anon_90[16] = v21;
  *&self->_anon_90[32] = xmmword_23D3DC090;
  *&self->_anon_90[48] = xmmword_23D3DC0A0;
  v22 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:252 width:v12 height:v14 mipmapped:0];
  [v22 setStorageMode:2];
  [v22 setUsage:4];
  v23 = [(MTLDevice *)self->_device newTextureWithDescriptor:v22];
  depthTexture = self->_depthTexture;
  self->_depthTexture = v23;

  [(MTLTexture *)self->_depthTexture setLabel:@"Depth texture"];
LABEL_9:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)resetAnimationTime:(double)a3
{
  v5 = objc_alloc_init(ARCoachingAnimTime);
  time = self->_time;
  self->_time = v5;

  v7 = self->_time;

  [(ARCoachingAnimTime *)v7 setAbsoluteTime:a3];
}

- (BOOL)loadOutlineModelWith:(id *)a3
{
  v131 = *MEMORY[0x277D85DE8];
  v5 = ARKitUIBundle();
  v6 = [v5 URLForResource:@"OutlineModel" withExtension:@"obj"];
  v7 = [[GTMeshData alloc] initWithURL:v6 error:a3];
  v8 = v7;
  if (!*a3)
  {
    v123 = a3;
    v17 = 16 * [(GTMeshData *)v7 vertexCount];
    v18 = 20 * [(GTMeshData *)v8 vertexCount];
    v19 = [(MTLDevice *)self->_device newBufferWithLength:v17 options:0];
    contentVertexPositions = self->_contentVertexPositions;
    self->_contentVertexPositions = v19;

    v21 = [(MTLDevice *)self->_device newBufferWithLength:v18 options:0];
    contentVertexGenerics = self->_contentVertexGenerics;
    self->_contentVertexGenerics = v21;

    v23 = [(MTLBuffer *)self->_contentVertexPositions contents];
    v24 = [(MTLBuffer *)self->_contentVertexGenerics contents];
    v25 = [(GTMeshData *)v8 vertexData];
    if ([(GTMeshData *)v8 vertexCount])
    {
      v26 = 0;
      v27 = (v25 + 24);
      v28 = (v24 + 16);
      do
      {
        *(v23 + 16 * v26) = *(v27 - 6);
        *(v28 - 2) = *(v27 - 2);
        *(v28 - 1) = *(v27 - 1);
        v29 = *v27;
        v27 += 12;
        *v28 = v29;
        v28 += 5;
        ++v26;
      }

      while (v26 < [(GTMeshData *)v8 vertexCount]);
    }

    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    contentIndexBuffers = self->_contentIndexBuffers;
    self->_contentIndexBuffers = v30;

    v32 = [(GTMeshData *)v8 submeshes];
    v33 = [v32 allValues];
    v34 = [v33 count];

    if (v34)
    {
      v35 = 0;
      do
      {
        v36 = [(GTMeshData *)v8 submeshes];
        v37 = [v36 allValues];
        v38 = [v37 objectAtIndexedSubscript:v35];

        v39 = -[MTLDevice newBufferWithBytes:length:options:](self->_device, "newBufferWithBytes:length:options:", [v38 indexData], 4 * objc_msgSend(v38, "indexCount"), 0);
        [(NSMutableArray *)self->_contentIndexBuffers setObject:v39 atIndexedSubscript:v35];

        ++v35;
        v40 = [(GTMeshData *)v8 submeshes];
        v41 = [v40 allValues];
        v42 = [v41 count];
      }

      while (v35 < v42);
    }

    v11 = objc_alloc_init(MEMORY[0x277CD7090]);
    v43 = [v11 attributes];
    v44 = [v43 objectAtIndexedSubscript:0];
    [v44 setFormat:30];

    v45 = [v11 attributes];
    v46 = [v45 objectAtIndexedSubscript:0];
    [v46 setOffset:0];

    v47 = [v11 attributes];
    v48 = [v47 objectAtIndexedSubscript:0];
    [v48 setBufferIndex:0];

    v49 = [v11 attributes];
    v50 = [v49 objectAtIndexedSubscript:1];
    [v50 setFormat:30];

    v51 = [v11 attributes];
    v52 = [v51 objectAtIndexedSubscript:1];
    [v52 setOffset:8];

    v53 = [v11 attributes];
    v54 = [v53 objectAtIndexedSubscript:1];
    [v54 setBufferIndex:1];

    v55 = [v11 layouts];
    v56 = [v55 objectAtIndexedSubscript:0];
    [v56 setStride:16];

    v57 = [v11 layouts];
    v58 = [v57 objectAtIndexedSubscript:0];
    [v58 setStepRate:1];

    v59 = [v11 layouts];
    v60 = [v59 objectAtIndexedSubscript:0];
    [v60 setStepFunction:1];

    v61 = [v11 layouts];
    v62 = [v61 objectAtIndexedSubscript:1];
    [v62 setStride:20];

    v63 = [v11 layouts];
    v64 = [v63 objectAtIndexedSubscript:1];
    [v64 setStepRate:1];

    v65 = [v11 layouts];
    v66 = [v65 objectAtIndexedSubscript:1];
    [v66 setStepFunction:1];

    v67 = objc_opt_new();
    v68 = self->_device;
    v69 = ARKitUIBundle();
    v70 = [v69 URLForResource:@"default" withExtension:@"metallib"];
    v120 = v68;
    v122 = v6;
    if (v70)
    {
      v124 = 0;
      v71 = [(MTLDevice *)v68 newLibraryWithURL:v70 error:&v124];
      v72 = v124;
      [v71 setLabel:@"com.apple.arkit.coachinganimation.library"];
      if (!v72)
      {
        goto LABEL_37;
      }

      v73 = v5;
      if (ARShouldUseLogTypeError_onceToken != -1)
      {
        [ARCoachingGeoTrackingRenderer loadOutlineModelWith:];
      }

      v74 = ARShouldUseLogTypeError_internalOSVersion;
      v75 = _ARLogCoaching_0();
      v118 = v73;
      log = v75;
      if (v74 == 1)
      {
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v117 = [v72 localizedDescription];
          v76 = [v72 localizedFailureReason];
          v77 = [v72 localizedRecoverySuggestion];
          *buf = 138412802;
          v126 = v117;
          v127 = 2112;
          v128 = v76;
          v129 = 2112;
          v130 = v77;
          v78 = v77;
          v79 = "Error while loading metal library for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
          v80 = log;
          v81 = OS_LOG_TYPE_ERROR;
LABEL_31:
          _os_log_impl(&dword_23D3AE000, v80, v81, v79, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v117 = [v72 localizedDescription];
        v76 = [v72 localizedFailureReason];
        v89 = [v72 localizedRecoverySuggestion];
        *buf = 138412802;
        v126 = v117;
        v127 = 2112;
        v128 = v76;
        v129 = 2112;
        v130 = v89;
        v78 = v89;
        v79 = "Error: Error while loading metal library for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
        v80 = log;
        v81 = OS_LOG_TYPE_INFO;
        goto LABEL_31;
      }

      v5 = v118;
      goto LABEL_37;
    }

    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARCoachingGeoTrackingRenderer loadOutlineModelWith:];
    }

    v84 = ARShouldUseLogTypeError_internalOSVersion;
    v85 = _ARLogCoaching_0();
    v72 = v85;
    if (v84 == 1)
    {
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v86 = "Failed to find metal library for coaching animations";
        v87 = v72;
        v88 = OS_LOG_TYPE_ERROR;
LABEL_35:
        _os_log_impl(&dword_23D3AE000, v87, v88, v86, buf, 2u);
      }
    }

    else if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v86 = "Error: Failed to find metal library for coaching animations";
      v87 = v72;
      v88 = OS_LOG_TYPE_INFO;
      goto LABEL_35;
    }

    v71 = 0;
LABEL_37:

    v90 = [v71 newFunctionWithName:@"inflatedInverseHullVertexShader"];
    v91 = [v71 newFunctionWithName:@"solidWhiteFragmentShader"];
    [v67 setVertexDescriptor:v11];
    v121 = v90;
    [v67 setVertexFunction:v90];
    [v67 setFragmentFunction:v91];
    pixelFormat = self->_pixelFormat;
    v93 = [v67 colorAttachments];
    v94 = [v93 objectAtIndexedSubscript:0];
    [v94 setPixelFormat:pixelFormat];

    [v67 setDepthAttachmentPixelFormat:252];
    [v67 setLabel:@"Inflated Hull Pipeline"];
    v95 = [(MTLDevice *)self->_device newRenderPipelineStateWithDescriptor:v67 error:v123];
    inflatedHullPipeline = self->_inflatedHullPipeline;
    self->_inflatedHullPipeline = v95;

    if (self->_inflatedHullPipeline)
    {
      [v67 setLabel:@"Block Color Pipeline"];
      v97 = [v71 newFunctionWithName:@"simplePositionVertexShader"];
      [v67 setVertexFunction:v97];

      v98 = [v71 newFunctionWithName:@"solidBlackFragmentShader"];
      [v67 setFragmentFunction:v98];

      v99 = [(MTLDevice *)self->_device newRenderPipelineStateWithDescriptor:v67 error:v123];
      blockColorPipeline = self->_blockColorPipeline;
      self->_blockColorPipeline = v99;

      v6 = v122;
      if (self->_blockColorPipeline)
      {
        v83 = 1;
        v101 = v121;
LABEL_56:

        goto LABEL_57;
      }

      if (ARShouldUseLogTypeError_onceToken != -1)
      {
        [ARCoachingGeoTrackingRenderer loadOutlineModelWith:];
      }

      v105 = ARShouldUseLogTypeError_internalOSVersion;
      v106 = _ARLogGeneral();
      v104 = v106;
      if (v105 == 1)
      {
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
LABEL_49:
          v107 = objc_opt_class();
          v108 = NSStringFromClass(v107);
          v109 = *v123;
          *buf = 138543874;
          v126 = v108;
          v127 = 2048;
          v128 = self;
          v129 = 2112;
          v130 = v109;
          v110 = "%{public}@ <%p>: Failed to create content render pipeline state, error: %@.";
          v111 = v104;
          v112 = OS_LOG_TYPE_ERROR;
LABEL_54:
          _os_log_impl(&dword_23D3AE000, v111, v112, v110, buf, 0x20u);
        }

LABEL_55:
        v101 = v121;

        v83 = 0;
        goto LABEL_56;
      }

      if (!os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
      {
        goto LABEL_55;
      }
    }

    else
    {
      v6 = v122;
      if (ARShouldUseLogTypeError_onceToken != -1)
      {
        [ARCoachingGeoTrackingRenderer loadOutlineModelWith:];
      }

      v102 = ARShouldUseLogTypeError_internalOSVersion;
      v103 = _ARLogGeneral();
      v104 = v103;
      if (v102 == 1)
      {
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_49;
        }

        goto LABEL_55;
      }

      if (!os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
      {
        goto LABEL_55;
      }
    }

    v113 = objc_opt_class();
    v108 = NSStringFromClass(v113);
    v114 = *v123;
    *buf = 138543874;
    v126 = v108;
    v127 = 2048;
    v128 = self;
    v129 = 2112;
    v130 = v114;
    v110 = "Error: %{public}@ <%p>: Failed to create content render pipeline state, error: %@.";
    v111 = v104;
    v112 = OS_LOG_TYPE_INFO;
    goto LABEL_54;
  }

  if (ARShouldUseLogTypeError_onceToken != -1)
  {
    [ARCoachingGeoTrackingRenderer loadOutlineModelWith:];
  }

  v9 = ARShouldUseLogTypeError_internalOSVersion;
  v10 = _ARLogGeneral();
  v11 = v10;
  if (v9 == 1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v126 = v13;
      v127 = 2048;
      v128 = self;
      v14 = "%{public}@ <%p>: Loading the outline model failed.";
      v15 = v11;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_22:
      _os_log_impl(&dword_23D3AE000, v15, v16, v14, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v82 = objc_opt_class();
    v13 = NSStringFromClass(v82);
    *buf = 138543618;
    v126 = v13;
    v127 = 2048;
    v128 = self;
    v14 = "Error: %{public}@ <%p>: Loading the outline model failed.";
    v15 = v11;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_22;
  }

  v83 = 0;
LABEL_57:

  v115 = *MEMORY[0x277D85DE8];
  return v83;
}

- (void)updateFrameStateWithTimeDelta:(double)a3
{
  v4 = self->_ftime + a3;
  self->_ftime = v4;
  v5 = (v4 * 0.25) * 3.14159265 + (v4 * 0.25) * 3.14159265;
  *v6.i64 = simd_matrix4x4(_PromotedConst);
  v45 = v6;
  v46 = v7;
  v47 = v8;
  v43 = v9;
  ARMatrix4x4FromRotationAndTranslation();
  v10 = 0;
  v48 = v11;
  v49 = v12;
  v50 = v13;
  v51 = v14;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  do
  {
    *(&v52 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*(&v48 + v10))), v46, *&v48.f32[v10 / 4], 1), v47, *(&v48 + v10), 2), v43, *(&v48 + v10), 3);
    v10 += 16;
  }

  while (v10 != 64);
  v15 = sinf(v5);
  v42 = v53;
  v44 = v52;
  v40 = v55;
  v41 = v54;
  v16 = __sincosf_stret(((v15 * -0.083333) + -2.15) * 0.5);
  v17 = vmulq_n_f32(xmmword_23D3DC0C0, v16.__sinval);
  v17.i32[3] = LODWORD(v16.__cosval);
  *v18.i64 = simd_matrix4x4(v17);
  v38 = v19;
  v39 = v18;
  v36 = v21;
  v37 = v20;
  ARMatrix4x4FromRotationAndTranslation();
  v22 = 0;
  v48 = v23;
  v49 = v24;
  v50 = v25;
  v51 = v26;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  do
  {
    *(&v52 + v22) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, COERCE_FLOAT(*(&v48 + v22))), v38, *&v48.f32[v22 / 4], 1), v37, *(&v48 + v22), 2), v36, *(&v48 + v22), 3);
    v22 += 16;
  }

  while (v22 != 64);
  v27 = 0;
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  do
  {
    *(&v52 + v27) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*(&v48 + v27))), v42, *&v48.f32[v27 / 4], 1), v41, *(&v48 + v27), 2), v40, *(&v48 + v27), 3);
    v27 += 16;
  }

  while (v27 != 64);
  v28 = 0;
  v29 = *self->_anon_90;
  v30 = *&self->_anon_90[16];
  v31 = *&self->_anon_90[32];
  v32 = *&self->_anon_90[48];
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  do
  {
    *(&v52 + v28) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v48 + v28))), v30, *&v48.f32[v28 / 4], 1), v31, *(&v48 + v28), 2), v32, *(&v48 + v28), 3);
    v28 += 16;
  }

  while (v28 != 64);
  v33 = v53;
  v34 = v54;
  v35 = v55;
  *self->_anon_d0 = v52;
  *&self->_anon_d0[16] = v33;
  *&self->_anon_d0[32] = v34;
  *&self->_anon_d0[48] = v35;
}

@end