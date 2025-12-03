@interface NTKMagmaTimeChangeEffect
- (NTKMagmaTimeChangeEffect)initWithStart:(double)start duration:(double)duration magnitude:(double)magnitude radius:(double)radius;
- (void)applyForTime:(double)time quad:(id)quad;
@end

@implementation NTKMagmaTimeChangeEffect

- (NTKMagmaTimeChangeEffect)initWithStart:(double)start duration:(double)duration magnitude:(double)magnitude radius:(double)radius
{
  v11.receiver = self;
  v11.super_class = NTKMagmaTimeChangeEffect;
  result = [(NTKMagmaTimeChangeEffect *)&v11 init];
  if (result)
  {
    result->_start = start;
    result->_duration = duration;
    result->_magnitude = magnitude;
    result->_radius = radius;
  }

  return result;
}

- (void)applyForTime:(double)time quad:(id)quad
{
  start = self->_start;
  duration = self->_duration;
  if (start + duration >= time)
  {
    v7 = (time - start) / duration;
    quadCopy = quad;
    [quadCopy size];
    v22 = v8;
    [quadCopy size];
    __asm { FMOV            V0.2D, #0.5 }

    v14.f64[0] = v22;
    _Q0.f64[1] = 1.0 - v7;
    v14.f64[1] = v15;
    v16 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(_Q0, v14)));
    magnitude = self->_magnitude;
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v21 = 0.5;
    if (!IsReduceMotionEnabled)
    {
      v21 = 1.0;
    }

    *&v19 = magnitude * v21;
    *&v20 = self->_radius;
    [quadCopy applyQuadraticRepuslorWithOrigin:v16 magnitude:v19 radius:v20];
  }

  else
  {
    self->_complete = 1;
  }
}

@end