@interface ARSCNCompositor
+ (id)mattingTechniqueDual;
+ (id)mattingWithDepthAndDualTechnique;
+ (id)techniqueDictionaryWithName:(id)name;
- (ARSCNCompositor)initWithView:(id)view mode:(int64_t)mode algorithm:(int64_t)algorithm;
- (CGSize)currentSize;
- (float32x2_t)orientedVerticesWithResolution:(double)resolution;
- (void)dealloc;
- (void)encodeAlphaResampleToCommandBuffer:(id)buffer resolution:(CGSize)resolution input:(id)input output:(id)output;
- (void)encodeDepthResampleToCommandBuffer:(id)buffer resolution:(CGSize)resolution input:(id)input output:(id)output;
- (void)executeOcclusionDepthStencilCallback:(id)callback;
- (void)executeOverlayMatteCallbackDual:(id)dual;
- (void)setCurrentSize:(CGSize)size;
- (void)setErosionRadius:(unint64_t)radius;
- (void)setFilterOffset:(double)offset;
- (void)setFilterScale:(double)scale;
- (void)setUncertaintyRadius:(unint64_t)radius;
@end

@implementation ARSCNCompositor

- (ARSCNCompositor)initWithView:(id)view mode:(int64_t)mode algorithm:(int64_t)algorithm
{
  v84 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v76.receiver = self;
  v76.super_class = ARSCNCompositor;
  v9 = [(ARSCNCompositor *)&v76 init];
  [(ARSCNCompositor *)v9 setCompositorAlgorithm:algorithm];
  if (!v9)
  {
    goto LABEL_25;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ARSCNCompositor_initWithView_mode_algorithm___block_invoke;
  block[3] = &unk_278BCD458;
  v10 = v9;
  v74 = v10;
  v11 = viewCopy;
  v75 = v11;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v10->_mode = mode;
  session = [v11 session];
  configuration = [session configuration];
  compositorAlgorithm = v10->_compositorAlgorithm;
  v13 = objc_alloc(MEMORY[0x277CE52F0]);
  device = [v11 device];
  v15 = [v13 initWithDevice:device matteResolution:0 useSmoothing:compositorAlgorithm == 1];
  matteGenerator = v10->_matteGenerator;
  v10->_matteGenerator = v15;

  mode = v10->_mode;
  if (mode)
  {
    if (mode != 1)
    {
      goto LABEL_8;
    }

    v18 = +[ARSCNCompositor mattingTechniqueDual];
  }

  else
  {
    v18 = +[ARSCNCompositor mattingWithDepthAndDualTechnique];
  }

  technique = v10->_technique;
  v10->_technique = v18;

  if (!v10->_mode)
  {
    v10->_disableReverseZ = [v11 usesReverseZ] ^ 1;
    v20 = v10->_technique;
    v21 = [MEMORY[0x277CCABB0] numberWithBool:?];
    [(SCNTechnique *)v20 setObject:v21 forKeyedSubscript:@"disableReverseZ_sym"];
  }

LABEL_8:
  videoFormat = [configuration videoFormat];
  v23 = videoFormat;
  if (videoFormat)
  {
    [videoFormat imageResolution];
    v25.f64[1] = v24;
    __asm { FMOV            V1.2D, #0.25 }

    v31 = vmulq_f64(v25, _Q1);
  }

  else
  {
    v31 = xmmword_23D3DC140;
  }

  v10->_workingResolution = v31;
  [v11 currentViewport];
  [(ARSCNCompositor *)v10 setCurrentSize:v32, v33];
  workingScaleFactor = v10->_workingScaleFactor;
  if (workingScaleFactor == 0.0)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSCNCompositor initWithView:mode:algorithm:];
    }

    v56 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v57 = _ARLogGeneral();
    v58 = v57;
    if (v56 == 1)
    {
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        *location = 138544130;
        *&location[4] = v60;
        v78 = 2048;
        v79 = v10;
        v80 = 2048;
        modeCopy2 = mode;
        v82 = 2048;
        algorithmCopy2 = algorithm;
        _os_log_impl(&dword_23D3AE000, v58, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: ARSCNCompositor (%li, %li) initialization failed. Matting is not set up properly.", location, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      *location = 138544130;
      *&location[4] = v62;
      v78 = 2048;
      v79 = v10;
      v80 = 2048;
      modeCopy2 = mode;
      v82 = 2048;
      algorithmCopy2 = algorithm;
      _os_log_impl(&dword_23D3AE000, v58, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: ARSCNCompositor (%li, %li) initialization failed. Matting is not set up properly.", location, 0x2Au);
    }
  }

  else
  {
    objc_initWeak(location, v10);
    v66 = [(SCNTechnique *)v10->_technique passForName:@"ComputeCoefficientsPassDual"];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __47__ARSCNCompositor_initWithView_mode_algorithm___block_invoke_40;
    v71[3] = &unk_278BCD480;
    objc_copyWeak(&v72, location);
    [v66 setExecutionHandler:v71];
    if (!v10->_mode)
    {
      v35 = [(SCNTechnique *)v10->_technique passForName:@"ComputeDepthStencilPass"];
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __47__ARSCNCompositor_initWithView_mode_algorithm___block_invoke_2;
      v69[3] = &unk_278BCD480;
      objc_copyWeak(&v70, location);
      [v35 setExecutionHandler:v69];
      objc_destroyWeak(&v70);
    }

    v36 = objc_storeWeak(&v10->_view, v11);
    device2 = [v11 device];
    device = v10->_device;
    v10->_device = device2;

    v39 = ARKitUIBundle();
    v40 = [v39 URLForResource:@"default" withExtension:@"metallib"];

    v41 = [(MTLDevice *)v10->_device newLibraryWithURL:v40 error:0];
    mattingLibrary = v10->_mattingLibrary;
    v10->_mattingLibrary = v41;

    [(SCNTechnique *)v10->_technique setLibrary:v10->_mattingLibrary];
    v43 = v10->_technique;
    WeakRetained = objc_loadWeakRetained(&v10->_view);
    [WeakRetained setTechnique:v43];

    v45 = [(MTLLibrary *)v10->_mattingLibrary newFunctionWithName:@"resample_v"];
    v46 = [(MTLLibrary *)v10->_mattingLibrary newFunctionWithName:@"resample_f"];
    v47 = objc_alloc_init(MEMORY[0x277CD6F78]);
    [v47 setVertexFunction:v45];
    [v47 setFragmentFunction:v46];
    colorAttachments = [v47 colorAttachments];
    v49 = [colorAttachments objectAtIndexedSubscript:0];
    [v49 setPixelFormat:10];

    v50 = [(MTLDevice *)v10->_device newRenderPipelineStateWithDescriptor:v47 error:0];
    resampleML = v10->_resampleML;
    v10->_resampleML = v50;

    colorAttachments2 = [v47 colorAttachments];
    v53 = [colorAttachments2 objectAtIndexedSubscript:0];
    [v53 setPixelFormat:25];

    [v47 setFragmentFunction:v46];
    v54 = [(MTLDevice *)v10->_device newRenderPipelineStateWithDescriptor:v47 error:0];
    resampleDepthML = v10->_resampleDepthML;
    v10->_resampleDepthML = v54;

    objc_destroyWeak(&v72);
    objc_destroyWeak(location);
  }

  if (workingScaleFactor == 0.0)
  {
    v63 = 0;
    goto LABEL_27;
  }

LABEL_25:
  v63 = v9;
LABEL_27:

  v64 = *MEMORY[0x277D85DE8];
  return v63;
}

void __47__ARSCNCompositor_initWithView_mode_algorithm___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 40) window];
  v2 = [v3 windowScene];
  *(*(a1 + 32) + 144) = [v2 interfaceOrientation];
}

