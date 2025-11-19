@interface NTKPrideWeaveBarberQuad
- (BOOL)prepareForTime:(double)a3;
- (NTKPrideWeaveBarberQuad)init;
- (id)screenEdgeTextureForDevice:(id)a3 named:(id)a4;
- (int)generateCircleVerticesWithLevel:(int)a3 vertexBuffer:(id *)a4 indexBuffer:(id *)a5;
- (void)performOffscreenPassesWithCommandBuffer:(id)a3;
- (void)renderForDisplayWithEncoder:(id)a3;
- (void)setupForQuadView:(id)a3;
@end

@implementation NTKPrideWeaveBarberQuad

- (NTKPrideWeaveBarberQuad)init
{
  v34.receiver = self;
  v34.super_class = NTKPrideWeaveBarberQuad;
  v2 = [(NTKPrideWeaveBarberQuad *)&v34 init];
  if (v2)
  {
    v3 = +[CLKUIMetalResourceManager sharedDevice];
    device = v2->_device;
    v2->_device = v3;

    v2->_supportsNonuniformThreadgroups = [(MTLDevice *)v2->_device supportsFamily:1004];
    v2->_timeScale = 1.0;
    v2->_thickness = 1.0;
    v5 = +[CLKDevice currentDevice];
    v6 = [v5 deviceCategory];

    if (v6 <= 6)
    {
      v7 = flt_1B1BC[v6];
      LODWORD(v2->_maxWidthRect) = dword_1B1A0[v6];
      v2->_screenEdgeBuffer = v7;
    }

    v8 = +[CLKDevice currentDevice];
    [v8 screenBounds];
    v10 = v9;
    [v8 screenScale];
    *&v11 = v11 * v10;
    v2->_uniforms.screenHeight = *&v11;
    [v8 screenBounds];
    v13 = v12;
    [v8 screenScale];
    *&v14 = v14 * v13;
    v2->_uniforms.screenWidth = *&v14;
    v2->_uniforms.verticalSteps = 128;
    objc_initWeak(&location, v2);
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_D344;
    v31 = &unk_249C8;
    objc_copyWeak(&v32, &location);
    v15 = [NTKPromise promiseNamed:@"PrideWeaveRectTexturePromise" withBlock:&v28];
    rectTextureLoaderPromise = v2->_rectTextureLoaderPromise;
    v2->_rectTextureLoaderPromise = v15;

    [v8 screenBounds];
    v18 = v17;
    [v8 screenScale];
    v20 = v19;
    [v8 screenBounds];
    v22 = v21;
    [v8 screenScale];
    v24 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:20 width:(v18 * v20) height:(v22 * v23) mipmapped:0];
    [v24 setStorageMode:2];
    [v24 setUsage:5];
    v25 = [(MTLDevice *)v2->_device newTextureWithDescriptor:v24];
    combinedTexture = v2->_combinedTexture;
    v2->_combinedTexture = v25;

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)screenEdgeTextureForDevice:(id)a3 named:(id)a4
{
  v5 = a4;
  v6 = [a3 deviceCategory];
  if ((v6 - 3) > 3)
  {
    v7 = &stru_24DF0;
  }

  else
  {
    v7 = *(&off_249E8 + (v6 - 3));
  }

  v8 = [NSString stringWithFormat:@"%@%@.png", v5, v7];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [UIImage imageNamed:v8 inBundle:v9 withConfiguration:0];
  v11 = CLKUIConvertUIImageToMTLTexture();

  return v11;
}

