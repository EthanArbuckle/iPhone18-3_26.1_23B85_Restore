@interface NTKPrideCircularQuad
- ($8EF4127CF77ECA3DDB612FCF233DC3A8)noiseConfiguration;
- ($F17434BF0011F66C835719901D77F978)advanceConfig:(id)a3;
- ($F17434BF0011F66C835719901D77F978)advanceCurrentConfig;
- ($F17434BF0011F66C835719901D77F978)generateNextRandomConfigFromConfig:(id)a3;
- ($F17434BF0011F66C835719901D77F978)generateNextRandomConfigFromCurrentConfig;
- (BOOL)postSemaphoreComputeForTime:(double)a3;
- (BOOL)preSemaphoreComputeForTime:(double)a3;
- (BOOL)shouldForceRender;
- (BOOL)willConsumeTouch:(id)a3;
- (NTKPrideCircularQuad)initWithDevice:(id)a3 useXRsRGB:(BOOL)a4;
- (float)_dampingFactorForSpline:(int)a3;
- (float)_dialRadiusForSpline:(int)a3;
- (float)_rectRadiusForSpline:(int)a3;
- (float)currentSplineWidth;
- (float)globalAmplitudeForTime:(double)a3;
- (float)interpolationStepSizeForSpline:(int)a3;
- (float)softness;
- (id)generateVignetteTextureData;
- (id)getNTKPrideSplineDefinitionFiller;
- (id)renderPipelineManager;
- (id)splineColorAtIndex:(int)a3;
- (int)_numVertsForSpline:(int)a3;
- (int)numControlPointsPerSpline;
- (int)numSplines;
- (void)_generateControlPointDampingCoefficients;
- (void)applyTransitionFromDialToFullScreenWithFraction:(double)a3;
- (void)clearWaves;
- (void)dealloc;
- (void)handleScreenOff;
- (void)initializePerSplineData;
- (void)performWristRaiseAnimation;
- (void)processSpline:(int)a3;
- (void)randomizeSplineColors;
- (void)setColorConfig:(id)a3;
- (void)setDialMode;
- (void)setFullscreenMode;
- (void)startWavesAtTime:(double)a3;
@end

@implementation NTKPrideCircularQuad

- (float)softness
{
  *(&v4 + 1) = 0;
  v6 = 0;
  v5 = 0;
  v2 = [(NTKPrideMetalQuad *)self clkDevice];
  sub_120BC(v2, &v4);

  return *(&v4 + 2);
}

- (float)currentSplineWidth
{
  v7 = 0uLL;
  v9 = 0;
  v8 = 0;
  v3 = [(NTKPrideMetalQuad *)self clkDevice];
  sub_120BC(v3, &v7);

  v4 = *&self->_perSplineData;
  CLKInterpolateBetweenFloatsClipped();
  *&v5 = v5;
  return (*&v5 - *(&v7 + 3)) / (v7 - 1);
}

- (void)processSpline:(int)a3
{
  LODWORD(v14) = 0;
  v5 = [(NTKPrideMetalQuad *)self clkDevice:0];
  sub_120BC(v5, &v13);

  v6 = *&self->super._amplitudeMultiplier + 704 * a3;
  v7 = [*(v6 + 640) controlPointsBuffer];
  v8 = DWORD1(v13);
  if (SDWORD1(v13) >= 1)
  {
    v9 = 0;
    v10 = v6;
    do
    {
      v11 = vadd_f32(vadd_f32(*v10, vmul_n_f32(v10[48], *(v6 + 688) * *(v6 + 256 + 4 * v9))), 0xBF000000BF000000);
      *(*v7 + 8 * v9++) = vadd_f32(v11, v11);
      ++v10;
    }

    while (v8 != v9);
  }

  v12 = *(v6 + 640);

  [v12 process];
}

- (id)splineColorAtIndex:(int)a3
{
  v19 = 0uLL;
  v21 = 0;
  v20 = 0;
  v5 = [(NTKPrideMetalQuad *)self clkDevice];
  sub_120BC(v5, &v19);

  v6 = v19 - 1;
  if (v19 > a3)
  {
    v6 = a3;
  }

  if (a3 >= 0)
  {
    v7 = ~v6;
  }

  else
  {
    v7 = -1;
  }

  v8 = (*&self->super._amplitudeMultiplier + 704 * (v7 + v19));
  [(NTKPrideCircularQuad *)self splineColorTransitionFraction:v8[84]];
  if (self->_currentColorConfig.endReversed)
  {
    CLKUIConvertToXRSRGBfFromRGBf();
    v18 = v9;
    v10 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedSRGB);
    *components = vcvtq_f64_f32(*v18.f32);
    v23 = vcvt_hight_f64_f32(v18);
    v11 = CGColorCreate(v10, components);
    v12 = [UIColor colorWithCGColor:v11];
    CGColorRelease(v11);
    CGColorSpaceRelease(v10);
  }

  else
  {
    CLKUIConvertToSRGBfFromRGBf_fast();
    v12 = [UIColor colorWithRed:v16 green:v13 blue:v14 alpha:v15];
  }

  return v12;
}

