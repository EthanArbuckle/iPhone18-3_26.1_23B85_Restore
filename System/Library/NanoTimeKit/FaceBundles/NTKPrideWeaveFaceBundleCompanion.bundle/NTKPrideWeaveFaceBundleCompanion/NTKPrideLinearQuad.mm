@interface NTKPrideLinearQuad
- ($8EF4127CF77ECA3DDB612FCF233DC3A8)noiseConfiguration;
- (BOOL)preSemaphoreComputeForTime:(double)time;
- (BOOL)shouldForceRender;
- (NTKPrideLinearQuad)initWithDevice:(id)device useXRsRGB:(BOOL)b touchCrownHandler:(id)handler;
- (float)_xPositionForSpline:(int)spline;
- (float)globalAmplitudeForTime:(double)time;
- (float)noiseSamplePositionForControlPoint:(int)point inSpline:(int)spline;
- (id)generateVignetteTextureData;
- (id)getNTKPrideSplineDefinitionFiller;
- (id)renderPipelineManager;
- (int)numControlPointsPerSpline;
- (int)numSplines;
- (void)_computePigeonLocationsForPigeons:(int)pigeons inHoles:(int)holes pigeonIndices:(int *)indices pigeonToHole:(int *)hole pigeonsPerHole:(int *)perHole;
- (void)_generateControlPointDampingCoefficients;
- (void)_generateSplineColors;
- (void)_generateSplinePositions;
- (void)_initializePerSplineData;
- (void)applyTransitionFromBandedToFabricWithFraction:(double)fraction;
- (void)clearWaves;
- (void)dealloc;
- (void)handleScreenOff;
- (void)processSpline:(int)spline;
- (void)setBandedMode;
- (void)setFabricMode;
- (void)startWavesAtTime:(double)time;
@end

@implementation NTKPrideLinearQuad

- (void)processSpline:(int)spline
{
  v4 = *&self->_controlPointsDampingCoefficients[88] + 320 * spline;
  controlPointsBuffer = [*(v4 + 240) controlPointsBuffer];
  LODWORD(v13) = 0;
  v6 = [(NTKPrideMetalQuad *)self clkDevice:0];
  sub_528C(v6, &v12);

  v7 = DWORD1(v12);
  if (SDWORD1(v12) >= 1)
  {
    v8 = 0;
    v9 = v4;
    do
    {
      v10 = vadd_f32(vadd_f32(*v9, vmul_f32(v9[18], vmul_n_f32(*(&self->super._amplitudeMultiplier + 2 * v8), *(v4 + 96 + 4 * v8)))), 0xBF000000BF000000);
      *(*controlPointsBuffer + 8 * v8++) = vadd_f32(v10, v10);
      ++v9;
    }

    while (v7 != v8);
  }

  v11 = *(v4 + 240);

  [v11 process];
}

- (int)numSplines
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  clkDevice = [(NTKPrideMetalQuad *)self clkDevice];
  sub_528C(clkDevice, v4);

  return v4[0];
}

- (int)numControlPointsPerSpline
{
  LODWORD(v5) = 0;
  v2 = [(NTKPrideMetalQuad *)self clkDevice:0];
  sub_528C(v2, &v4);

  return DWORD1(v4);
}

