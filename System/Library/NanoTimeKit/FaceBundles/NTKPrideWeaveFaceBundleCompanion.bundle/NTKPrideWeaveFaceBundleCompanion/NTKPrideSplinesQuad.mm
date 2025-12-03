@interface NTKPrideSplinesQuad
- ($8EF4127CF77ECA3DDB612FCF233DC3A8)noiseConfiguration;
- (BOOL)forceRender;
- (BOOL)postSemaphoreComputeForTime:(double)time;
- (BOOL)shouldForceRender;
- (NTKPrideSplinesQuad)initWithDevice:(id)device touchCrownHandler:(id)handler;
- (double)noiseSamplePositionForControlPoint:inSpline:;
- (float)ampltiudeForControlPoint:(int)point ofSpline:(int)spline;
- (float)computeAmplitudeForControlPoint:(int)point inSpline:(int)spline atTime:(double)time;
- (float)globalAmplitudeForTime:(double)time;
- (float)interpolationStepSizeForSpline:(int)spline;
- (id)_generateInterpolationPositions;
- (id)generateVignetteTextureData;
- (id)getNTKPrideSplineDefinitionFiller;
- (id)snapshot;
- (id)snapshotWithScale:(double)scale;
- (id)snapshotWithSize:(CGSize)size scale:(double)scale apl:(float *)apl;
- (int)maxVertsPerSpline;
- (int)numControlPointsPerSpline;
- (int)numSplines;
- (int)numVertsForSpline:(int)spline;
- (void)computeWithEncoder:(id)encoder pipelineState:(id)state;
- (void)dealloc;
- (void)generateControlPointsForSpline:(int)spline;
- (void)handleSingleTap:(id)tap;
- (void)loadMetalTexturesAndBuffersWithDevice:(id)device;
- (void)renderWithEncoder:(id)encoder;
- (void)setAmplitude:(float)amplitude forControlPoint:(int)point ofSpline:(int)spline;
- (void)setNoise:(int)noise forControlPoint:(int)point inSpline:;
- (void)startWavesAtTime:(double)time;
- (void)strumToOffset:(double)offset withVelocity:(double)velocity;
- (void)tapAtPoint:(CGPoint)point atTime:(double)time;
@end

@implementation NTKPrideSplinesQuad

- (NTKPrideSplinesQuad)initWithDevice:(id)device touchCrownHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = NTKPrideSplinesQuad;
  v8 = [(NTKPrideMetalQuad *)&v15 initWithDevice:deviceCopy initialSemaphoreCount:3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 60), handler);
    [deviceCopy screenBounds];
    v14 = v10;
    [deviceCopy screenBounds];
    v11.f64[0] = v14;
    v11.f64[1] = v12;
    *(v9 + 140) = vcvt_f32_f64(v11);
    *(v9 + 42) = 1065353216;
    *(v9 + 43) = 1065353216;
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKPrideSplinesQuad;
  [(NTKPrideMetalQuad *)&v2 dealloc];
}

- (int)maxVertsPerSpline
{
  if ([(NTKPrideSplinesQuad *)self numSplines]< 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [(NTKPrideSplinesQuad *)self numVertsForSpline:v4];
    if (v3 <= v5)
    {
      v3 = v5;
    }

    v4 = (v4 + 1);
  }

  while (v4 < [(NTKPrideSplinesQuad *)self numSplines]);
  return v3;
}

- (id)generateVignetteTextureData
{
  v2 = objc_opt_new();

  return v2;
}