void __47__ARSCNCompositor_initWithView_mode_algorithm___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained executeOverlayMatteCallbackDual:v3];
}

void __47__ARSCNCompositor_initWithView_mode_algorithm___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained executeOcclusionDepthStencilCallback:v3];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  technique = [WeakRetained technique];
  technique = self->_technique;

  if (technique == technique)
  {
    v6 = objc_loadWeakRetained(&self->_view);
    [v6 setTechnique:0];
  }

  v7.receiver = self;
  v7.super_class = ARSCNCompositor;
  [(ARSCNCompositor *)&v7 dealloc];
}

- (void)setUncertaintyRadius:(unint64_t)radius
{
  if (radius <= 1)
  {
    radius = 1;
  }

  self->_uncertaintyRadius = radius;
  matteGenerator = self->_matteGenerator;
  if (matteGenerator)
  {
    [(ARMatteGenerator *)matteGenerator setUncertaintyRadius:?];
  }
}

- (void)setErosionRadius:(unint64_t)radius
{
  self->_erodeRadius = radius;
  matteGenerator = self->_matteGenerator;
  if (matteGenerator)
  {
    [(ARMatteGenerator *)matteGenerator setErosionRadius:?];
  }
}

- (void)setFilterScale:(double)scale
{
  self->_filterScale = scale;
  technique = self->_technique;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [SCNTechnique setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setFilterOffset:(double)offset
{
  self->_filterOffset = offset;
  technique = self->_technique;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [SCNTechnique setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setCurrentSize:(CGSize)size
{
  if (size.width * size.height > 0.0)
  {
    if (size.width <= size.height)
    {
      width = size.width;
    }

    else
    {
      width = size.height;
    }

    if (size.width <= size.height)
    {
      size.width = size.height;
    }

    self->_currentSize.width = width;
    self->_currentSize.height = size.width;
    v5 = size.width;
    height = self->_workingResolution.width;
    if (height <= self->_workingResolution.height)
    {
      height = self->_workingResolution.height;
    }

    v7 = height / v5;
    self->_workingScaleFactor = v7;
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    if (!self->_mode)
    {
      v10 = v8;
      v9 = [(SCNTechnique *)self->_technique passForName:@"ComputeDepthStencilPass"];
      [v9 setValue:v10 forPassPropertyKey:1];

      v8 = v10;
    }
  }
}

- (void)encodeAlphaResampleToCommandBuffer:(id)buffer resolution:(CGSize)resolution input:(id)input output:(id)output
{
  height = resolution.height;
  width = resolution.width;
  bufferCopy = buffer;
  inputCopy = input;
  outputCopy = output;
  [(ARSCNCompositor *)self orientedVerticesWithResolution:width, height];
  v32 = v14;
  __asm { FMOV            V0.2S, #1.0 }

  renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
  colorAttachments = [renderPassDescriptor colorAttachments];
  v25 = [colorAttachments objectAtIndexedSubscript:0];
  [v25 setTexture:outputCopy];

  colorAttachments2 = [renderPassDescriptor colorAttachments];
  v27 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v27 setLoadAction:2];

  colorAttachments3 = [renderPassDescriptor colorAttachments];
  v29 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v29 setStoreAction:1];

  v30 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];
  [v30 setLabel:@"ML stencil resample"];
  [v30 setRenderPipelineState:self->_resampleML];
  [v30 setVertexBytes:&v32 length:32 atIndex:0];
  [v30 setVertexBytes:&v31 length:32 atIndex:1];
  [v30 setFragmentTexture:inputCopy atIndex:0];
  [v30 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v30 endEncoding];
}

- (void)encodeDepthResampleToCommandBuffer:(id)buffer resolution:(CGSize)resolution input:(id)input output:(id)output
{
  height = resolution.height;
  width = resolution.width;
  bufferCopy = buffer;
  inputCopy = input;
  outputCopy = output;
  [(ARSCNCompositor *)self orientedVerticesWithResolution:width, height];
  v32 = v14;
  __asm { FMOV            V0.2S, #1.0 }

  renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
  colorAttachments = [renderPassDescriptor colorAttachments];
  v25 = [colorAttachments objectAtIndexedSubscript:0];
  [v25 setTexture:outputCopy];

  colorAttachments2 = [renderPassDescriptor colorAttachments];
  v27 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v27 setLoadAction:2];

  colorAttachments3 = [renderPassDescriptor colorAttachments];
  v29 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v29 setStoreAction:1];

  v30 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];
  [v30 setLabel:@"ML estimated depth resample"];
  [v30 setRenderPipelineState:self->_resampleDepthML];
  [v30 setVertexBytes:&v32 length:32 atIndex:0];
  [v30 setVertexBytes:&v31 length:32 atIndex:1];
  [v30 setFragmentTexture:inputCopy atIndex:0];
  [v30 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v30 endEncoding];
}