- (void)setupForQuadView:(id)a3
{
  v4 = a3;
  v5 = +[CLKUIMetalResourceManager sharedDevice];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v5 newDefaultLibraryWithBundle:v6 error:0];

  v8 = [v7 newFunctionWithName:@"barber_vertex_shader"];
  v9 = [v7 newFunctionWithName:@"barber_fragment_shader"];
  v10 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v10 setLabel:@"WeaveBarberPipeline"];
  [v10 setVertexFunction:v8];
  [v10 setFragmentFunction:v9];
  v65 = v4;
  v11 = [v4 colorPixelFormat];
  v12 = [v10 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 setPixelFormat:v11];

  [v10 setDepthAttachmentPixelFormat:252];
  v14 = [v10 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript:0];
  [v15 setBlendingEnabled:0];

  [v10 setRasterSampleCount:4];
  v71 = 0;
  v16 = [v5 newRenderPipelineStateWithDescriptor:v10 error:&v71];
  v17 = v71;
  renderPipelineState = self->_renderPipelineState;
  self->_renderPipelineState = v16;

  if (v17)
  {
    v19 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_15294(v17);
    }
  }

  v20 = +[MTLRenderPassDescriptor renderPassDescriptor];
  v21 = [(MTLRenderPassDescriptor *)v20 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript:0];

  [v22 setLoadAction:2];
  [v22 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  [v22 setStoreAction:1];
  maskPassDescriptor = self->_maskPassDescriptor;
  self->_maskPassDescriptor = v20;

  v24 = [v7 newFunctionWithName:@"barber_circle_vertex_shader"];
  v25 = [v7 newFunctionWithName:@"barber_fragment_shader"];
  v26 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v26 setLabel:@"WeaveBarberCirclesPipeline"];
  [v26 setVertexFunction:v24];
  [v26 setFragmentFunction:v25];
  v27 = [v65 colorPixelFormat];
  v28 = [v26 colorAttachments];
  v29 = [v28 objectAtIndexedSubscript:0];
  [v29 setPixelFormat:v27];

  [v26 setDepthAttachmentPixelFormat:252];
  v30 = [v26 colorAttachments];
  v31 = [v30 objectAtIndexedSubscript:0];
  [v31 setBlendingEnabled:0];

  [v26 setRasterSampleCount:4];
  v70 = 0;
  v32 = [v5 newRenderPipelineStateWithDescriptor:v26 error:&v70];
  v33 = v70;
  circlesPipelineState = self->_circlesPipelineState;
  self->_circlesPipelineState = v32;

  if (v33)
  {
    v35 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_15318(v33);
    }
  }

  v36 = objc_opt_new();
  [v36 setConstantValue:&self->_supportsNonuniformThreadgroups type:53 atIndex:0];
  v37 = [v7 newFunctionWithName:@"computeBoundaryIntersections" constantValues:v36 error:0];
  v69 = 0;
  v38 = [v5 newComputePipelineStateWithFunction:v37 error:&v69];
  v39 = v69;
  computeBoundaryIntersectionsPipelineState = self->_computeBoundaryIntersectionsPipelineState;
  self->_computeBoundaryIntersectionsPipelineState = v38;

  if (v39)
  {
    v41 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1539C(v39);
    }
  }

  v42 = [v7 newFunctionWithName:@"sortBoundaryIntersections" constantValues:v36 error:0];
  v68 = 0;
  v43 = [v5 newComputePipelineStateWithFunction:v42 error:&v68];
  v44 = v68;
  sortBoundaryIntersectionsPipelineState = self->_sortBoundaryIntersectionsPipelineState;
  self->_sortBoundaryIntersectionsPipelineState = v43;

  if (v44)
  {
    v46 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_15420(v44);
    }
  }

  v64 = v36;

  for (i = 0; i != 3; ++i)
  {
    v48 = [v5 newBufferWithLength:3872 options:0];
    v49 = self->_curvesBuffer[i];
    self->_curvesBuffer[i] = v48;

    v50 = [v5 newBufferWithLength:1408 options:32];
    v51 = self->_instanceMap[i];
    self->_instanceMap[i] = v50;

    v52 = [(MTLDevice *)self->_device newBufferWithLength:16 options:0];
    v53 = self->_indirectDrawBuffer[i];
    self->_indirectDrawBuffer[i] = v52;

    v54 = [v5 newBufferWithLength:1408 options:32];
    v55 = self->_circlesInstanceMap[i];
    self->_circlesInstanceMap[i] = v54;

    v56 = [(MTLDevice *)self->_device newBufferWithLength:20 options:0];
    v57 = self->_circlesIndirectDrawBuffer[i];
    self->_circlesIndirectDrawBuffer[i] = v56;
  }

  v66 = 0;
  v67 = 0;
  v58 = [(NTKPrideWeaveBarberQuad *)self generateCircleVerticesWithLevel:3 vertexBuffer:&v67 indexBuffer:&v66];
  v59 = v67;
  v60 = v66;
  self->_circleNumVertices = v58;
  circleVertexBuffer = self->_circleVertexBuffer;
  self->_circleVertexBuffer = v59;
  v62 = v59;

  circleIndexBuffer = self->_circleIndexBuffer;
  self->_circleIndexBuffer = v60;
}

