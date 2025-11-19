@interface NTKPrideWeaveSpiroQuad
- (BOOL)prepareForTime:(double)a3;
- (NTKPrideWeaveSpiroQuad)init;
- (void)renderForDisplayWithEncoder:(id)a3;
- (void)setupForQuadView:(id)a3;
@end

@implementation NTKPrideWeaveSpiroQuad

- (NTKPrideWeaveSpiroQuad)init
{
  v13.receiver = self;
  v13.super_class = NTKPrideWeaveSpiroQuad;
  v2 = [(NTKPrideWeaveSpiroQuad *)&v13 init];
  if (v2)
  {
    v3 = +[CLKUIMetalResourceManager sharedDevice];
    device = v2->_device;
    v2->_device = v3;

    v2->_timeScale = 1.0;
    v2->_thickness = 1.0;
    v5 = +[CLKDevice currentDevice];
    [v5 screenBounds];
    v7 = v6;
    [v5 screenScale];
    *&v8 = v8 * v7;
    v2->_uniforms.screenHeight = *&v8;
    [v5 screenBounds];
    v10 = v9;
    [v5 screenScale];
    *&v11 = v11 * v10;
    v2->_uniforms.screenWidth = *&v11;
    v2->_uniforms.steps = 128;
  }

  return v2;
}

- (void)setupForQuadView:(id)a3
{
  v4 = a3;
  v5 = +[CLKUIMetalResourceManager sharedDevice];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v5 newDefaultLibraryWithBundle:v6 error:0];

  v8 = [v7 newFunctionWithName:@"spiro_vertex_shader"];
  v9 = [v7 newFunctionWithName:@"spiro_fragment_shader"];
  v10 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v10 setLabel:@"WeaveSpirographPipeline"];
  [v10 setVertexFunction:v8];
  [v10 setFragmentFunction:v9];
  v11 = [v4 colorPixelFormat];
  v12 = [v10 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 setPixelFormat:v11];

  [v10 setDepthAttachmentPixelFormat:252];
  v14 = [v10 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript:0];
  [v15 setBlendingEnabled:0];

  [v10 setRasterSampleCount:4];
  v23 = 0;
  v16 = [v5 newRenderPipelineStateWithDescriptor:v10 error:&v23];
  v17 = v23;
  renderPipelineState = self->_renderPipelineState;
  self->_renderPipelineState = v16;

  if (v17)
  {
    v19 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_14E74(v17, v19);
    }
  }

  v20 = 3;
  do
  {
    v21 = [v5 newBufferWithLength:528 options:0];
    v22 = self->_curvesBuffer[0];
    self->_curvesBuffer[0] = v21;

    self = (self + 8);
    --v20;
  }

  while (v20);
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
    v8 = (self->_currentIndex + 1) % 3;
    self->_currentIndex = v8;
    v9 = [(MTLBuffer *)self->_curvesBuffer[v8] contents];
    CLKInterpolateBetweenFloatsUnclipped();
    v11 = v10;
    CLKInterpolateBetweenFloatsUnclipped();
    v13 = v12;
    CLKInterpolateBetweenFloatsUnclipped();
    v14 = 0;
    v15 = (v11 - v13) * 0.5;
    v16 = v15 + -0.05;
    v17 = self->_thickness;
    v18 = (v15 + v13);
    v19 = (v9 + 16);
    do
    {
      v20 = self->_tritiumProgress[(v14 + [(NTKPrideWeaveSpiroQuad *)self startLoop]) % 11];
      CLKInterpolateBetweenFloatsUnclipped();
      *&v21 = v21;
      *(v19 - 4) = v16;
      v22 = v18 + v20 * -0.05;
      *(v19 - 1) = v22;
      *v19 = *&v21;
      *(v19 - 3) = 1.0;
      *&v21 = self->_rotation + ((v14 / 11.0) + (v14 / 11.0)) * 3.14159265;
      *(v19 - 2) = *&v21;
      v23 = vmovl_s16(PRIDE_WEAVE_COLORS[v14]);
      CLKUIConvertToRGBfFromSRGBf_fast();
      *(v19 + 1) = v24;
      ++v14;
      v19 += 12;
    }

    while (v14 != 11);
  }

  return thickness != 0.0;
}

- (void)renderForDisplayWithEncoder:(id)a3
{
  renderPipelineState = self->_renderPipelineState;
  v5 = a3;
  [v5 setRenderPipelineState:renderPipelineState];
  [v5 setVertexBuffer:self->_curvesBuffer[self->_currentIndex] offset:0 atIndex:0];
  [v5 setVertexBytes:&self->_uniforms length:12 atIndex:1];
  [v5 drawPrimitives:4 vertexStart:0 vertexCount:256 instanceCount:11 baseInstance:0];
}

@end