@interface ARCoachingGlyphState
- (ARCoachingGlyphState)init;
- (ARCoachingGlyphStateDelegate)delegate;
- (__n128)bottomPlaneTranslationTarget;
- (__n128)quaternionTarget;
- (__n128)scaleTarget;
- (__n128)topPlaneTranslationTarget;
- (uint64_t)computeQuaternionTarget;
- (uint64_t)computeScaleTarget;
- (uint64_t)computeTopPlaneTranslationTarget;
- (unint64_t)computeBottomPlaneTranslationTarget;
- (void)setBottomPlaneTranslationTarget:(ARCoachingGlyphState *)self;
- (void)setQuaternionTarget:(_OWORD *)a3;
- (void)setScaleTarget:(ARCoachingGlyphState *)self;
- (void)setSnapState:(unint64_t)a3;
- (void)setTopPlaneTranslationTarget:(ARCoachingGlyphState *)self;
@end

@implementation ARCoachingGlyphState

- (ARCoachingGlyphState)init
{
  v3.receiver = self;
  v3.super_class = ARCoachingGlyphState;
  result = [(ARCoachingGlyphState *)&v3 init];
  if (result)
  {
    result->_snapState = 1;
  }

  return result;
}

- (void)setSnapState:(unint64_t)a3
{
  self->_snapState = a3;
  v4 = [(ARCoachingGlyphState *)self delegate];

  if (v4)
  {
    v5 = [(ARCoachingGlyphState *)self delegate];
    [v5 snapStateChanged];

    [(ARCoachingGlyphState *)self computeQuaternionTarget];
    v12 = v14;
    v13 = v15;
    [(ARCoachingGlyphState *)self setQuaternionTarget:&v12];
    [(ARCoachingGlyphState *)self computeScaleTarget];
    v12 = v10;
    v13 = v11;
    [(ARCoachingGlyphState *)self setScaleTarget:&v12];
    [(ARCoachingGlyphState *)self computeTopPlaneTranslationTarget];
    v12 = v8;
    v13 = v9;
    [(ARCoachingGlyphState *)self setTopPlaneTranslationTarget:&v12];
    [(ARCoachingGlyphState *)self computeBottomPlaneTranslationTarget];
    v12 = v6;
    v13 = v7;
    [(ARCoachingGlyphState *)self setBottomPlaneTranslationTarget:&v12];
  }
}

- (__n128)quaternionTarget
{
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

- (void)setQuaternionTarget:(_OWORD *)a3
{
  v4 = a3[1];
  a1[1] = *a3;
  a1[2] = v4;
  v5 = [a1 delegate];

  if (v5)
  {
    v6 = [a1 delegate];
    [v6 quaternionTargetChanged];
  }
}

- (__n128)scaleTarget
{
  result = *(a1 + 48);
  v3 = *(a1 + 64);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

- (void)setScaleTarget:(ARCoachingGlyphState *)self
{
  v4 = v2[1];
  *self->_scaleTarget = *v2;
  *&self->_scaleTarget[16] = v4;
  v5 = [(ARCoachingGlyphState *)self delegate];

  if (v5)
  {
    v6 = [(ARCoachingGlyphState *)self delegate];
    [v6 scaleTargetChanged];
  }
}

- (void)setTopPlaneTranslationTarget:(ARCoachingGlyphState *)self
{
  v4 = v2[1];
  *self->_topPlaneTranslationTarget = *v2;
  *&self->_topPlaneTranslationTarget[16] = v4;
  v5 = [(ARCoachingGlyphState *)self delegate];

  if (v5)
  {
    v6 = [(ARCoachingGlyphState *)self delegate];
    [v6 topPlaneTranslationTargetChanged];
  }
}

- (void)setBottomPlaneTranslationTarget:(ARCoachingGlyphState *)self
{
  v4 = v2[1];
  *self->_bottomPlaneTranslationTarget = *v2;
  *&self->_bottomPlaneTranslationTarget[16] = v4;
  v5 = [(ARCoachingGlyphState *)self delegate];

  if (v5)
  {
    v6 = [(ARCoachingGlyphState *)self delegate];
    [v6 bottomPlaneTranslationTargetChanged];
  }
}

- (uint64_t)computeQuaternionTarget
{
  result = [a1 snapState];
  if (result > 2)
  {
    if (result == 3)
    {
      [ARCoachingTransformations lookAt:-0.0000305175781 center:0.0 up:0.0078125];
      result = [ARCoachingTransformations fromMatrix:?];
      v5 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(xmmword_23D3DC370, 0, 1), xmmword_23D3DC3A0, 0.0), vmlaq_n_f64(vmulq_laneq_f64(xmmword_23D3DC3B0, 0, 1), xmmword_23D3DC3C0, 0.0));
      a2[1] = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(xmmword_23D3DC380, 0, 1), xmmword_23D3DC390, 0.0), vmlaq_n_f64(vmulq_laneq_f64(xmmword_23D3DC370, 0, 1), xmmword_23D3DC3A0, 0.0));
      goto LABEL_12;
    }

    if (result == 4)
    {
      if (a1[88] == 1)
      {
        v6 = xmmword_23D3DC350;
        v7 = xmmword_23D3DC360;
      }

      else
      {
        v6 = xmmword_23D3DC330;
        v7 = xmmword_23D3DC340;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if ((result - 1) < 2)
    {
      v5 = xmmword_23D3DC3D0;
      a2[1] = xmmword_23D3DC3D0;
LABEL_12:
      *a2 = v5;
      return result;
    }

    if (!result)
    {
      if (a1[88] == 1)
      {
        v6 = xmmword_23D3DC400;
        v7 = xmmword_23D3DC410;
      }

      else
      {
        v6 = xmmword_23D3DC3E0;
        v7 = xmmword_23D3DC3F0;
      }

LABEL_18:
      *a2 = v7;
      a2[1] = v6;
      return result;
    }
  }

  return [a1 quaternionTarget];
}

