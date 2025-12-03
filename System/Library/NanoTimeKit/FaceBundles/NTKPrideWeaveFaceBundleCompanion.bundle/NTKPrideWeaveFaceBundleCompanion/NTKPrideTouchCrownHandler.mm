@interface NTKPrideTouchCrownHandler
- (NTKPrideTouchCrownHandler)initWithNumSplines:(int)splines strumWidth:(float)width strumSpeed:(float)speed isCyclical:(BOOL)cyclical padding:(int)padding;
- (float)strumAmplitudeForSpline:(int)spline;
- (void)_generateStrumCurveWithWidth:(float)width;
- (void)_strumToCyclicalIndex:(int)index withVelocity:(double)velocity;
- (void)_strumToLinearIndex:(int)index withVelocity:(double)velocity;
- (void)clearTouches;
- (void)dealloc;
- (void)fadeStrumByAmount:(float)amount;
- (void)iterateTouchesWithBlock:(id)block;
- (void)strumToOffset:(double)offset withVelocity:(double)velocity;
@end

@implementation NTKPrideTouchCrownHandler

- (NTKPrideTouchCrownHandler)initWithNumSplines:(int)splines strumWidth:(float)width strumSpeed:(float)speed isCyclical:(BOOL)cyclical padding:(int)padding
{
  cyclicalCopy = cyclical;
  v17.receiver = self;
  v17.super_class = NTKPrideTouchCrownHandler;
  v12 = [(NTKPrideTouchCrownHandler *)&v17 init];
  v14 = v12;
  if (v12)
  {
    v12->_isCyclical = cyclicalCopy;
    v12->_previousCrownIndex = 0;
    v12->_previousCrownOffset = 0.0;
    v12->_strumSpeed = speed;
    v12->_strumPad = padding;
    v15 = 2 * padding;
    if (cyclicalCopy)
    {
      v15 = 0;
    }

    v12->_numSplines = v15 + splines;
    *&v13 = width;
    [(NTKPrideTouchCrownHandler *)v12 _generateStrumCurveWithWidth:v13];
    v14->_strumAmplitudes = malloc_type_calloc(v14->_numSplines, 4uLL, 0x100004052888210uLL);
    v14->_strumTargets = malloc_type_calloc(v14->_numSplines, 4uLL, 0x100004052888210uLL);
  }

  return v14;
}

- (void)dealloc
{
  free(self->_strumAmplitudes);
  free(self->_strumTargets);
  v3.receiver = self;
  v3.super_class = NTKPrideTouchCrownHandler;
  [(NTKPrideTouchCrownHandler *)&v3 dealloc];
}

- (void)_generateStrumCurveWithWidth:(float)width
{
  v24 = -width;
  v3 = 0x100000000;
  v4 = xmmword_1B0B0;
  v5 = &self->_strumCurve[1];
  v6 = 16;
  __asm { FMOV            V0.2D, #14.0 }

  v22 = _Q0;
  v23 = vdupq_n_s64(0xFuLL);
  __asm
  {
    FMOV            V1.2D, #4.0
    FMOV            V0.2D, #-2.0
  }

  v20 = _Q0;
  v21 = _Q1;
  v19 = vdupq_n_s64(2uLL);
  do
  {
    v28 = v4;
    v27 = vmovn_s64(vcgtq_u64(v23, v4)).u8[0];
    v14.i64[0] = v3.u32[0];
    v14.i64[1] = v3.u32[1];
    v15 = vcvtq_f64_f32(vcvt_f32_f64(vmlaq_f64(v20, v21, vdivq_f64(vcvtq_f64_u64(v14), v22))));
    __y = vmulq_n_f64(vmulq_f64(v15, v15), v24);
    v26 = pow(2.71828183, __y.f64[1]);
    v16 = pow(2.71828183, __y.f64[0]);
    if (v27)
    {
      v17 = v16;
      *(v5 - 1) = v17;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v28)).i32[1])
    {
      v18 = v26;
      *v5 = v18;
    }

    v4 = vaddq_s64(v28, v19);
    v3 = vadd_s32(v3, 0x200000002);
    v5 += 2;
    v6 -= 2;
  }

  while (v6);
}

