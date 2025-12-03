@interface NTKMagmaTritiumOffEffect
- (NTKMagmaTritiumOffEffect)initWithStart:(double)start duration:(double)duration magnitude:(double)magnitude radius:(double)radius speed:(double)speed;
- (void)applyForTime:(double)time quad:(id)quad;
@end

@implementation NTKMagmaTritiumOffEffect

- (NTKMagmaTritiumOffEffect)initWithStart:(double)start duration:(double)duration magnitude:(double)magnitude radius:(double)radius speed:(double)speed
{
  v23.receiver = self;
  v23.super_class = NTKMagmaTritiumOffEffect;
  v12 = [(NTKMagmaTritiumOffEffect *)&v23 init];
  v13 = v12;
  if (v12)
  {
    v12->_start = start;
    v12->_duration = duration;
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v15 = 1.0;
    if (IsReduceMotionEnabled)
    {
      v15 = 0.5;
    }

    v13->_magnitude = v15 * magnitude;
    v13->_radius = radius;
    v13->_speed = speed;
    v16 = &v13->_randomParams[40];
    for (i = 1; i != 4; ++i)
    {
      for (j = 0; j != 16; j += 8)
      {
        v19 = arc4random() / 4294967300.0;
        v22 = v19;
        if (arc4random_uniform(2u))
        {
          v20 = 1.0;
        }

        else
        {
          v20 = -1.0;
        }

        *&v16[j] = __PAIR64__(LODWORD(v20), LODWORD(v22));
      }

      v16 += 32;
    }
  }

  return v13;
}

- (void)applyForTime:(double)time quad:(id)quad
{
  quadCopy = quad;
  start = self->_start;
  duration = self->_duration;
  if (start + duration >= time)
  {
    v9 = (time - start) / duration;
    v10 = 1.0 - ((v9 * 2.0) + -1.0) * ((v9 * 2.0) + -1.0);
    *&v10 = v10;
    v23 = v10;
    v11 = self->_speed * v9;
    v12 = &self->_randomParams[40];
    v13 = 1;
    v26 = quadCopy;
    do
    {
      v14 = 0;
      v24 = vcvtd_n_f64_u64(v13, 2uLL);
      do
      {
        [v26 size];
        v25 = v15;
        [v26 size];
        v16.f64[0] = v25;
        v17.f64[0] = (v14 + 1) / 3.0;
        v17.f64[1] = v24;
        v16.f64[1] = v18;
        v19 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(v17, v16)));
        v16.f64[0] = (COERCE_FLOAT(*&v12[8 * v14]) + v11 * COERCE_FLOAT(HIDWORD(*&v12[8 * v14]))) * 3.14159265;
        *v16.f64 = v16.f64[0] + v16.f64[0];
        v20 = __sincosf_stret(*v16.f64);
        radius = self->_radius;
        magnitude = self->_magnitude;
        *&radius = radius;
        [v26 applyQuadraticDragWithOrigin:v19 drag:COERCE_DOUBLE(vmul_n_f32(vmul_n_f32(v20 radius:{*&v23), magnitude)), radius}];
        quadCopy = v26;
        ++v14;
      }

      while (v14 != 2);
      ++v13;
      v12 += 32;
    }

    while (v13 != 4);
  }

  else
  {
    self->_complete = 1;
  }
}

@end