- (uint64_t)computeScaleTarget
{
  result = [a1 snapState];
  if (result > 2)
  {
    if (result == 4)
    {
      v5.i64[0] = 0x3FD3333333333333;
      v6 = 0x3FD3333333333333;
      goto LABEL_9;
    }

    if (result != 3)
    {
LABEL_10:
      result = [a1 scaleTarget];
      _Q1 = v12;
      v5 = v13;
      goto LABEL_11;
    }
  }

  else if ((result - 1) >= 2)
  {
    if (!result)
    {
      v5.i64[0] = 0x3FB999999999999ALL;
      v6 = 0x3FB999999999999ALL;
LABEL_9:
      _Q1 = vdupq_n_s64(v6);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __asm { FMOV            V1.2D, #1.0 }

  v5 = _Q1;
LABEL_11:
  *a2 = _Q1;
  a2[1] = v5;
  return result;
}

- (uint64_t)computeTopPlaneTranslationTarget
{
  result = [a1 snapState];
  v5 = 0uLL;
  v6 = 0uLL;
  if (result <= 2)
  {
    if ((result - 1) < 2)
    {
      v5 = xmmword_23D3DC430;
      goto LABEL_10;
    }

    if (!result)
    {
      goto LABEL_10;
    }

LABEL_8:
    result = [a1 topPlaneTranslationTarget];
    v5 = v7;
    v6 = v8;
    goto LABEL_10;
  }

  if (result == 3)
  {
    v5 = xmmword_23D3DC420;
    goto LABEL_10;
  }

  if (result != 4)
  {
    goto LABEL_8;
  }

LABEL_10:
  *a2 = v5;
  a2[1] = v6;
  return result;
}

- (unint64_t)computeBottomPlaneTranslationTarget
{
  result = [a1 snapState];
  v5 = 0uLL;
  v6 = 0uLL;
  if (result >= 3 && result != 4)
  {
    if (result == 3)
    {
      v5 = xmmword_23D3DC3D0;
    }

    else
    {
      result = [a1 bottomPlaneTranslationTarget];
      v5 = v7;
      v6 = v8;
    }
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

- (ARCoachingGlyphStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (__n128)topPlaneTranslationTarget
{
  result = a1[7];
  a2[1].n128_u64[0] = a1[8].n128_u64[0];
  *a2 = result;
  return result;
}

- (__n128)bottomPlaneTranslationTarget
{
  result = a1[9];
  a2[1].n128_u64[0] = a1[10].n128_u64[0];
  *a2 = result;
  return result;
}

@end