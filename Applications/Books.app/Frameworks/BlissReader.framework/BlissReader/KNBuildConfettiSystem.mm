@interface KNBuildConfettiSystem
- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)point;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point;
- (double)speedMax;
@end

@implementation KNBuildConfettiSystem

- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)point
{
  TSURandomBetween();
  v4 = v3;
  TSURandomBetween();
  v6 = v5;
  TSURandomBetween();
  v7 = v4;
  v8 = v6;
  v10 = v9;
  v11 = v7;
  result.var2 = v10;
  result.var1 = v8;
  result.var0 = v11;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point
{
  x = point.x;
  y = point.y;
  [(KNBuildConfettiSystem *)self objectSize];
  v5 = v4;
  [(KNBuildConfettiSystem *)self slideSize];
  v7 = v5 / v6;
  [(KNBuildConfettiSystem *)self objectSize];
  v9 = v7 * v8;
  [(KNBuildConfettiSystem *)self slideSize];
  v11 = v9 / v10;
  if (v9 / v10 > 1.0)
  {
    v11 = 1.0;
  }

  v38 = sqrt(v11) * -0.75 + 1.0;
  v12 = vcvtd_n_f64_u64([(KNBuildConfettiSystem *)self particlesWide]* [(KNBuildConfettiSystem *)self particlesWide]+ [(KNBuildConfettiSystem *)self particlesHigh]* [(KNBuildConfettiSystem *)self particlesHigh], 2uLL);
  TSURandomBetween();
  v14 = v13;
  TSURandomBetween();
  v37 = sqrt(1.0 - v14 * v14);
  v16 = __sincos_stret(v15);
  v17 = v14;
  v18 = v38 * 20.0 * fabsf(v17);
  particlesWide = [(KNBuildConfettiSystem *)self particlesWide];
  particlesHigh = [(KNBuildConfettiSystem *)self particlesHigh];
  particlesWide2 = [(KNBuildConfettiSystem *)self particlesWide];
  particlesHigh2 = [(KNBuildConfettiSystem *)self particlesHigh];
  if (particlesWide2 <= particlesHigh2)
  {
    v23 = particlesHigh2;
  }

  else
  {
    v23 = particlesWide2;
  }

  v24 = 1.0 / (vcvtd_n_f64_u64(v23, 1uLL) + 20.0);
  v25.f64[0] = v16.__cosval;
  v25.f64[1] = v16.__sinval;
  v26 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v25, v37))), v38 * 20.0));
  *&v25.f64[0] = particlesWide;
  *&v25.f64[1] = particlesHigh;
  __asm { FMOV            V3.2D, #-0.5 }

  v32.f64[0] = x;
  v32.f64[1] = y;
  *&v25.f64[0] = vcvt_f32_f64(vaddq_f64(v32, vmulq_f64(vcvtq_f64_u64(v25), _Q3)));
  *_Q3.f64 = sqrt(v12 - (COERCE_FLOAT(vmul_f32(*&v25, *&v25).i32[1]) + (*v25.f64 * *v25.f64)));
  *_Q3.f64 = v38 * *_Q3.f64;
  v33 = vmulq_n_f64(vcvtq_f64_f32(vadd_f32(v26, vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*&v25.f64[0]), v38)))), v24);
  v25.f64[0] = v24 * (*_Q3.f64 - v18);
  v34 = vcvt_f32_f64(v33);
  v35 = v25.f64[0];
  v36 = v34.f32[1];
  result.var0 = v34.f32[0];
  result.var2 = v35;
  result.var1 = v36;
  return result;
}

- (double)speedMax
{
  [(KNBuildConfettiSystem *)self objectSize];
  v4 = v3;
  [(KNBuildConfettiSystem *)self objectSize];
  if (v4 >= v5)
  {
    v4 = v5;
  }

  particlesWide = [(KNBuildConfettiSystem *)self particlesWide];
  particlesHigh = [(KNBuildConfettiSystem *)self particlesHigh];
  if (particlesWide <= particlesHigh)
  {
    v8 = particlesHigh;
  }

  else
  {
    v8 = particlesWide;
  }

  return v4 * 0.025 * (vcvtd_n_f64_u64(v8, 1uLL) + 20.0);
}

@end