- (int)generateCircleVerticesWithLevel:(int)a3 vertexBuffer:(id *)a4 indexBuffer:(id *)a5
{
  v9 = ldexp(1.0, a3);
  v10 = (v9 * 3.0);
  v11 = (1.0 - (1.0 - v9) * 3.0);
  v12 = [(MTLDevice *)self->_device newBufferWithLength:8 * v10 options:0];
  v13 = [(MTLDevice *)self->_device newBufferWithLength:6 * v11 options:0];
  v14 = [v12 contents];
  v15 = [v13 contents];
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      v17 = i * 6.28318531 / v10;
      v18 = __sincosf_stret(v17);
      v14[i] = __PAIR64__(LODWORD(v18.__sinval), LODWORD(v18.__cosval));
    }
  }

  if (a3 < 0)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = v15 + 2;
    v22 = 0.0;
    do
    {
      v23 = exp2(v22);
      if (v10 - 2 * v23 >= 0)
      {
        v24 = 0;
        v25 = &v21[2 * v20];
        do
        {
          *(v25 - 1) = v24;
          *v25 = v23 + v24;
          v24 += 2 * v23;
          *(v25 + 1) = v24 % v10;
          v25 += 6;
          v20 += 3;
        }

        while (v24 <= v10 - 2 * v23);
      }

      v22 = v22 + 1.0;
    }

    while (v19++ != a3);
  }

  v27 = v12;
  *a4 = v12;
  v28 = v13;
  *a5 = v13;

  return v20;
}

- (BOOL)prepareForTime:(double)a3
{
  v4 = (a3 - self->_previousTime) * self->_timeScale;
  v5 = v4 > 0.0833333333 || v4 < 0.0;
  self->_previousTime = a3;
  if (v5)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  self->_currentTime = self->_currentTime + v6;
  prepareFrameCallback = self->_prepareFrameCallback;
  if (prepareFrameCallback)
  {
    prepareFrameCallback[2](prepareFrameCallback, a2);
  }

  thickness = self->_thickness;
  if (thickness != 0.0)
  {
    v9 = (self->_currentIndex + 1) % 3;
    self->_currentIndex = v9;
    v10 = [(MTLBuffer *)self->_curvesBuffer[v9] contents];
    maxWidthRect = self->_maxWidthRect;
    viewMode = self->_viewMode;
    CLKInterpolateBetweenFloatsUnclipped();
    v14 = v13;
    v15 = ((self->_uniforms.screenWidth / self->_uniforms.screenHeight) - v14) - (self->_screenEdgeBuffer / self->_uniforms.screenWidth);
    v16 = v15 * 3.14159265 / (v14 * 22.0);
    v17 = sqrt(v16 * v16 + -1.0) / v15;
    v18 = self->_winding * v17;
    v19 = ((v15 * 0.2856) / sqrtf((((v15 * v15) * v18) * v18) + 1.0)) * 0.5;
    if (v19 >= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = v19;
    }

    tritiumProgress = self->_tritiumProgress;
    CLKInterpolateBetweenFloatsUnclipped();
    v22 = 0;
    v24 = v23;
    if (v20 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v20;
    }

    v26 = v10 + 16;
    do
    {
      *(v26 + 1) = LODWORD(self->_tritiumProgress);
      v27 = v25 * self->_thickness;
      *(v26 - 1) = v20;
      *v26 = v27;
      *(v26 - 4) = v15;
      *(v26 - 3) = v18;
      v28 = self->_rotation + (v22 / 22.0) * 3.14159265 * 2.0;
      *(v26 - 2) = v28;
      v29 = v22 - 11;
      if (v22 < 0xB)
      {
        v29 = v22;
      }

      v30 = vmovl_s16(PRIDE_WEAVE_COLORS[v29]);
      CLKUIConvertToRGBfFromSRGBf_fast();
      *(v26 + 1) = v31;
      ++v22;
      v26 += 176;
    }

    while (v22 != 22);
  }

  return thickness != 0.0;
}

