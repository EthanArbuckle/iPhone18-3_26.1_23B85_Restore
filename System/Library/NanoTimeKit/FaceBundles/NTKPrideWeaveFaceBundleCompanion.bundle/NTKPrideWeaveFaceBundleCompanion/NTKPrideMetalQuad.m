@interface NTKPrideMetalQuad
- (BOOL)prepareForTime:(double)a3;
- (NTKPrideMetalQuad)initWithDevice:(id)a3 initialSemaphoreCount:(int)a4;
- (id)computePipelineManager;
- (void)dealloc;
- (void)performOffscreenPassesWithCommandBuffer:(id)a3;
- (void)renderForDisplayWithEncoder:(id)a3;
- (void)setupForQuadView:(id)a3;
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

- (NTKPrideMetalQuad)initWithDevice:(id)a3 initialSemaphoreCount:(int)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = NTKPrideMetalQuad;
  v7 = [(NTKPrideMetalQuad *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_clkDevice, a3);
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

- (void)setupForQuadView:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = +[CLKUIMetalResourceManager sharedDevice];
  v7 = [v6 newDefaultLibraryWithBundle:v5 error:0];
  v8 = [(NTKPrideMetalQuad *)self computePipelineManager];
  v9 = [v8 pipeline];
  mtlComputePipelineState = self->_mtlComputePipelineState;
  self->_mtlComputePipelineState = v9;

  if (!self->_mtlComputePipelineState)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_EE98;
    v24[3] = &unk_24A30;
    v25 = v7;
    v26 = self;
    v27 = v6;
    v11 = [NTKPromise metalPipelinePromiseNamed:@"Pride Compute Pipeline" withBlock:v24];
    v12 = self->_mtlComputePipelineState;
    self->_mtlComputePipelineState = v11;

    v13 = [(NTKPrideMetalQuad *)self computePipelineManager];
    [v13 setPipeline:self->_mtlComputePipelineState];
  }

  v14 = [(NTKPrideMetalQuad *)self renderPipelineManager];
  v15 = [v14 pipeline];
  mtlPipelineState = self->_mtlPipelineState;
  self->_mtlPipelineState = v15;

  if (!self->_mtlPipelineState)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_F000;
    v20[3] = &unk_24A58;
    v20[4] = self;
    v21 = v7;
    v22 = v4;
    v23 = v6;
    v17 = [NTKPromise metalPipelinePromiseNamed:@"Pride Render Pipeline" withBlock:v20];
    v18 = self->_mtlPipelineState;
    self->_mtlPipelineState = v17;

    v19 = [(NTKPrideMetalQuad *)self renderPipelineManager];
    [v19 setPipeline:self->_mtlPipelineState];
  }

  [(NTKPrideMetalQuad *)self loadMetalTexturesAndBuffersWithDevice:v6];
}

- (void)performOffscreenPassesWithCommandBuffer:(id)a3
{
  if (self->_mtlComputePipelineState)
  {
    v6 = [a3 computeCommandEncoder];
    v4 = [(NTKPromise *)self->_mtlComputePipelineState object];
    [v6 setComputePipelineState:v4];

    v5 = [(NTKPromise *)self->_mtlComputePipelineState object];
    [(NTKPrideMetalQuad *)self computeWithEncoder:v6 pipelineState:v5];

    [v6 endEncoding];
  }
}

- (void)renderForDisplayWithEncoder:(id)a3
{
  mtlPipelineState = self->_mtlPipelineState;
  v6 = a3;
  v5 = [(NTKPromise *)mtlPipelineState object];
  [v6 setRenderPipelineState:v5];

  [(NTKPrideMetalQuad *)self renderWithEncoder:v6];
}

- (BOOL)prepareForTime:(double)a3
{
  v5 = [(NTKPrideMetalQuad *)self quadView];
  [v5 frameNum];
  kdebug_trace();

  self->_currentTime = a3 - self->_startTime;
  v6 = [(NTKPrideMetalQuad *)self preSemaphoreComputeForTime:?];
  if (v6)
  {
    v6 = [(NTKPrideMetalQuad *)self postSemaphoreComputeForTime:self->_currentTime];
    if (v6)
    {
      v7 = [(NTKPrideMetalQuad *)self quadView];
      [v7 frameNum];
      kdebug_trace();

      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

@end