- (void)_generateSplineColors
{
  clkDevice = [(NTKPrideMetalQuad *)self clkDevice];
  if ([clkDevice deviceCategory] == &dword_0 + 1)
  {
    v5 = &unk_1AFA0;
  }

  else
  {
    v5 = &unk_1AF00;
  }

  if ([(NTKPrideLinearQuad *)self numSplines]>= 1)
  {
    v6 = 0;
    v7 = 312;
    do
    {
      v8 = v5[v6];
      if (LOBYTE(self->_currentStyle) == 1)
      {
        v9 = vmovl_s16(PRIDE_COLORS_2019_XR_SRGB[v8]);
        CLKUIConvertToRGBfFromXRSRGBf();
      }

      else
      {
        v2 = v2 & 0xFFFFFFFF00000000 | PRIDE_COLORS_2019[v8];
        CLKUIConvertToRGBfFromSRGB8_fast();
      }

      *(*&self->_controlPointsDampingCoefficients[88] + v7 - 56) = v10;
      clkDevice = clkDevice & 0xFFFFFFFF00000000 | PRIDE_COLORS_2018[*(*&self->_controlPointsDampingCoefficients[88] + v7)];
      CLKUIConvertToRGBfFromSRGB8_fast();
      *(*&self->_controlPointsDampingCoefficients[88] + v7 - 24) = v11;
      ++v6;
      v7 += 320;
    }

    while (v6 < [(NTKPrideLinearQuad *)self numSplines]);
  }
}

- (id)generateVignetteTextureData
{
  v2 = [[NSMutableData alloc] initWithCapacity:4096];
  for (i = 0; i != 64; ++i)
  {
    v4 = 0;
    v5 = (i / 63.0) + -0.5 + (i / 63.0) + -0.5;
    v6 = v5 * v5;
    do
    {
      v7 = pow(sqrt(v6 + ((v4 / 63.0) + -0.5) * ((v4 / 63.0) + -0.5) * 0.075), 8.0);
      v8 = pow(2.71828183, v7 * -5.0);
      v10 = (v8 * 255.0);
      [v2 appendBytes:&v10 length:1];
      ++v4;
    }

    while (v4 != 64);
  }

  return v2;
}

- (void)_computePigeonLocationsForPigeons:(int)pigeons inHoles:(int)holes pigeonIndices:(int *)indices pigeonToHole:(int *)hole pigeonsPerHole:(int *)perHole
{
  pigeonsCopy = pigeons;
  *hole = malloc_type_calloc(pigeons, 4uLL, 0x100004052888210uLL);
  *indices = malloc_type_calloc(pigeonsCopy, 4uLL, 0x100004052888210uLL);
  v13 = malloc_type_calloc(holes, 4uLL, 0x100004052888210uLL);
  *perHole = v13;
  if (pigeons >= 1)
  {
    v14 = 0;
    v15 = *indices;
    v16 = *hole;
    do
    {
      v17 = holes / pigeons * v14;
      v18 = v17;
      v19 = ((v17 - v17) * pigeons / holes);
      if (vabdd_f64(1.0, v19) < 0.00001)
      {
        v19 = 1;
      }

      v15[v14] = v19;
      v16[v14++] = v18;
      ++v13[v18];
    }

    while (pigeons != v14);
  }
}

