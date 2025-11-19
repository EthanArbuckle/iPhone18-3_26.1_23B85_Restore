@interface NTKPrideBetweenLinearQuad
- ($8EF4127CF77ECA3DDB612FCF233DC3A8)noiseConfiguration;
- (BOOL)preSemaphoreComputeForTime:(double)a3;
- (id)getNTKPrideSplineDefinitionFiller;
- (id)noiseSamplePositionForControlPoint:(uint64_t)a3 inSpline:(uint64_t)a4;
- (id)renderPipelineManager;
- (int)splineDrawOrder:(int)a3;
- (void)_generateSplineColors;
- (void)_generateSplinePositions;
- (void)_initializePerSplineData;
- (void)applyTransitionFromBandedToFabricWithFraction:(double)a3;
- (void)dealloc;
@end

@implementation NTKPrideBetweenLinearQuad

- (void)dealloc
{
  v3 = *(&self->super._currentStyle + 1);
  if (v3)
  {
    free(v3);
  }

  v4.receiver = self;
  v4.super_class = NTKPrideBetweenLinearQuad;
  [(NTKPrideLinearQuad *)&v4 dealloc];
}

- (id)renderPipelineManager
{
  if (qword_2CD18 != -1)
  {
    sub_154B8();
  }

  v3 = qword_2CD10;

  return v3;
}

- (void)applyTransitionFromBandedToFabricWithFraction:(double)a3
{
  v3.receiver = self;
  v3.super_class = NTKPrideBetweenLinearQuad;
  [(NTKPrideLinearQuad *)&v3 applyTransitionFromBandedToFabricWithFraction:1.0];
}

- ($8EF4127CF77ECA3DDB612FCF233DC3A8)noiseConfiguration
{
  v2 = [(NTKPrideMetalQuad *)self clkDevice];
  v3 = _NoiseConfiguration(v2, 3);

  return v3;
}

- (void)_generateSplinePositions
{
  v12.receiver = self;
  v12.super_class = NTKPrideBetweenLinearQuad;
  [(NTKPrideLinearQuad *)&v12 _generateSplinePositions];
  v3 = [(NTKPrideMetalQuad *)self clkDevice];
  sub_1001C(v3, v3);
  v5 = v4;

  v6 = *(&self->super._currentStyle + 1);
  *(v6 + 16) = 0;
  *(v6 + 32 * [(NTKPrideBetweenLinearQuad *)self numSplines]- 16) = 1065353216;
  if ([(NTKPrideBetweenLinearQuad *)self numSplines]>= 3)
  {
    v7 = 0;
    v8 = v5 * -0.5;
    v9 = 48;
    do
    {
      v10 = (v7 & 0xFFFFFFFE) * 0.0833333333 + 0.166666667;
      *(*(&self->super._currentStyle + 1) + v9) = v10 + (v8 * (((v7 + 1) & 1) - 1));
      v9 += 32;
      v11 = v7 + 2 < [(NTKPrideBetweenLinearQuad *)self numSplines]- 1;
      ++v7;
    }

    while (v11);
  }
}

- (id)noiseSamplePositionForControlPoint:(uint64_t)a3 inSpline:(uint64_t)a4
{
  if (([a1 numSplines] - 1) <= a4)
  {
    return objc_msgSendSuper2(&v9, "noiseSamplePositionForControlPoint:inSpline:", a3, a4, a1, NTKPrideBetweenLinearQuad, v10.receiver, v10.super_class);
  }

  v7 = a4 + 1;
  if (dword_1B1F0[a4] == dword_1B1F0[v7])
  {
    return objc_msgSendSuper2(&v9, "noiseSamplePositionForControlPoint:inSpline:", a3, a4, a1, NTKPrideBetweenLinearQuad, v10.receiver, v10.super_class);
  }

  else
  {
    return objc_msgSendSuper2(&v10, "noiseSamplePositionForControlPoint:inSpline:", a3, v7, v9.receiver, v9.super_class, a1, NTKPrideBetweenLinearQuad);
  }
}

- (void)_generateSplineColors
{
  if ([(NTKPrideBetweenLinearQuad *)self numSplines]>= 1)
  {
    v4 = 0;
    v5 = 0;
    v10 = vdupq_n_s32(0x437F0000u);
    do
    {
      v6 = [(NTKPrideLinearQuad *)self useXRsRGB];
      v7 = dword_1B1F0[v5];
      if (v6)
      {
        v8 = vmovl_s16(PRIDE_COLORS_2020_XR_SRGB[v7]);
        CLKUIConvertToRGBfFromXRSRGBf();
      }

      else
      {
        v2 = v2 & 0xFFFFFFFF00000000 | PRIDE_COLORS_2020[v7];
        CLKUIConvertToRGBfFromSRGB8_fast();
      }

      *(*(&self->super._currentStyle + 1) + v4) = v9;
      ++v5;
      v4 += 32;
    }

    while (v5 < [(NTKPrideBetweenLinearQuad *)self numSplines]);
  }
}

- (void)_initializePerSplineData
{
  v3.receiver = self;
  v3.super_class = NTKPrideBetweenLinearQuad;
  [(NTKPrideLinearQuad *)&v3 _initializePerSplineData];
  *(&self->super._currentStyle + 1) = malloc_type_calloc([(NTKPrideBetweenLinearQuad *)self numSplines], 0x20uLL, 0x1000040DD0CCB3EuLL);
}

- (int)splineDrawOrder:(int)a3
{
  v3 = a3;
  if (LOBYTE(self->_amplitudeIsLarge[5]) == 1)
  {
    return [(NTKPrideBetweenLinearQuad *)self numSplinesToDraw]+ ~a3;
  }

  return v3;
}

- (id)getNTKPrideSplineDefinitionFiller
{
  v9.receiver = self;
  v9.super_class = NTKPrideBetweenLinearQuad;
  [(NTKPrideLinearQuad *)&v9 getNTKPrideSplineDefinitionFiller];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_FF1C;
  v7[3] = &unk_24AA0;
  v8 = v7[4] = self;
  v3 = v8;
  v4 = objc_retainBlock(v7);
  v5 = objc_retainBlock(v4);

  return v5;
}

- (BOOL)preSemaphoreComputeForTime:(double)a3
{
  v5 = 0;
  v6 = 0;
  do
  {
    v6 += *(&self->super._useXRsRGB + v5 + 1);
    v5 += 2;
  }

  while (v5 != 24);
  if (v6)
  {
    if ((self->_amplitudeIsLarge[4] & 0x100) == 0)
    {
      HIBYTE(self->_amplitudeIsLarge[4]) = 1;
    }
  }

  else if (HIBYTE(self->_amplitudeIsLarge[4]))
  {
    HIBYTE(self->_amplitudeIsLarge[4]) = 0;
    LOBYTE(self->_amplitudeIsLarge[5]) ^= 1u;
  }

  v9 = v3;
  v10 = v4;
  v8.receiver = self;
  v8.super_class = NTKPrideBetweenLinearQuad;
  return [(NTKPrideLinearQuad *)&v8 preSemaphoreComputeForTime:a3];
}

@end