- (void)_strumToCyclicalIndex:(int)index withVelocity:(double)velocity
{
  velocityCopy = velocity;
  if (velocity >= 0.0 || (v5 = self->_previousCrownIndex, v5 <= index))
  {
    if (velocity <= 0.0 || (v16 = self->_previousCrownIndex, v16 >= index))
    {
      if (velocity >= 0.0 || (v27 = self->_previousCrownIndex, v27 >= index))
      {
        if (velocity > 0.0)
        {
          previousCrownIndex = self->_previousCrownIndex;
          if (previousCrownIndex > index)
          {
            numSplines = self->_numSplines;
            v40 = numSplines + index;
            if (previousCrownIndex < numSplines + index)
            {
              strumTargets = self->_strumTargets;
              v42 = previousCrownIndex - 7;
              v43 = -previousCrownIndex;
              v44 = previousCrownIndex - 7 + numSplines;
              do
              {
                v45 = ((v43 + v42) << 32) + 0x700000000;
                v46 = v42 - 1;
                v47 = v44;
                do
                {
                  v48 = strumTargets[v47 % numSplines] + (*(self->_strumCurve + (v45 >> 30)) * velocityCopy) * 0.05;
                  strumTargets[v47 % numSplines] = v48;
                  v45 += 0x100000000;
                  ++v47;
                  ++v46;
                }

                while (v46 < previousCrownIndex + 6);
                ++previousCrownIndex;
                ++v42;
                LODWORD(v43) = v43 - 1;
                ++v44;
              }

              while (previousCrownIndex != v40);
            }
          }
        }
      }

      else
      {
        v28 = self->_numSplines;
        if (v28 + v27 > index)
        {
          v29 = self->_strumTargets;
          v30 = index - 7;
          indexCopy = index;
          v32 = index - 7 + v28;
          v33 = -index;
          do
          {
            v34 = ((v33 + v30) << 32) + 0x700000000;
            v35 = v30 - 1;
            v36 = v32;
            do
            {
              v37 = v29[v36 % v28] + (*(self->_strumCurve + (v34 >> 30)) * velocityCopy) * 0.05;
              v29[v36 % v28] = v37;
              v34 += 0x100000000;
              ++v36;
              ++v35;
            }

            while (v35 < indexCopy + 6);
            ++indexCopy;
            ++v30;
            LODWORD(v33) = v33 - 1;
            ++v32;
          }

          while (indexCopy != v28 + v27);
        }
      }
    }

    else
    {
      v17 = self->_numSplines;
      v18 = self->_strumTargets;
      v19 = v16 - 7;
      indexCopy2 = index;
      v21 = -v16;
      v22 = v16 - 7 + v17;
      do
      {
        v23 = ((v21 + v19) << 32) + 0x700000000;
        v24 = v19 - 1;
        v25 = v22;
        do
        {
          v26 = v18[v25 % v17] + (*(self->_strumCurve + (v23 >> 30)) * velocityCopy) * 0.05;
          v18[v25 % v17] = v26;
          v23 += 0x100000000;
          ++v25;
          ++v24;
        }

        while (v24 < v16 + 6);
        ++v16;
        ++v19;
        LODWORD(v21) = v21 - 1;
        ++v22;
      }

      while (v16 != indexCopy2);
    }
  }

  else
  {
    v6 = self->_numSplines;
    v7 = self->_strumTargets;
    v8 = index - 7;
    indexCopy3 = index;
    v10 = -index;
    v11 = index - 7 + v6;
    do
    {
      v12 = ((v10 + v8) << 32) + 0x700000000;
      v13 = v8 - 1;
      v14 = v11;
      do
      {
        v15 = v7[v14 % v6] + (*(self->_strumCurve + (v12 >> 30)) * velocityCopy) * 0.05;
        v7[v14 % v6] = v15;
        v12 += 0x100000000;
        ++v14;
        ++v13;
      }

      while (v13 < indexCopy3 + 6);
      ++indexCopy3;
      ++v8;
      LODWORD(v10) = v10 - 1;
      ++v11;
    }

    while (indexCopy3 != v5);
  }

  *self->_strumTargets = self->_strumTargets[1];
}