- (void)_generateSplinePositions
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  clkDevice = [(NTKPrideMetalQuad *)self clkDevice];
  sub_528C(clkDevice, &v38);

  if ([(NTKPrideLinearQuad *)self numSplines]>= 1)
  {
    v4 = 0;
    v5 = *(&v39 + 3);
    v6 = *(&v40 + 2);
    v7 = 248;
    do
    {
      *(*&self->_controlPointsDampingCoefficients[88] + v7) = v6 + (v5 * v4++);
      v7 += 320;
    }

    while (v4 < [(NTKPrideLinearQuad *)self numSplines]);
  }

  v36 = 0;
  v37 = 0;
  v35 = 0;
  [(NTKPrideLinearQuad *)self _computePigeonLocationsForPigeons:[(NTKPrideLinearQuad *)self numSplines] inHoles:6 pigeonIndices:&v37 pigeonToHole:&v36 pigeonsPerHole:&v35];
  v8 = 0;
  v9 = 0;
  v10 = DWORD2(v39);
  v31 = *&v39;
  v11 = *(&v40 + 3);
  v12 = *(&v40 + 1);
  v13 = *(&v40 + 1);
  v14 = (SDWORD2(v39) + -1.0) * 0.5;
  do
  {
    v15 = *(v35 + v8);
    v33 = 0;
    v34 = 0;
    v32 = 0;
    [(NTKPrideLinearQuad *)self _computePigeonLocationsForPigeons:v15 inHoles:v10 pigeonIndices:&v33 pigeonToHole:&v34 pigeonsPerHole:&v32];
    v16 = v34;
    if (v15 >= 1)
    {
      v17 = 0;
      v19 = v32;
      v18 = v33;
      v20 = (v11 + (v31 * v8));
      v21 = *&self->_controlPointsDampingCoefficients[88] + 320 * v9;
      v9 += v15;
      v22 = v34;
      do
      {
        v24 = *v18++;
        v23 = v24;
        v25 = (v21 + v17);
        v25[38].i32[1] = v24;
        v25[39].i32[0] = v8;
        v26 = *v22;
        v27 = v19[v26];
        v25[38].i32[0] = v27;
        v28 = *v22++;
        v29 = (v23 * 2.0 + 1.0) / (2 * v27) + -0.5;
        v30.f64[0] = v20 + v13 * (v26 - v14) + (v29 + v29) * v13 * 0.5;
        v25[35].f32[0] = v12 / v19[v28];
        v30.f64[1] = v20 + v13 * (v26 - v14);
        v25[34] = vcvt_f32_f64(v30);
        v17 += 320;
      }

      while (320 * v15 != v17);
    }

    free(v16);
    free(v33);
    free(v32);
    ++v8;
  }

  while (v8 != 6);
  free(v37);
  free(v36);
  free(v35);
}

- (void)_generateControlPointDampingCoefficients
{
  LODWORD(v9) = 0;
  v3 = [(NTKPrideMetalQuad *)self clkDevice:0];
  sub_528C(v3, &v8);

  v4 = DWORD1(v8);
  if (SDWORD1(v8) >= 1)
  {
    memset_pattern16(&self->super._amplitudeMultiplier, &unk_1AEF0, 8 * DWORD1(v8));
  }

  v5 = vdup_n_s32(0x3F19999Au);
  v6 = vdup_n_s32(0x3F4CCCCDu);
  *&self->super._amplitudeMultiplier = 1048576000;
  *self->_controlPointsDampingCoefficients = v5;
  *&self->_controlPointsDampingCoefficients[8] = v6;
  v7 = &self->super._amplitudeMultiplier + 2 * v4;
  *(v7 - 3) = v6;
  *(v7 - 2) = v5;
  *(v7 - 1) = 1048576000;
}

- (float)_xPositionForSpline:(int)spline
{
  v3 = *&self->_controlPointsDampingCoefficients[88] + 320 * spline;
  v4 = *(v3 + 272);
  v5 = *(v3 + 248);
  aspectRatio = self->_aspectRatio;
  CLKInterpolateBetweenFloatsUnclipped();
  return v7;
}

- (void)_initializePerSplineData
{
  LODWORD(v11) = 0;
  v3 = [(NTKPrideMetalQuad *)self clkDevice:0];
  sub_528C(v3, &v10);

  *&self->_controlPointsDampingCoefficients[88] = malloc_type_calloc([(NTKPrideLinearQuad *)self numSplines], 0x140uLL, 0x1080040D7407E77uLL);
  if ([(NTKPrideLinearQuad *)self numSplines]>= 1)
  {
    v4 = 0;
    v5 = DWORD1(v10);
    v6 = 240;
    do
    {
      v7 = [[NTKCubicSpline alloc] initWithNumberOfControlPoints:v5 isClosed:0];
      v8 = *&self->_controlPointsDampingCoefficients[88];
      v9 = *(v8 + v6);
      *(v8 + v6) = v7;

      ++v4;
      v6 += 320;
    }

    while (v4 < [(NTKPrideLinearQuad *)self numSplines]);
  }
}

