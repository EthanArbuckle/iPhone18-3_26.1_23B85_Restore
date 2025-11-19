@interface NTKMagmaMotionEffect
- (void)applyForTime:(double)a3 quad:(id)a4;
@end

@implementation NTKMagmaMotionEffect

- (void)applyForTime:(double)a3 quad:(id)a4
{
  frame = self->_frame;
  self->_frame = (frame & 1) == 0;
  if (frame)
  {
    v7 = vadd_f32(*self->_linear, *self->_linear);
    v14 = a4;
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v9 = 1.0;
    if (IsReduceMotionEnabled)
    {
      v9 = 0.5;
    }

    [v14 applyLineImpulseWithQuadraticFalloff:{COERCE_DOUBLE(vmul_n_f32(v7, v9))}];
    v10 = (self->_spin + self->_spin);
    v11 = UIAccessibilityIsReduceMotionEnabled();
    v12 = 1.0;
    if (v11)
    {
      v12 = 0.5;
    }

    v13 = v12 * v10;
    *&v13 = v13;
    [v14 applySpinWithMagnitude:v13];
  }
}

@end