@interface NTKPrideSplinesQuad
- ($8EF4127CF77ECA3DDB612FCF233DC3A8)noiseConfiguration;
- (BOOL)forceRender;
- (BOOL)postSemaphoreComputeForTime:(double)a3;
- (BOOL)shouldForceRender;
- (NTKPrideSplinesQuad)initWithDevice:(id)a3 touchCrownHandler:(id)a4;
- (double)noiseSamplePositionForControlPoint:inSpline:;
- (float)ampltiudeForControlPoint:(int)a3 ofSpline:(int)a4;
- (float)computeAmplitudeForControlPoint:(int)a3 inSpline:(int)a4 atTime:(double)a5;
- (float)globalAmplitudeForTime:(double)a3;
- (float)interpolationStepSizeForSpline:(int)a3;
- (id)_generateInterpolationPositions;
- (id)generateVignetteTextureData;
- (id)getNTKPrideSplineDefinitionFiller;
- (id)snapshot;
- (id)snapshotWithScale:(double)a3;
- (id)snapshotWithSize:(CGSize)a3 scale:(double)a4 apl:(float *)a5;
- (int)maxVertsPerSpline;
- (int)numControlPointsPerSpline;
- (int)numSplines;
- (int)numVertsForSpline:(int)a3;
- (void)computeWithEncoder:(id)a3 pipelineState:(id)a4;
- (void)dealloc;
- (void)generateControlPointsForSpline:(int)a3;
- (void)handleSingleTap:(id)a3;
- (void)loadMetalTexturesAndBuffersWithDevice:(id)a3;
- (void)renderWithEncoder:(id)a3;
- (void)setAmplitude:(float)a3 forControlPoint:(int)a4 ofSpline:(int)a5;
- (void)setNoise:(int)a3 forControlPoint:(int)a4 inSpline:;
- (void)startWavesAtTime:(double)a3;
- (void)strumToOffset:(double)a3 withVelocity:(double)a4;
- (void)tapAtPoint:(CGPoint)a3 atTime:(double)a4;
@end

@implementation NTKPrideSplinesQuad