- (id)_generateInterpolationPositions
{
  numControlPointsPerSpline = [(NTKPrideSplinesQuad *)self numControlPointsPerSpline];
  maxVertsPerSpline = [(NTKPrideSplinesQuad *)self maxVertsPerSpline];
  v5 = vcvtpd_s64_f64(vcvtd_n_f64_u64(2 * ((2 * (maxVertsPerSpline + (maxVertsPerSpline >> 31))) & 0xFFFFFFFC), 6uLL)) << 6;
  *&self->_currentBufferIndex = v5;
  v6 = [[NSMutableData alloc] initWithCapacity:{v5 * -[NTKPrideSplinesQuad numSplines](self, "numSplines")}];
  if ([(NTKPrideSplinesQuad *)self numSplines]>= 1)
  {
    v7 = 0;
    v8 = numControlPointsPerSpline;
    v9 = v5;
    do
    {
      v10 = objc_alloc_init(NSMutableData);
      v11 = [(NTKPrideSplinesQuad *)self numVertsForSpline:v7];
      [(NTKPrideSplinesQuad *)self interpolationStepSizeForSpline:v7];
      if (v11 >= 2)
      {
        v13 = v12;
        v14 = 0;
        v15 = v11 / 2;
        do
        {
          v16 = fmod((v13 * v14), v8);
          v17 = v16;
          v18 = v16 - v16;
          v20[0] = v17;
          v20[1] = (v18 * 65535.0);
          v20[2] = ((v18 * v18) * 65535.0);
          v20[3] = ((v18 * (v18 * v18)) * 65535.0);
          [v10 appendBytes:v20 length:8];
          ++v14;
        }

        while (v15 != v14);
      }

      while ([v10 length] < v9)
      {
        LOBYTE(v20[0]) = 0;
        [v10 appendBytes:v20 length:1];
      }

      [v6 appendData:v10];

      v7 = (v7 + 1);
    }

    while (v7 < [(NTKPrideSplinesQuad *)self numSplines]);
  }

  return v6;
}

- (void)loadMetalTexturesAndBuffersWithDevice:(id)device
{
  deviceCopy = device;
  for (i = 0; i != 24; i += 8)
  {
    v6 = [deviceCopy newBufferWithLength:2688 options:0];
    v7 = *(&self->_controlPointsNeedUpdate + i);
    *(&self->_controlPointsNeedUpdate + i) = v6;
  }

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_2604;
  v19 = &unk_24630;
  selfCopy = self;
  v21 = deviceCopy;
  v8 = deviceCopy;
  v9 = [NTKPromise promiseNamed:@"Pride Textures" withBlock:&v16];
  v10 = *&self->_mtlSamplePositionBufferWidth;
  *&self->_mtlSamplePositionBufferWidth = v9;

  v11 = vcvtpd_s64_f64(vcvtd_n_f64_u64(16 * [(NTKPrideSplinesQuad *)self numControlPointsPerSpline:v16], 6uLL)) << 6;
  HIDWORD(self->_mtlGeneratedTextures) = v11;
  v12 = [v8 newBufferWithLength:(v11 * -[NTKPrideSplinesQuad numSplines](self options:{"numSplines")), 1}];
  v13 = *(&self->_mtlComputeBufferWidth + 1);
  *(&self->_mtlComputeBufferWidth + 1) = v12;

  v14 = [v8 newBufferWithLength:(-[NTKPrideSplinesQuad numSplines](self options:{"numSplines") * v11), 32}];
  v15 = *(&self->_mtlComputeInputBuffer + 4);
  *(&self->_mtlComputeInputBuffer + 4) = v14;
}