- (void)performOffscreenPassesWithCommandBuffer:(id)a3
{
  v4 = a3;
  rectEdgeTexture = self->_rectEdgeTexture;
  if (!rectEdgeTexture)
  {
    v6 = [(NTKPromise *)self->_rectTextureLoaderPromise object];
    v7 = (v6)[2](v6, v4);
    v8 = self->_rectEdgeTexture;
    self->_rectEdgeTexture = v7;

    rectTextureLoaderPromise = self->_rectTextureLoaderPromise;
    self->_rectTextureLoaderPromise = 0;

    rectEdgeTexture = self->_rectEdgeTexture;
  }

  v10 = rectEdgeTexture;
  currentIndex = self->_currentIndex;
  v12 = [(MTLDevice *)self->_device newBufferWithLength:88 options:0];
  v13 = [v4 computeCommandEncoder];
  [v13 setComputePipelineState:self->_computeBoundaryIntersectionsPipelineState];
  [v13 setBuffer:self->_curvesBuffer[currentIndex] offset:0 atIndex:0];
  [v13 setTexture:v10 atIndex:1];
  [v13 setBytes:&self->_uniforms length:12 atIndex:2];
  [v13 setBuffer:v12 offset:0 atIndex:3];
  v14 = [(MTLComputePipelineState *)self->_computeBoundaryIntersectionsPipelineState threadExecutionWidth];
  v15 = [(MTLComputePipelineState *)self->_computeBoundaryIntersectionsPipelineState maxTotalThreadsPerThreadgroup];
  screenHeight = self->_uniforms.screenHeight;
  if (self->_supportsNonuniformThreadgroups)
  {
    *v24 = 22;
    *&v24[8] = screenHeight;
    *&v24[16] = 1;
    v21 = v14;
    v22 = v15 / v14;
    v23 = 1;
    [v13 dispatchThreads:v24 threadsPerThreadgroup:&v21];
  }

  else
  {
    *v24 = (v14 + 21) / v14;
    *&v24[8] = (v15 / v14 + screenHeight - 1) / (v15 / v14);
    *&v24[16] = 1;
    v21 = v14;
    v22 = v15 / v14;
    v23 = 1;
    [v13 dispatchThreadgroups:v24 threadsPerThreadgroup:&v21];
  }

  [v13 endEncoding];

  v17 = [v4 computeCommandEncoder];
  [v17 setComputePipelineState:self->_sortBoundaryIntersectionsPipelineState];
  [v17 setBuffer:self->_curvesBuffer[currentIndex] offset:0 atIndex:0];
  [v17 setBytes:&self->_uniforms length:12 atIndex:2];
  [v17 setBuffer:v12 offset:0 atIndex:3];
  [v17 setTexture:v10 atIndex:1];
  *[(MTLBuffer *)self->_indirectDrawBuffer[currentIndex] contents]= xmmword_1B180;
  [v17 setBuffer:self->_indirectDrawBuffer[currentIndex] offset:4 atIndex:5];
  [v17 setBuffer:self->_instanceMap[currentIndex] offset:0 atIndex:4];
  v18 = [(MTLBuffer *)self->_circlesIndirectDrawBuffer[currentIndex] contents];
  *(v18 + 12) = 0;
  *(v18 + 4) = 0;
  *v18 = self->_circleNumVertices;
  [v17 setBuffer:self->_circlesIndirectDrawBuffer[currentIndex] offset:4 atIndex:7];
  [v17 setBuffer:self->_circlesInstanceMap[currentIndex] offset:0 atIndex:6];
  v19 = [(MTLComputePipelineState *)self->_sortBoundaryIntersectionsPipelineState threadExecutionWidth];
  v20 = [(MTLComputePipelineState *)self->_sortBoundaryIntersectionsPipelineState maxTotalThreadsPerThreadgroup];
  if (self->_supportsNonuniformThreadgroups)
  {
    *v24 = xmmword_1B190;
    *&v24[16] = 1;
    v21 = v19;
    v22 = v20 / v19;
    v23 = 1;
    [v17 dispatchThreads:v24 threadsPerThreadgroup:&v21];
  }

  else
  {
    *&v24[8] = vdupq_n_s64(1uLL);
    v21 = v19;
    v22 = v20 / v19;
    v23 = 1;
    *v24 = (v19 + 21) / v19;
    [v17 dispatchThreadgroups:v24 threadsPerThreadgroup:&v21];
  }

  [v17 endEncoding];
}

- (void)renderForDisplayWithEncoder:(id)a3
{
  renderPipelineState = self->_renderPipelineState;
  v5 = a3;
  [v5 setRenderPipelineState:renderPipelineState];
  [v5 setVertexBuffer:self->_curvesBuffer[self->_currentIndex] offset:0 atIndex:0];
  [v5 setVertexBytes:&self->_uniforms length:12 atIndex:1];
  [v5 setVertexBuffer:self->_instanceMap[self->_currentIndex] offset:0 atIndex:2];
  [v5 drawPrimitives:4 indirectBuffer:self->_indirectDrawBuffer[self->_currentIndex] indirectBufferOffset:0];
  [v5 setRenderPipelineState:self->_circlesPipelineState];
  [v5 setVertexBuffer:self->_curvesBuffer[self->_currentIndex] offset:0 atIndex:0];
  [v5 setVertexBytes:&self->_uniforms length:12 atIndex:1];
  [v5 setVertexBuffer:self->_circlesInstanceMap[self->_currentIndex] offset:0 atIndex:2];
  [v5 setVertexBuffer:self->_circleVertexBuffer offset:0 atIndex:3];
  [v5 drawIndexedPrimitives:3 indexType:0 indexBuffer:self->_circleIndexBuffer indexBufferOffset:0 indirectBuffer:self->_circlesIndirectDrawBuffer[self->_currentIndex] indirectBufferOffset:0];
}

@end