- ($F17434BF0011F66C835719901D77F978)generateNextRandomConfigFromConfig:(id)a3
{
  v3 = *&a3.var2;
  v4 = *&a3.var0;
  v5 = rand();
  if (v5 <= 0)
  {
    v6 = -(-v5 & 7);
  }

  else
  {
    v6 = v5 & 7;
  }

  v7 = rand();
  LODWORD(v8) = (v4 + 3 - ((v4 + 3 + (((v4 + 3) >> 12) & 7)) & 0xF8));
  if (v6 == v4)
  {
    v8 = v8;
  }

  else
  {
    v8 = v6;
  }

  v9 = v3 & 0xFFFFFF0000000000 | v8 | (((v7 & 1) == 0) << 32);
  v10 = v4;
  result.var2 = v9;
  result.var3 = BYTE4(v9);
  result.var0 = v10;
  result.var1 = BYTE4(v10);
  return result;
}

- ($F17434BF0011F66C835719901D77F978)advanceConfig:(id)a3
{
  v3 = *&a3.var2;
  v4 = *&a3.var0 & 0xFFFFFF0000000000 | *&a3.var2 & 0x1FFFFFFFFLL;
  result.var2 = v3;
  result.var3 = BYTE4(v3);
  result.var0 = v4;
  result.var1 = BYTE4(v4);
  return result;
}

- ($F17434BF0011F66C835719901D77F978)advanceCurrentConfig
{
  v2 = [(NTKPrideCircularQuad *)self advanceConfig:*(&self->_currentStyle + 4), *&self->_currentColorConfig.startColor];
  result.var2 = v3;
  result.var3 = BYTE4(v3);
  result.var0 = v2;
  result.var1 = BYTE4(v2);
  return result;
}

- ($F17434BF0011F66C835719901D77F978)generateNextRandomConfigFromCurrentConfig
{
  v2 = [(NTKPrideCircularQuad *)self generateNextRandomConfigFromConfig:*(&self->_currentStyle + 4), *&self->_currentColorConfig.startColor];
  result.var2 = v3;
  result.var3 = BYTE4(v3);
  result.var0 = v2;
  result.var1 = BYTE4(v2);
  return result;
}

- (void)randomizeSplineColors
{
  v3 = [(NTKPrideCircularQuad *)self generateNextRandomConfigFromConfig:*(&self->_currentStyle + 4), *&self->_currentColorConfig.startColor];
  v6 = [(NTKPrideCircularQuad *)self advanceConfig:v3, v4];

  [(NTKPrideCircularQuad *)self setColorConfig:v6, v5];
}