- (void)computeWithEncoder:(id)encoder pipelineState:(id)state
{
  v7 = *(&self->_mtlComputeBufferWidth + 1);
  stateCopy = state;
  encoderCopy = encoder;
  [encoderCopy setBuffer:v7 offset:0 atIndex:0];
  [encoderCopy setBuffer:*(&self->_mtlComputeInputBuffer + 4) offset:0 atIndex:1];

  numControlPointsPerSpline = [(NTKPrideSplinesQuad *)self numControlPointsPerSpline];
  [encoderCopy setBytes:&numControlPointsPerSpline length:4 atIndex:2];
  numSplines = [(NTKPrideSplinesQuad *)self numSplines];
  [encoderCopy setBytes:&numSplines length:4 atIndex:3];
  threadExecutionWidth = [stateCopy threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [stateCopy maxTotalThreadsPerThreadgroup];

  v13[0] = (threadExecutionWidth + [(NTKPrideSplinesQuad *)self numControlPointsPerSpline]- 1) / threadExecutionWidth;
  v13[1] = (maxTotalThreadsPerThreadgroup / threadExecutionWidth + [(NTKPrideSplinesQuad *)self numSplines]- 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth);
  v13[2] = 1;
  v12[0] = threadExecutionWidth;
  v12[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v12[2] = 1;
  [encoderCopy dispatchThreadgroups:v13 threadsPerThreadgroup:v12];
}

- (void)renderWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  v5 = *(&self->_mtlComputeBufferWidth + 1);
  currentSplinesBuffer = [(NTKPrideSplinesQuad *)self currentSplinesBuffer];
  object = [*&self->_mtlSamplePositionBufferWidth object];
  v8 = [object objectAtIndexedSubscript:0];
  [encoderCopy setVertexTexture:v8 atIndex:1];

  [encoderCopy setVertexBuffer:*(&self->_mtlComputeInputBuffer + 4) offset:0 atIndex:3];
  [encoderCopy setVertexBuffer:v5 offset:0 atIndex:2];
  object2 = [*&self->_mtlSamplePositionBufferWidth object];
  v10 = [object2 objectAtIndexedSubscript:1];
  [encoderCopy setVertexTexture:v10 atIndex:4];

  numControlPointsPerSpline = [(NTKPrideSplinesQuad *)self numControlPointsPerSpline];
  [encoderCopy setVertexBytes:&numControlPointsPerSpline length:4 atIndex:8];
  [(NTKPrideSplinesQuad *)self vignetteAmount];
  v14 = v11;
  [encoderCopy setVertexBytes:&v14 length:4 atIndex:5];
  [encoderCopy setVertexBytes:&self->_mtlComputeOutputBuffer + 4 length:8 atIndex:6];
  [encoderCopy setVertexBuffer:currentSplinesBuffer offset:0 atIndex:0];
  if ([(NTKPrideSplinesQuad *)self numSplinesToDraw]>= 1)
  {
    v12 = 0;
    do
    {
      v13 = [(NTKPrideSplinesQuad *)self splineDrawOrder:v12];
      [encoderCopy setVertexBytes:&v13 length:4 atIndex:7];
      [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:{-[NTKPrideSplinesQuad numVertsForSpline:](self, "numVertsForSpline:", v13)}];
      v12 = (v12 + 1);
    }

    while (v12 < [(NTKPrideSplinesQuad *)self numSplinesToDraw]);
  }
}

- (BOOL)postSemaphoreComputeForTime:(double)time
{
  WORD2(self->_mtlSplinesBuffers[2]) = WORD2(self->_mtlSplinesBuffers[2]) + 1 - 3 * ((1431655766 * (WORD2(self->_mtlSplinesBuffers[2]) + 1)) >> 32);
  currentSplinesBuffer = [(NTKPrideSplinesQuad *)self currentSplinesBuffer];
  [currentSplinesBuffer contents];

  currentComputeBuffer = [(NTKPrideSplinesQuad *)self currentComputeBuffer];
  getNTKPrideSplineDefinitionFiller = [(NTKPrideSplinesQuad *)self getNTKPrideSplineDefinitionFiller];
  [(NTKPrideSplinesQuad *)self numSplines];
  v10 = currentComputeBuffer;
  v7 = getNTKPrideSplineDefinitionFiller;
  v8 = currentComputeBuffer;
  NTKHighPriorityApply();

  return 1;
}

- (BOOL)forceRender
{
  v3 = 1;
  BYTE5(self->_touchCrownHandler) = 1;
  v4 = dispatch_group_create();
  quadView = [(NTKPrideSplinesQuad *)self quadView];
  v6 = [quadView renderSynchronouslyWithImageQueueDiscard:0 inGroup:v4 completion:0];

  if ((v6 & 1) == 0)
  {
    v7 = 0;
    do
    {
      v8 = v7;
      if (v7 == 9)
      {
        break;
      }

      quadView2 = [(NTKPrideSplinesQuad *)self quadView];
      v10 = [quadView2 renderSynchronouslyWithImageQueueDiscard:0 inGroup:v4 completion:0];

      v7 = v8 + 1;
    }

    while (!v10);
    v3 = v8 < 9;
  }

  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  BYTE5(self->_touchCrownHandler) = 0;

  return v3;
}

- (id)snapshot
{
  v3 = +[CLKDevice currentDevice];
  [v3 screenScale];
  v4 = [(NTKPrideSplinesQuad *)self snapshotWithScale:?];

  return v4;
}

- (id)snapshotWithScale:(double)scale
{
  quadView = [(NTKPrideSplinesQuad *)self quadView];
  [quadView frame];
  scale = [(NTKPrideSplinesQuad *)self snapshotWithSize:0 scale:v6 apl:v7, scale];

  return scale;
}

- (id)snapshotWithSize:(CGSize)size scale:(double)scale apl:(float *)apl
{
  if (apl)
  {
    v6 = [(NTKPrideSplinesQuad *)self quadView:size.width];
    v15 = 0;
    [v6 computeAPLAndSnapshot:&v15];
    v8 = v7;
    v9 = v15;
    *apl = v8;
  }

  else
  {
    height = size.height;
    width = size.width;
    quadView = [(NTKPrideSplinesQuad *)self quadView];
    v9 = [quadView snapshotInRect:0.0 scale:0.0 time:{width, height, scale, CACurrentMediaTime()}];
  }

  return v9;
}

- (BOOL)shouldForceRender
{
  if (BYTE5(self->_touchCrownHandler))
  {
    return 1;
  }

  quadView = [(NTKPrideSplinesQuad *)self quadView];
  isSnapshotting = [quadView isSnapshotting];

  return isSnapshotting;
}

- (void)strumToOffset:(double)offset withVelocity:(double)velocity
{
  if ((BYTE4(self->_touchCrownHandler) & 1) == 0)
  {
    [*(&self->super._timeScale + 1) strumToOffset:offset withVelocity:velocity];
  }
}

- (void)tapAtPoint:(CGPoint)point atTime:(double)time
{
  y = point.y;
  x = point.x;
  quadView = [(NTKPrideSplinesQuad *)self quadView];
  [quadView bounds];
  v9 = x / v8;
  *&v9 = x / v8;
  v11 = y / v10;
  *&v11 = y / v10;
  [*(&self->super._timeScale + 1) startWaveAtX:v9 y:v11 atTime:time];
}

- (void)handleSingleTap:(id)tap
{
  if ((BYTE4(self->_touchCrownHandler) & 1) == 0)
  {
    tapCopy = tap;
    quadView = [(NTKPrideSplinesQuad *)self quadView];
    [tapCopy locationInView:quadView];
    v7 = v6;
    v9 = v8;

    [(NTKPrideMetalQuad *)self currentTime];
    [(NTKPrideSplinesQuad *)self tapAtPoint:v7 atTime:v9, v10];
  }
}

- (int)numSplines
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return -1;
}

