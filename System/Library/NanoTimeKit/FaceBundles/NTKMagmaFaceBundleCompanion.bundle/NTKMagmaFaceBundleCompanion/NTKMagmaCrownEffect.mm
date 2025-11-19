@interface NTKMagmaCrownEffect
- (NTKMagmaCrownEffect)init;
- (void)applyForTime:(double)a3 quad:(id)a4;
- (void)setIdle:(BOOL)a3;
@end

@implementation NTKMagmaCrownEffect

- (NTKMagmaCrownEffect)init
{
  v3.receiver = self;
  v3.super_class = NTKMagmaCrownEffect;
  result = [(NTKMagmaCrownEffect *)&v3 init];
  if (result)
  {
    result->_idle = 1;
  }

  return result;
}

- (void)setIdle:(BOOL)a3
{
  if (self->_idle != a3)
  {
    self->_idle = a3;
  }
}

- (void)applyForTime:(double)a3 quad:(id)a4
{
  if (!self->_idle)
  {
    v17 = a4;
    [v17 size];
    v16 = v6;
    [v17 size];
    v7 = 1.0;
    v8.f64[0] = v16;
    v8.f64[1] = v9;
    __asm { FMOV            V1.2D, #0.5 }

    _Q1.f64[1] = 1.0 - self->_offset;
    v15 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(v8, _Q1)));
    LODWORD(v7) = 1053609165;
    LODWORD(_Q1.f64[0]) = 5.0;
    [v17 applyInverseQuadraticRepuslorWithOrigin:v15 magnitude:_Q1.f64[0] radius:v7];
  }
}

@end