- (void)setColorConfig:(id)a3
{
  v3 = *&a3.var2;
  *(&self->_currentStyle + 4) = *&a3.var0;
  *&self->_currentColorConfig.startColor = *&a3.var2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10B3C;
  v6[3] = &unk_24AE8;
  v6[4] = self;
  [(NTKPrideCircularQuad *)self _colorSequenceForStartIndex:*&a3.var0 reverseDirection:a3.var1 colorSequence:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10B5C;
  v5[3] = &unk_24AE8;
  v5[4] = self;
  [(NTKPrideCircularQuad *)self _colorSequenceForStartIndex:v3 reverseDirection:HIDWORD(v3) & 1 colorSequence:v5];
}

- (int)numSplines
{
  v4 = 0uLL;
  v6 = 0;
  v5 = 0;
  v2 = [(NTKPrideMetalQuad *)self clkDevice];
  sub_120BC(v2, &v4);

  return v4;
}

- (int)numControlPointsPerSpline
{
  LODWORD(v5) = 0;
  v2 = [(NTKPrideMetalQuad *)self clkDevice:0];
  sub_120BC(v2, &v4);

  return DWORD1(v4);
}

- (float)interpolationStepSizeForSpline:(int)a3
{
  LODWORD(v8) = 0;
  v5 = [(NTKPrideMetalQuad *)self clkDevice:0];
  sub_120BC(v5, &v7);

  return SDWORD1(v7) / ((*(*&self->super._amplitudeMultiplier + 704 * a3 + 700) >> 1) - 1);
}

- (id)generateVignetteTextureData
{
  v2 = [[NSMutableData alloc] initWithCapacity:4096];
  v3 = 0;
  v6 = -1;
  do
  {
    v4 = 64;
    do
    {
      [v2 appendBytes:&v6 length:1];
      --v4;
    }

    while (v4);
    ++v3;
  }

  while (v3 != 64);

  return v2;
}

- (float)_dampingFactorForSpline:(int)a3
{
  if (a3 <= 4)
  {
    v4 = a3 - 5;
LABEL_5:
    v8 = v4 * 0.523598776;
    *&v7 = cosf(v8) * 0.4 + 0.6;
    *&v7 = *&v7 * *&v7;
    return *&v7;
  }

  v6 = [(NTKPrideCircularQuad *)self numSplines];
  LODWORD(v7) = 1.0;
  if ((v6 - 5) <= a3)
  {
    v4 = [(NTKPrideCircularQuad *)self numSplines]- a3 - 6;
    goto LABEL_5;
  }

  return *&v7;
}

- (void)_generateControlPointDampingCoefficients
{
  v8 = 0uLL;
  v10 = 0;
  v9 = 0;
  v3 = [(NTKPrideMetalQuad *)self clkDevice];
  sub_120BC(v3, &v8);

  v4 = v8;
  if (v8 >= 1)
  {
    v5 = 0;
    v6 = 688;
    do
    {
      [(NTKPrideCircularQuad *)self _dampingFactorForSpline:v5];
      *(*&self->super._amplitudeMultiplier + v6) = v7;
      ++v5;
      v6 += 704;
    }

    while (v4 != v5);
  }
}

- (float)_dialRadiusForSpline:(int)a3
{
  v6 = 0uLL;
  v8 = 0;
  v7 = 0;
  v4 = [(NTKPrideMetalQuad *)self clkDevice];
  sub_120BC(v4, &v6);

  return *(&v6 + 3) + ((a3 / (v6 - 1)) * (*&v7 - *(&v6 + 3)));
}

- (float)_rectRadiusForSpline:(int)a3
{
  v6 = 0uLL;
  v8 = 0;
  v7 = 0;
  v4 = [(NTKPrideMetalQuad *)self clkDevice];
  sub_120BC(v4, &v6);

  return *(&v6 + 3) + ((a3 / (v6 - 1)) * (*(&v7 + 1) - *(&v6 + 3)));
}

- (int)_numVertsForSpline:(int)a3
{
  v13 = 0;
  v12 = 0;
  v5 = [(NTKPrideMetalQuad *)self clkDevice:0];
  sub_120BC(v5, &v11);

  v6 = [(NTKPrideMetalQuad *)self clkDevice];
  if ([v6 deviceCategory] == &dword_0 + 1)
  {
    v7 = 125;
  }

  else
  {
    v7 = 200;
  }

  v8 = [(NTKPrideMetalQuad *)self clkDevice];
  if ([v8 deviceCategory] == &dword_0 + 1)
  {
    v9 = 60;
  }

  else
  {
    v9 = 100;
  }

  return 2 * (((*(*&self->super._amplitudeMultiplier + 704 * a3 + 696) * (v7 - v9)) / *&v12) + v9) + 2;
}

- (void)initializePerSplineData
{
  memset(count, 0, sizeof(count));
  v12 = 0;
  v3 = [(NTKPrideMetalQuad *)self clkDevice];
  sub_120BC(v3, count);

  v4 = SLODWORD(count[0]);
  *&self->super._amplitudeMultiplier = malloc_type_calloc(SLODWORD(count[0]), 0x2C0uLL, 0x10800409D81A95DuLL);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = HIDWORD(count[0]);
    v7 = 640;
    do
    {
      v8 = [[NTKCubicSpline alloc] initWithNumberOfControlPoints:v6 isClosed:1];
      v9 = *&self->super._amplitudeMultiplier;
      v10 = *(v9 + v7);
      *(v9 + v7) = v8;

      [(NTKPrideCircularQuad *)self generateControlPointsForSpline:v5];
      *(*&self->super._amplitudeMultiplier + v7 + 60) = [(NTKPrideCircularQuad *)self _numVertsForSpline:v5++];
      v7 += 704;
    }

    while (v4 != v5);
  }
}

- (id)renderPipelineManager
{
  if (qword_2CD78 != -1)
  {
    sub_154E0();
  }

  v3 = qword_2CD70;

  return v3;
}