- (void)_strumToLinearIndex:(int)index withVelocity:(double)velocity
{
  previousCrownIndex = self->_previousCrownIndex;
  v5 = previousCrownIndex - index;
  if (previousCrownIndex - index < 0)
  {
    v5 = index - previousCrownIndex;
  }

  numSplines = self->_numSplines;
  if (v5 <= numSplines / 2)
  {
    v10 = fabs(velocity);
    v11 = (1.0 - pow(1000.0, -v10)) * 5.0;
    v12 = velocity >= 0.0 || previousCrownIndex <= index;
    if (v12)
    {
      if (velocity > 0.0 && previousCrownIndex < index)
      {
        v13 = previousCrownIndex - 7;
        v14 = -previousCrownIndex;
        do
        {
          v15 = v13;
          v16 = ((v14 + v13) << 32) + 0x700000000;
          v17 = v15;
          do
          {
            if ((v17 & 0x8000000000000000) == 0 && v17 < numSplines)
            {
              strumTargets = self->_strumTargets;
              v19 = strumTargets[v17] + (*(self->_strumCurve + (v16 >> 30)) * v11) * 0.05;
              strumTargets[v17] = v19;
            }

            v16 += 0x100000000;
            v12 = v17++ < previousCrownIndex + 6;
          }

          while (v12);
          ++previousCrownIndex;
          v13 = v15 + 1;
          LODWORD(v14) = v14 - 1;
        }

        while (index + 1 != previousCrownIndex);
      }
    }

    else
    {
      v20 = index - 7;
      indexCopy = index;
      v22 = -index;
      do
      {
        v23 = v20;
        v24 = ((v22 + v20) << 32) + 0x700000000;
        v25 = v23;
        do
        {
          if ((v25 & 0x8000000000000000) == 0 && v25 < numSplines)
          {
            v26 = self->_strumTargets;
            v27 = v26[v25] + (*(self->_strumCurve + (v24 >> 30)) * v11) * 0.05;
            v26[v25] = v27;
          }

          v24 += 0x100000000;
          v12 = v25++ < indexCopy + 6;
        }

        while (v12);
        ++indexCopy;
        v20 = v23 + 1;
        LODWORD(v22) = v22 - 1;
      }

      while (previousCrownIndex + 1 != indexCopy);
    }
  }
}

- (void)strumToOffset:(double)offset withVelocity:(double)velocity
{
  v6 = (offset / self->_strumSpeed * (self->_numSplines - 1));
  v7 = offset - self->_previousCrownOffset;
  if (self->_isCyclical)
  {
    [(NTKPrideTouchCrownHandler *)self _strumToCyclicalIndex:v6 withVelocity:v7];
  }

  else
  {
    [(NTKPrideTouchCrownHandler *)self _strumToLinearIndex:v6 withVelocity:v7];
  }

  self->_previousCrownIndex = v6;
  self->_previousCrownOffset = offset;
}

- (void)clearTouches
{
  for (i = 0; i != 10; ++i)
  {
    self->_touchTimes[i] = -3.4028e38;
    *&self->_touchCoords[8 * self->_touchIndex] = 0;
  }

  numSplines = self->_numSplines;
  if (numSplines >= 1)
  {
    strumAmplitudes = self->_strumAmplitudes;
    strumTargets = self->_strumTargets;
    do
    {
      *strumTargets++ = 0.0;
      *strumAmplitudes++ = 0.0;
      --numSplines;
    }

    while (numSplines);
  }
}

- (void)iterateTouchesWithBlock:(id)block
{
  v4 = 0;
  touchTimes = self->_touchTimes;
  do
  {
    (*(block + 2))(block, a2, touchTimes[v4], *&touchTimes[2 * v4 - 20]);
    ++v4;
  }

  while (v4 != 10);
}

- (void)fadeStrumByAmount:(float)amount
{
  numSplines = self->_numSplines;
  if (numSplines >= 1)
  {
    strumAmplitudes = self->_strumAmplitudes;
    for (i = self->_strumTargets; ; ++i)
    {
      v6 = *strumAmplitudes;
      if (*i < *strumAmplitudes)
      {
        break;
      }

      if (*i > *strumAmplitudes)
      {
        v7 = v6 + (*i - v6) * 0.3;
        goto LABEL_7;
      }

LABEL_8:
      v9 = *i * 0.96;
      *i = v9;
      if (fabsf(*strumAmplitudes) < 0.001)
      {
        *strumAmplitudes = 0.0;
        v9 = *i;
      }

      if (fabsf(v9) < 0.001)
      {
        *i = 0.0;
      }

      ++strumAmplitudes;
      if (!--numSplines)
      {
        return;
      }
    }

    v7 = v6 * 0.96;
LABEL_7:
    v8 = v7;
    *strumAmplitudes = v8;
    goto LABEL_8;
  }
}

- (float)strumAmplitudeForSpline:(int)spline
{
  if (self->_isCyclical)
  {
    strumPad = 0;
  }

  else
  {
    strumPad = self->_strumPad;
  }

  return self->_strumAmplitudes[strumPad + spline];
}

@end