- (id)renderPipelineManager
{
  if (qword_2CC50 != -1)
  {
    sub_15194();
  }

  v3 = qword_2CC48;

  return v3;
}

- (NTKPrideLinearQuad)initWithDevice:(id)device useXRsRGB:(BOOL)b touchCrownHandler:(id)handler
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = NTKPrideLinearQuad;
  v9 = [(NTKPrideSplinesQuad *)&v16 initWithDevice:deviceCopy touchCrownHandler:handler];
  v10 = v9;
  if (v9)
  {
    LOBYTE(v9->_currentStyle) = b;
    [(NTKPrideLinearQuad *)v9 _initializePerSplineData];
    [(NTKPrideLinearQuad *)v10 _generateSplinePositions];
    [(NTKPrideLinearQuad *)v10 _generateSplineColors];
    [(NTKPrideLinearQuad *)v10 _generateControlPointDampingCoefficients];
    [deviceCopy screenBounds];
    v12 = v11;
    [deviceCopy screenBounds];
    v14 = v12 / v13;
    *&v10->_perSplineData = v14;
    [(NTKPrideLinearQuad *)v10 clearWaves];
    v10->_vignetteAmount = 1.0;
    LOBYTE(v10->_displayMode) = 1;
    HIDWORD(v10->_perSplineData) = 1065353216;
    [(NTKPrideSplinesQuad *)v10 setControlPointsNeedUpdate];
  }

  return v10;
}

- (void)dealloc
{
  if ([(NTKPrideLinearQuad *)self numSplines]>= 1)
  {
    v3 = 0;
    v4 = 240;
    do
    {
      v5 = *&self->_controlPointsDampingCoefficients[88];
      v6 = *(v5 + v4);
      *(v5 + v4) = 0;

      ++v3;
      v4 += 320;
    }

    while (v3 < [(NTKPrideLinearQuad *)self numSplines]);
  }

  free(*&self->_controlPointsDampingCoefficients[88]);
  v7.receiver = self;
  v7.super_class = NTKPrideLinearQuad;
  [(NTKPrideSplinesQuad *)&v7 dealloc];
}

- (void)applyTransitionFromBandedToFabricWithFraction:(double)fraction
{
  v8 = 0;
  v4 = [(NTKPrideMetalQuad *)self clkDevice:0];
  sub_528C(v4, &v7);

  CLKInterpolateBetweenFloatsUnclipped();
  *&v5 = v5;
  self->_aspectRatio = *&v5;
  [(NTKPrideSplinesQuad *)self setControlPointsNeedUpdate];
  v6 = 1.0;
  if ((v8 & 1) == 0)
  {
    v6 = 1.0 - self->_aspectRatio;
  }

  *(&self->_perSplineData + 1) = v6;
}

- (void)setBandedMode
{
  if (self->_aspectRatio != 0.0)
  {
    [(NTKPrideSplinesQuad *)self setControlPointsNeedUpdate];
  }

  self->_aspectRatio = 0.0;
  HIDWORD(self->_perSplineData) = 1065353216;
  *&self->_paused = 0;
}

- (void)setFabricMode
{
  if (self->_aspectRatio != 1.0)
  {
    [(NTKPrideSplinesQuad *)self setControlPointsNeedUpdate];
  }

  v6 = 0;
  v3 = [(NTKPrideMetalQuad *)self clkDevice:0];
  sub_528C(v3, &v5);

  self->_aspectRatio = 1.0;
  LOBYTE(v4) = v6;
  *(&self->_perSplineData + 1) = v4;
  *&self->_paused = 1;
}

- (void)handleScreenOff
{
  v4.receiver = self;
  v4.super_class = NTKPrideLinearQuad;
  [(NTKPrideMetalQuad *)&v4 handleScreenOff];
  LOBYTE(self->_displayMode) = 0;
  self->_vignetteAmount = 0.0;
  [(NTKPrideLinearQuad *)self clearWaves];
  quadView = [(NTKPrideLinearQuad *)self quadView];
  [quadView discardContents];
}