- (NTKPrideCircularQuad)initWithDevice:(id)a3 useXRsRGB:(BOOL)a4
{
  v6 = a3;
  v14 = 0uLL;
  v16 = 0;
  v15 = 0;
  sub_120BC(v6, &v14);
  v7 = [NTKPrideTouchCrownHandler alloc];
  LODWORD(v8) = 4.0;
  LODWORD(v9) = 2.25;
  v10 = [(NTKPrideTouchCrownHandler *)v7 initWithNumSplines:v14 strumWidth:0 strumSpeed:2 isCyclical:v8 padding:v9];
  v13.receiver = self;
  v13.super_class = NTKPrideCircularQuad;
  v11 = [(NTKPrideSplinesQuad *)&v13 initWithDevice:v6 touchCrownHandler:v10];

  if (v11)
  {
    v11->_currentColorConfig.endReversed = a4;
    [(NTKPrideCircularQuad *)v11 initializePerSplineData];
    [(NTKPrideCircularQuad *)v11 setDefaultSplineColors];
    [(NTKPrideCircularQuad *)v11 _generateControlPointDampingCoefficients];
    [(NTKPrideCircularQuad *)v11 clearWaves];
    HIDWORD(v11->_perSplineData) = 1065353216;
    LOBYTE(v11->_displayMode) = 1;
    v11->_complicationAlphaCallback = 0;
    [(NTKPrideSplinesQuad *)v11 setControlPointsNeedUpdate];
    if ([v6 deviceCategory] != &dword_0 + 1)
    {
      [(NTKPrideCircularQuad *)v11 setDialMode];
    }
  }

  return v11;
}

- (void)dealloc
{
  v9 = 0uLL;
  v11 = 0;
  v10 = 0;
  v3 = [(NTKPrideMetalQuad *)self clkDevice];
  sub_120BC(v3, &v9);

  v4 = v9;
  if (v9 >= 1)
  {
    v5 = 640;
    do
    {
      v6 = *&self->super._amplitudeMultiplier;
      v7 = *(v6 + v5);
      *(v6 + v5) = 0;

      v5 += 704;
      --v4;
    }

    while (v4);
  }

  free(*&self->super._amplitudeMultiplier);
  v8.receiver = self;
  v8.super_class = NTKPrideCircularQuad;
  [(NTKPrideSplinesQuad *)&v8 dealloc];
}

- (void)applyTransitionFromDialToFullScreenWithFraction:(double)a3
{
  CLKInterpolateBetweenFloatsUnclipped();
  *&v4 = v4;
  LODWORD(self->_perSplineData) = LODWORD(v4);

  [(NTKPrideSplinesQuad *)self setControlPointsNeedUpdate];
}

- (void)setDialMode
{
  if (*&self->_perSplineData != 1.0)
  {
    [(NTKPrideSplinesQuad *)self setControlPointsNeedUpdate];
  }

  LODWORD(self->_perSplineData) = 1065353216;
  *&self->_paused = 0;
}

- (void)setFullscreenMode
{
  if (*&self->_perSplineData != 0.0)
  {
    [(NTKPrideSplinesQuad *)self setControlPointsNeedUpdate];
  }

  LODWORD(self->_perSplineData) = 0;
  *&self->_paused = 1;
}

- (void)performWristRaiseAnimation
{
  [(NTKPrideSplinesQuad *)self startWavesAtNextRender];
  LOBYTE(self->_displayMode) = 1;
  HIDWORD(self->_perSplineData) = 0;
}

- (void)handleScreenOff
{
  v4.receiver = self;
  v4.super_class = NTKPrideCircularQuad;
  [(NTKPrideMetalQuad *)&v4 handleScreenOff];
  LOBYTE(self->_displayMode) = 0;
  [(NTKPrideCircularQuad *)self clearWaves];
  [(NTKPrideCircularQuad *)self randomizeSplineColors];
  HIDWORD(self->_perSplineData) = 0;
  v3 = [(NTKPrideCircularQuad *)self quadView];
  [v3 discardContents];
}

