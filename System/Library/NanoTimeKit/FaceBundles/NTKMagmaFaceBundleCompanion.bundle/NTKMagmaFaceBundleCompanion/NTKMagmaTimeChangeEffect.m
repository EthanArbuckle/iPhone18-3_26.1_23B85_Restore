@interface NTKMagmaTimeChangeEffect
- (NTKMagmaTimeChangeEffect)initWithStart:(double)a3 duration:(double)a4 magnitude:(double)a5 radius:(double)a6;
- (void)applyForTime:(double)a3 quad:(id)a4;
@end

@implementation NTKMagmaTimeChangeEffect

- (NTKMagmaTimeChangeEffect)initWithStart:(double)a3 duration:(double)a4 magnitude:(double)a5 radius:(double)a6
{
  v11.receiver = self;
  v11.super_class = NTKMagmaTimeChangeEffect;
  result = [(NTKMagmaTimeChangeEffect *)&v11 init];
  if (result)
  {
    result->_start = a3;
    result->_duration = a4;
    result->_magnitude = a5;
    result->_radius = a6;
  }

  return result;
}

- (void)applyForTime:(double)a3 quad:(id)a4
{
  start = self->_start;
  duration = self->_duration;
  if (start + duration >= a3)
  {
    v7 = (a3 - start) / duration;
    v23 = a4;
    [v23 size];
    v22 = v8;
    [v23 size];
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
    [v23 applyQuadraticRepuslorWithOrigin:v16 magnitude:v19 radius:v20];
  }

  else
  {
    self->_complete = 1;
  }
}

@end