- (void)clearWaves
{
  v3.receiver = self;
  v3.super_class = NTKPrideLinearQuad;
  [(NTKPrideSplinesQuad *)&v3 clearWaves];
  self->_currentFade = -10.0;
  self->_vignetteAmount = 1.0;
  LOBYTE(self->_displayMode) = 0;
}

- (float)globalAmplitudeForTime:(double)time
{
  v3 = time - self->_currentFade;
  v4 = 4.0;
  if (v3 < 0.0)
  {
    v4 = 16.0;
  }

  v5 = pow(2.71828183, dbl_1AEE0[*&self->_paused == 1] * ((v4 * v3) * (v4 * v3))) * 0.16;
  v6 = fminf((v3 + -2.0) * -7.0, 1.0);
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return v5 * v6;
}

- (void)startWavesAtTime:(double)time
{
  if (*&self->_paused)
  {
    touchCrownHandler = [(NTKPrideSplinesQuad *)self touchCrownHandler];
    [(NTKPrideMetalQuad *)self currentTime];
    v5 = v4;
    LODWORD(v4) = 0.5;
    LODWORD(v6) = 0.5;
    [touchCrownHandler startWaveAtX:v4 y:v6 atTime:v5];
  }

  else
  {
    v7 = time + 0.3;
    self->_currentFade = v7;
  }
}

- (BOOL)shouldForceRender
{
  v5.receiver = self;
  v5.super_class = NTKPrideLinearQuad;
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
  v2 = *&self->_paused;
  if (v2 >= 2)
  {
    sub_151D4();
  }

  clkDevice = [(NTKPrideMetalQuad *)self clkDevice];
  v4 = _NoiseConfiguration(clkDevice, v2);

  return v4;
}

- (float)noiseSamplePositionForControlPoint:(int)point inSpline:(int)spline
{
  v4 = *(self + 272) + 320 * spline;
  v5 = *(v4 + 8 * point);
  if (!*(self + 312))
  {
    LODWORD(v5) = *(v4 + 276);
  }

  return *&v5;
}

- (BOOL)preSemaphoreComputeForTime:(double)time
{
  v8.receiver = self;
  v8.super_class = NTKPrideLinearQuad;
  v4 = [(NTKPrideSplinesQuad *)&v8 preSemaphoreComputeForTime:time];
  if (v4)
  {
    vignetteAmount = self->_vignetteAmount;
    if (LOBYTE(self->_displayMode) == 1 && vignetteAmount != 1.0)
    {
      vignetteAmount = vignetteAmount + 0.0333333333;
      if (vignetteAmount > 1.0)
      {
        LOBYTE(self->_displayMode) = 0;
        vignetteAmount = 1.0;
      }
    }

    self->_vignetteAmount = vignetteAmount;
  }

  return v4;
}

- (id)getNTKPrideSplineDefinitionFiller
{
  v22 = 0;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  clkDevice = [(NTKPrideMetalQuad *)self clkDevice];
  sub_528C(clkDevice, &v19);

  v4 = 0.25;
  if (*&self->_paused == 1)
  {
    v4 = 0.75;
  }

  v5 = fmin((1.0 - self->_aspectRatio - v4) * 2.0 + 0.5, 1.0);
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  v6 = v5;
  vignetteAmount = self->_vignetteAmount;
  [(NTKPrideSplinesQuad *)self fadeMultiplier];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = v19;
  v14 = v20;
  v12[2] = sub_50F0;
  v12[3] = &unk_24738;
  v12[4] = self;
  v15 = v21;
  v16 = v22;
  v17 = v6;
  v18 = vignetteAmount * v8;
  v9 = objc_retainBlock(v12);
  v10 = objc_retainBlock(v9);

  return v10;
}

@end