- (NTKPrideSplinesQuad)initWithDevice:(id)a3 touchCrownHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = NTKPrideSplinesQuad;
  v8 = [(NTKPrideMetalQuad *)&v15 initWithDevice:v6 initialSemaphoreCount:3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 60), a4);
    [v6 screenBounds];
    v14 = v10;
    [v6 screenBounds];
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
  v3 = [(NTKPrideSplinesQuad *)self numControlPointsPerSpline];
  v4 = [(NTKPrideSplinesQuad *)self maxVertsPerSpline];
  v5 = vcvtpd_s64_f64(vcvtd_n_f64_u64(2 * ((2 * (v4 + (v4 >> 31))) & 0xFFFFFFFC), 6uLL)) << 6;
  *&self->_currentBufferIndex = v5;
  v6 = [[NSMutableData alloc] initWithCapacity:{v5 * -[NTKPrideSplinesQuad numSplines](self, "numSplines")}];
  if ([(NTKPrideSplinesQuad *)self numSplines]>= 1)
  {
    v7 = 0;
    v8 = v3;
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

- (void)loadMetalTexturesAndBuffersWithDevice:(id)a3
{
  v4 = a3;
  for (i = 0; i != 24; i += 8)
  {
    v6 = [v4 newBufferWithLength:2688 options:0];
    v7 = *(&self->_controlPointsNeedUpdate + i);
    *(&self->_controlPointsNeedUpdate + i) = v6;
  }

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_2604;
  v19 = &unk_24630;
  v20 = self;
  v21 = v4;
  v8 = v4;
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

- (void)computeWithEncoder:(id)a3 pipelineState:(id)a4
{
  v7 = *(&self->_mtlComputeBufferWidth + 1);
  v8 = a4;
  v9 = a3;
  [v9 setBuffer:v7 offset:0 atIndex:0];
  [v9 setBuffer:*(&self->_mtlComputeInputBuffer + 4) offset:0 atIndex:1];

  v15 = [(NTKPrideSplinesQuad *)self numControlPointsPerSpline];
  [v9 setBytes:&v15 length:4 atIndex:2];
  v14 = [(NTKPrideSplinesQuad *)self numSplines];
  [v9 setBytes:&v14 length:4 atIndex:3];
  v10 = [v8 threadExecutionWidth];
  v11 = [v8 maxTotalThreadsPerThreadgroup];

  v13[0] = (v10 + [(NTKPrideSplinesQuad *)self numControlPointsPerSpline]- 1) / v10;
  v13[1] = (v11 / v10 + [(NTKPrideSplinesQuad *)self numSplines]- 1) / (v11 / v10);
  v13[2] = 1;
  v12[0] = v10;
  v12[1] = v11 / v10;
  v12[2] = 1;
  [v9 dispatchThreadgroups:v13 threadsPerThreadgroup:v12];
}

- (void)renderWithEncoder:(id)a3
{
  v4 = a3;
  v5 = *(&self->_mtlComputeBufferWidth + 1);
  v6 = [(NTKPrideSplinesQuad *)self currentSplinesBuffer];
  v7 = [*&self->_mtlSamplePositionBufferWidth object];
  v8 = [v7 objectAtIndexedSubscript:0];
  [v4 setVertexTexture:v8 atIndex:1];

  [v4 setVertexBuffer:*(&self->_mtlComputeInputBuffer + 4) offset:0 atIndex:3];
  [v4 setVertexBuffer:v5 offset:0 atIndex:2];
  v9 = [*&self->_mtlSamplePositionBufferWidth object];
  v10 = [v9 objectAtIndexedSubscript:1];
  [v4 setVertexTexture:v10 atIndex:4];

  v15 = [(NTKPrideSplinesQuad *)self numControlPointsPerSpline];
  [v4 setVertexBytes:&v15 length:4 atIndex:8];
  [(NTKPrideSplinesQuad *)self vignetteAmount];
  v14 = v11;
  [v4 setVertexBytes:&v14 length:4 atIndex:5];
  [v4 setVertexBytes:&self->_mtlComputeOutputBuffer + 4 length:8 atIndex:6];
  [v4 setVertexBuffer:v6 offset:0 atIndex:0];
  if ([(NTKPrideSplinesQuad *)self numSplinesToDraw]>= 1)
  {
    v12 = 0;
    do
    {
      v13 = [(NTKPrideSplinesQuad *)self splineDrawOrder:v12];
      [v4 setVertexBytes:&v13 length:4 atIndex:7];
      [v4 drawPrimitives:4 vertexStart:0 vertexCount:{-[NTKPrideSplinesQuad numVertsForSpline:](self, "numVertsForSpline:", v13)}];
      v12 = (v12 + 1);
    }

    while (v12 < [(NTKPrideSplinesQuad *)self numSplinesToDraw]);
  }
}

- (BOOL)postSemaphoreComputeForTime:(double)a3
{
  WORD2(self->_mtlSplinesBuffers[2]) = WORD2(self->_mtlSplinesBuffers[2]) + 1 - 3 * ((1431655766 * (WORD2(self->_mtlSplinesBuffers[2]) + 1)) >> 32);
  v4 = [(NTKPrideSplinesQuad *)self currentSplinesBuffer];
  [v4 contents];

  v5 = [(NTKPrideSplinesQuad *)self currentComputeBuffer];
  v6 = [(NTKPrideSplinesQuad *)self getNTKPrideSplineDefinitionFiller];
  [(NTKPrideSplinesQuad *)self numSplines];
  v10 = v5;
  v7 = v6;
  v8 = v5;
  NTKHighPriorityApply();

  return 1;
}

- (BOOL)forceRender
{
  v3 = 1;
  BYTE5(self->_touchCrownHandler) = 1;
  v4 = dispatch_group_create();
  v5 = [(NTKPrideSplinesQuad *)self quadView];
  v6 = [v5 renderSynchronouslyWithImageQueueDiscard:0 inGroup:v4 completion:0];

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

      v9 = [(NTKPrideSplinesQuad *)self quadView];
      v10 = [v9 renderSynchronouslyWithImageQueueDiscard:0 inGroup:v4 completion:0];

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

- (id)snapshotWithScale:(double)a3
{
  v5 = [(NTKPrideSplinesQuad *)self quadView];
  [v5 frame];
  v8 = [(NTKPrideSplinesQuad *)self snapshotWithSize:0 scale:v6 apl:v7, a3];

  return v8;
}

- (id)snapshotWithSize:(CGSize)a3 scale:(double)a4 apl:(float *)a5
{
  if (a5)
  {
    v6 = [(NTKPrideSplinesQuad *)self quadView:a3.width];
    v15 = 0;
    [v6 computeAPLAndSnapshot:&v15];
    v8 = v7;
    v9 = v15;
    *a5 = v8;
  }

  else
  {
    height = a3.height;
    width = a3.width;
    v13 = [(NTKPrideSplinesQuad *)self quadView];
    v9 = [v13 snapshotInRect:0.0 scale:0.0 time:{width, height, a4, CACurrentMediaTime()}];
  }

  return v9;
}

- (BOOL)shouldForceRender
{
  if (BYTE5(self->_touchCrownHandler))
  {
    return 1;
  }

  v3 = [(NTKPrideSplinesQuad *)self quadView];
  v4 = [v3 isSnapshotting];

  return v4;
}

- (void)strumToOffset:(double)a3 withVelocity:(double)a4
{
  if ((BYTE4(self->_touchCrownHandler) & 1) == 0)
  {
    [*(&self->super._timeScale + 1) strumToOffset:a3 withVelocity:a4];
  }
}

- (void)tapAtPoint:(CGPoint)a3 atTime:(double)a4
{
  y = a3.y;
  x = a3.x;
  v12 = [(NTKPrideSplinesQuad *)self quadView];
  [v12 bounds];
  v9 = x / v8;
  *&v9 = x / v8;
  v11 = y / v10;
  *&v11 = y / v10;
  [*(&self->super._timeScale + 1) startWaveAtX:v9 y:v11 atTime:a4];
}

- (void)handleSingleTap:(id)a3
{
  if ((BYTE4(self->_touchCrownHandler) & 1) == 0)
  {
    v5 = a3;
    v11 = [(NTKPrideSplinesQuad *)self quadView];
    [v5 locationInView:v11];
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

- (int)numVertsForSpline:(int)a3
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return -1;
}

- (float)interpolationStepSizeForSpline:(int)a3
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (float)computeAmplitudeForControlPoint:(int)a3 inSpline:(int)a4 atTime:(double)a5
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (float)globalAmplitudeForTime:(double)a3
{
  sub_39C0();
  sub_39B0();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (void)startWavesAtTime:(double)a3
{
  sub_39C0();
  sub_39B0();

  NSRequestConcreteImplementation();
}

- (void)generateControlPointsForSpline:(int)a3
{
  sub_39C0();
  sub_39B0();

  NSRequestConcreteImplementation();
}

- (void)setAmplitude:(float)a3 forControlPoint:(int)a4 ofSpline:(int)a5
{
  sub_39C0();
  sub_39B0();

  NSRequestConcreteImplementation();
}

- (float)ampltiudeForControlPoint:(int)a3 ofSpline:(int)a4
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

- (void)setNoise:(int)a3 forControlPoint:(int)a4 inSpline:
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