- (int)numControlPointsPerSpline
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return -1;
}

- (int)numVertsForSpline:(int)spline
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return -1;
}

- (float)interpolationStepSizeForSpline:(int)spline
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (float)computeAmplitudeForControlPoint:(int)point inSpline:(int)spline atTime:(double)time
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (float)globalAmplitudeForTime:(double)time
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (void)startWavesAtTime:(double)time
{
  sub_39C0();
  sub_39B0();

  NSRequestConcreteImplementation();
}

- (void)generateControlPointsForSpline:(int)spline
{
  sub_39C0();
  sub_39B0();

  NSRequestConcreteImplementation();
}

- (void)setAmplitude:(float)amplitude forControlPoint:(int)point ofSpline:(int)spline
{
  sub_39C0();
  sub_39B0();

  NSRequestConcreteImplementation();
}

- (float)ampltiudeForControlPoint:(int)point ofSpline:(int)spline
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (double)noiseSamplePositionForControlPoint:inSpline:
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (void)setNoise:(int)noise forControlPoint:(int)point inSpline:
{
  sub_39C0();
  sub_39B0();

  NSRequestConcreteImplementation();
}

- ($8EF4127CF77ECA3DDB612FCF233DC3A8)noiseConfiguration
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)getNTKPrideSplineDefinitionFiller
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return 0;
}

@end