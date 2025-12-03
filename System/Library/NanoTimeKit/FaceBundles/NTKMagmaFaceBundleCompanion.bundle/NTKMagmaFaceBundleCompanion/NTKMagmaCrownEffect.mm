@interface NTKMagmaCrownEffect
- (NTKMagmaCrownEffect)init;
- (void)applyForTime:(double)time quad:(id)quad;
- (void)setIdle:(BOOL)idle;
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

- (void)setIdle:(BOOL)idle
{
  if (self->_idle != idle)
  {
    self->_idle = idle;
  }
}

- (void)applyForTime:(double)time quad:(id)quad
{
  if (!self->_idle)
  {
    quadCopy = quad;
    [quadCopy size];
    v16 = v6;
    [quadCopy size];
    v7 = 1.0;
    v8.f64[0] = v16;
    v8.f64[1] = v9;
    __asm { FMOV            V1.2D, #0.5 }

    _Q1.f64[1] = 1.0 - self->_offset;
    v15 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(v8, _Q1)));
    LODWORD(v7) = 1053609165;
    LODWORD(_Q1.f64[0]) = 5.0;
    [quadCopy applyInverseQuadraticRepuslorWithOrigin:v15 magnitude:_Q1.f64[0] radius:v7];
  }
}

@end