- (float32x2_t)orientedVerticesWithResolution:(double)resolution
{
  v25[5] = *MEMORY[0x277D85DE8];
  v3 = self[25];
  v4 = self[26];
  v5 = *(self + 18);
  if (v5 == 3)
  {
    v5 = 4;
  }

  else
  {
    if (v5 != 4)
    {
      v6 = v3;
      v3 = v4;
      goto LABEL_7;
    }

    v5 = 3;
  }

  v6 = v4;
LABEL_7:
  memset(&v23, 0, sizeof(v23));
  ARCameraImageToViewTransform(v5, 0, &v23, a2, resolution, v6, v3);
  v7 = 0;
  v24[0] = 0uLL;
  v25[0] = 0;
  v24[1] = 0x3FF0000000000000uLL;
  __asm { FMOV            V0.2D, #1.0 }

  *&v25[1] = _Q0;
  v25[3] = 0x3FF0000000000000;
  v13 = *&v23.c;
  v14 = vdupq_lane_s64(*&v23.a, 0);
  v15 = vdupq_lane_s64(*&v23.tx, 0);
  __asm { FMOV            V4.2D, #2.0 }

  v17 = vdupq_lane_s64(*&v23.b, 0);
  __asm { FMOV            V6.2D, #-1.0 }

  v19 = vdupq_lane_s64(*&v23.ty, 0);
  do
  {
    v20 = &v24[v7];
    v26 = vld2q_f64(v20->f64);
    v27.val[0] = vmlaq_f64(_Q6, _Q4, vaddq_f64(v15, vmlaq_f64(vmulq_n_f64(v26.val[1], *&v13), v26.val[0], v14)));
    v27.val[1] = vmlaq_f64(_Q6, _Q4, vaddq_f64(v19, vmlaq_f64(vmulq_n_f64(v26.val[1], *(&v13 + 1)), v26.val[0], v17)));
    vst2q_f64(v20->f64, v27);
    v7 += 2;
  }

  while (v7 != 4);
  v21 = *MEMORY[0x277D85DE8];
  return vcvt_f32_f64(v24[0]);
}

- (void)executeOverlayMatteCallbackDual:(id)dual
{
  dualCopy = dual;
  kdebug_trace();
  commandBuffer = [dualCopy commandBuffer];
  v5 = [dualCopy outputTextureWithName:@"alpha_target"];
  currentFrame = self->_currentFrame;
  if (currentFrame)
  {
    v7 = [(ARMatteGenerator *)self->_matteGenerator generateMatteFromFrame:currentFrame commandBuffer:commandBuffer];
    alphaTexture = self->_alphaTexture;
    self->_alphaTexture = v7;

    [(ARSCNCompositor *)self encodeAlphaResampleToCommandBuffer:commandBuffer resolution:self->_alphaTexture input:v5 output:[(MTLTexture *)self->_alphaTexture width], [(MTLTexture *)self->_alphaTexture height]];
    kdebug_trace();
  }
}

- (void)executeOcclusionDepthStencilCallback:(id)callback
{
  callbackCopy = callback;
  commandBuffer = [callbackCopy commandBuffer];
  v6 = [callbackCopy outputTextureWithName:@"occluderDepthStencilDilated_target"];
  v7 = [(ARMatteGenerator *)self->_matteGenerator generateDilatedDepthFromFrame:self->_currentFrame commandBuffer:commandBuffer];
  -[ARSCNCompositor encodeDepthResampleToCommandBuffer:resolution:input:output:](self, "encodeDepthResampleToCommandBuffer:resolution:input:output:", commandBuffer, v7, v6, [v7 width], objc_msgSend(v7, "height"));
  WeakRetained = objc_loadWeakRetained(&self->_view);
  pointOfView = [WeakRetained pointOfView];
  camera = [pointOfView camera];
  v12 = camera;
  if (camera)
  {
    [camera projectionTransform];
    v13 = v32;
    v14.i32[0] = v33.i32[0];
    v15 = v32.i32[3];
    v16 = v33.i32[1];
    v18 = v34.i32[0];
    v17 = v35;
    v19 = vextq_s8(v35, vtrn2q_s32(v34, v35), 4uLL);
    v20 = vzip2q_s64(v34, v33);
    v11 = vextq_s8(v13, v13, 8uLL);
    *v11.i8 = vext_s8(*v32.i8, *v11.i8, 4uLL);
  }

  else
  {
    v17 = 0uLL;
    v11.i64[0] = 0;
    v16 = 0;
    v18 = 0;
    v14.i32[0] = 0;
    v15 = 0;
    v13 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  v21 = vextq_s8(vextq_s8(v13, v13, 4uLL), v11, 0xCuLL);
  v21.i32[3] = v15;
  v14.i32[1] = v16;
  v14.i64[1] = v20.i64[1];
  v22 = vextq_s8(v19, v20, 8uLL);
  v22.i32[0] = v18;
  v30 = v22;
  v31 = v21;
  v28 = v14;
  v29 = vextq_s8(vextq_s8(v17, v17, 4uLL), v19, 0xCuLL);

  if (self->_disableReverseZ)
  {
    v23 = v28;
    v24 = v29;
    v26 = v30;
    v25 = v31;
  }

  else
  {
    ARMatrixPerspectiveFlipZ();
  }

  v32 = v25;
  v33 = v23;
  v34 = v26;
  v35 = v24;
  v27 = [MEMORY[0x277CCAE60] valueWithSCNMatrix4:{&v32, *&v28, *&v29, *&v30, *&v31}];
  [(SCNTechnique *)self->_technique setValue:v27 forKey:@"projection_sym"];
}

+ (id)techniqueDictionaryWithName:(id)name
{
  nameCopy = name;
  v4 = ARKitCoreBundle();
  v5 = [v4 URLForResource:nameCopy withExtension:@"json" subdirectory:@"Matting"];

  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5];
  v9 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v9];

  return v7;
}

+ (id)mattingWithDepthAndDualTechnique
{
  v2 = [ARSCNCompositor techniqueDictionaryWithName:@"mattingWithDepthAndDualTechnique"];
  v3 = [MEMORY[0x277CDBB10] techniqueWithDictionary:v2];

  return v3;
}

+ (id)mattingTechniqueDual
{
  v2 = [ARSCNCompositor techniqueDictionaryWithName:@"mattingTechniqueDual"];
  v3 = [MEMORY[0x277CDBB10] techniqueWithDictionary:v2];

  return v3;
}

- (CGSize)currentSize
{
  width = self->_currentSize.width;
  height = self->_currentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end