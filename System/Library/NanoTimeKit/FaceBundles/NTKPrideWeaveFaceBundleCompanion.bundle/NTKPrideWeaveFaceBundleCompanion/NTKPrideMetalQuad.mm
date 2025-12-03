@interface NTKPrideMetalQuad
- (BOOL)prepareForTime:(double)time;
- (NTKPrideMetalQuad)initWithDevice:(id)device initialSemaphoreCount:(int)count;
- (id)computePipelineManager;
- (void)dealloc;
- (void)performOffscreenPassesWithCommandBuffer:(id)buffer;
- (void)renderForDisplayWithEncoder:(id)encoder;
- (void)setupForQuadView:(id)view;
@end

@implementation NTKPrideMetalQuad

- (id)computePipelineManager
{
  if (qword_2CD08 != -1)
  {
    sub_154A4();
  }

  v3 = qword_2CD00;

  return v3;
}

- (NTKPrideMetalQuad)initWithDevice:(id)device initialSemaphoreCount:(int)count
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = NTKPrideMetalQuad;
  v7 = [(NTKPrideMetalQuad *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_clkDevice, device);
    v8->_startTime = CACurrentMediaTime();
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKPrideMetalQuad;
  [(NTKPrideMetalQuad *)&v2 dealloc];
}

- (void)setupForQuadView:(id)view
{
  viewCopy = view;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = +[CLKUIMetalResourceManager sharedDevice];
  v7 = [v6 newDefaultLibraryWithBundle:v5 error:0];
  computePipelineManager = [(NTKPrideMetalQuad *)self computePipelineManager];
  pipeline = [computePipelineManager pipeline];
  mtlComputePipelineState = self->_mtlComputePipelineState;
  self->_mtlComputePipelineState = pipeline;

  if (!self->_mtlComputePipelineState)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_EE98;
    v24[3] = &unk_24A30;
    v25 = v7;
    selfCopy = self;
    v27 = v6;
    v11 = [NTKPromise metalPipelinePromiseNamed:@"Pride Compute Pipeline" withBlock:v24];
    v12 = self->_mtlComputePipelineState;
    self->_mtlComputePipelineState = v11;

    computePipelineManager2 = [(NTKPrideMetalQuad *)self computePipelineManager];
    [computePipelineManager2 setPipeline:self->_mtlComputePipelineState];
  }

  renderPipelineManager = [(NTKPrideMetalQuad *)self renderPipelineManager];
  pipeline2 = [renderPipelineManager pipeline];
  mtlPipelineState = self->_mtlPipelineState;
  self->_mtlPipelineState = pipeline2;

  if (!self->_mtlPipelineState)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_F000;
    v20[3] = &unk_24A58;
    v20[4] = self;
    v21 = v7;
    v22 = viewCopy;
    v23 = v6;
    v17 = [NTKPromise metalPipelinePromiseNamed:@"Pride Render Pipeline" withBlock:v20];
    v18 = self->_mtlPipelineState;
    self->_mtlPipelineState = v17;

    renderPipelineManager2 = [(NTKPrideMetalQuad *)self renderPipelineManager];
    [renderPipelineManager2 setPipeline:self->_mtlPipelineState];
  }

  [(NTKPrideMetalQuad *)self loadMetalTexturesAndBuffersWithDevice:v6];
}

- (void)performOffscreenPassesWithCommandBuffer:(id)buffer
{
  if (self->_mtlComputePipelineState)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    object = [(NTKPromise *)self->_mtlComputePipelineState object];
    [computeCommandEncoder setComputePipelineState:object];

    object2 = [(NTKPromise *)self->_mtlComputePipelineState object];
    [(NTKPrideMetalQuad *)self computeWithEncoder:computeCommandEncoder pipelineState:object2];

    [computeCommandEncoder endEncoding];
  }
}

- (void)renderForDisplayWithEncoder:(id)encoder
{
  mtlPipelineState = self->_mtlPipelineState;
  encoderCopy = encoder;
  object = [(NTKPromise *)mtlPipelineState object];
  [encoderCopy setRenderPipelineState:object];

  [(NTKPrideMetalQuad *)self renderWithEncoder:encoderCopy];
}

- (BOOL)prepareForTime:(double)time
{
  quadView = [(NTKPrideMetalQuad *)self quadView];
  [quadView frameNum];
  kdebug_trace();

  self->_currentTime = time - self->_startTime;
  v6 = [(NTKPrideMetalQuad *)self preSemaphoreComputeForTime:?];
  if (v6)
  {
    v6 = [(NTKPrideMetalQuad *)self postSemaphoreComputeForTime:self->_currentTime];
    if (v6)
    {
      quadView2 = [(NTKPrideMetalQuad *)self quadView];
      [quadView2 frameNum];
      kdebug_trace();

      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

@end