- (BOOL)willConsumeTouch:(id)a3
{
  v4 = a3;
  v5 = [(NTKPrideCircularQuad *)self quadView];
  [v5 bounds];
  v22 = v7;
  v23 = v6;
  [v4 locationInView:v5];
  v21 = v8;
  [v4 locationInView:v5];
  v20 = v9;

  v24 = 0uLL;
  v26 = 0;
  v25 = 0;
  v10 = [(NTKPrideMetalQuad *)self clkDevice];
  sub_120BC(v10, &v24);

  v11 = *&self->_paused;
  if (v11 == 1)
  {
    v18 = 1;
  }

  else if (v11)
  {
    v18 = 0;
  }

  else
  {
    _Q2.f64[0] = v21;
    _Q2.f64[1] = v20;
    v13.f64[0] = v23;
    v13.f64[1] = v22;
    *&v13.f64[0] = vcvt_f32_f64(vdivq_f64(_Q2, v13));
    __asm { FMOV            V2.2S, #-1.0 }

    *&_Q2.f64[0] = vmla_f32(*&_Q2.f64[0], 0x4000000040000000, *&v13.f64[0]);
    v18 = sqrtf(vaddv_f32(vmul_f32(*&_Q2.f64[0], *&_Q2.f64[0]))) < *&v25;
  }

  return v18;
}

- (void)clearWaves
{
  v3.receiver = self;
  v3.super_class = NTKPrideCircularQuad;
  [(NTKPrideSplinesQuad *)&v3 clearWaves];
  self->_currentFade = -10.0;
  LOBYTE(self->_displayMode) = 0;
  HIDWORD(self->_perSplineData) = 1065353216;
}

- (float)globalAmplitudeForTime:(double)a3
{
  v3 = a3 - self->_currentFade;
  v4 = 4.0;
  if (v3 < 0.0)
  {
    v4 = 16.0;
  }

  v5 = pow(2.71828183, (v4 * v3) * (v4 * v3) * -0.200000003) * 0.2;
  v6 = fminf((v3 + -1.5) * -7.0, 1.0);
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return v5 * v6;
}

- (void)startWavesAtTime:(double)a3
{
  v7 = [(NTKPrideSplinesQuad *)self touchCrownHandler];
  [(NTKPrideMetalQuad *)self currentTime];
  v5 = v4;
  LODWORD(v4) = 0.5;
  LODWORD(v6) = 0.5;
  [v7 startWaveAtX:v4 y:v6 atTime:v5];
}

- (BOOL)shouldForceRender
{
  v5.receiver = self;
  v5.super_class = NTKPrideCircularQuad;
  if ([(NTKPrideSplinesQuad *)&v5 shouldForceRender])
  {
    displayMode_low = 1;
  }

  else
  {
    displayMode_low = LOBYTE(self->_displayMode);
  }

  return displayMode_low & 1;
}

- ($8EF4127CF77ECA3DDB612FCF233DC3A8)noiseConfiguration
{
  v2 = [(NTKPrideMetalQuad *)self clkDevice];
  v3 = _NoiseConfiguration(v2, 2);

  return v3;
}

- (BOOL)preSemaphoreComputeForTime:(double)a3
{
  v13.receiver = self;
  v13.super_class = NTKPrideCircularQuad;
  v4 = [(NTKPrideSplinesQuad *)&v13 preSemaphoreComputeForTime:a3];
  if (v4)
  {
    v5 = *(&self->_perSplineData + 1);
    if (LOBYTE(self->_displayMode) == 1 && v5 != 1.0)
    {
      v7 = v5 + -1.0;
      v8 = *&self->_currentStyle;
      v9 = 0.0160000008;
      do
      {
        v8 = v8 + ((v8 * -50.0) + (v7 * -180.0)) * 0.001;
        v10 = v8 * 0.001;
        v7 = v10 + v7;
        v5 = v10 + v5;
        v11 = v9 + -0.001;
        v9 = v11;
      }

      while (v9 >= 0.001);
      *&self->_currentStyle = v8;
      if (1.0 - v5 < 0.0001)
      {
        LOBYTE(self->_displayMode) = 0;
        v5 = 1.0;
      }
    }

    *(&self->_perSplineData + 1) = v5;
  }

  return v4;
}

- (id)getNTKPrideSplineDefinitionFiller
{
  memset(v9, 0, 28);
  v3 = [(NTKPrideMetalQuad *)self clkDevice];
  sub_120BC(v3, v9);

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_11D74;
  v7[3] = &unk_24B30;
  v7[4] = self;
  v8[0] = v9[0];
  *(v8 + 12) = *(v9 + 12);
  v4 = objc_retainBlock(v7);
  v5 = objc_retainBlock(v4);

  return v5;
}

- (BOOL)postSemaphoreComputeForTime:(double)a3
{
  v6.receiver = self;
  v6.super_class = NTKPrideCircularQuad;
  [(NTKPrideSplinesQuad *)&v6 postSemaphoreComputeForTime:a3];
  v4 = *&self->_useXRsRGB;
  if (v4 && !*&self->_paused && *&self->_perSplineData == 1.0)
  {
    (*(v4 + 16))(*&self->_currentColorConfig.endColor);
  }

  return 1;
}

@end