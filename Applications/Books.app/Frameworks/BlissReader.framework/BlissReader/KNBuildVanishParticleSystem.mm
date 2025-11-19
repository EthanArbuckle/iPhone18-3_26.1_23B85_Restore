@interface KNBuildVanishParticleSystem
- ($94F468A8D4C62B317260615823C2B210)lifeSpan;
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3;
- (double)scaleAtIndexPoint:(CGPoint)a3;
- (double)speedMax;
@end

@implementation KNBuildVanishParticleSystem

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3
{
  x = a3.x;
  y = a3.y;
  [(KNBuildVanishParticleSystem *)self randomParticleSpeedMax];
  v5 = v4;
  [(KNBuildVanishParticleSystem *)self objectSize];
  v7 = v6;
  [(KNBuildVanishParticleSystem *)self slideSize];
  v9 = v7 / v8;
  [(KNBuildVanishParticleSystem *)self objectSize];
  v11 = v9 * v10;
  [(KNBuildVanishParticleSystem *)self slideSize];
  v13 = v11 / v12;
  if (v11 / v12 > 1.0)
  {
    v13 = 1.0;
  }

  v42 = sqrt(v13) * -0.75 + 1.0;
  v45 = v5 * v42;
  v14 = vcvtd_n_f64_u64([(KNBuildVanishParticleSystem *)self particlesWide]* [(KNBuildVanishParticleSystem *)self particlesWide]+ [(KNBuildVanishParticleSystem *)self particlesHigh]* [(KNBuildVanishParticleSystem *)self particlesHigh], 2uLL);
  TSURandomBetween();
  v16 = v15;
  TSURandomBetween();
  v41 = sqrt(1.0 - v16 * v16);
  v18 = __sincos_stret(v17);
  v19 = v16;
  v20 = v45 * fabsf(v19);
  v21 = [(KNBuildVanishParticleSystem *)self particlesWide];
  v22 = [(KNBuildVanishParticleSystem *)self particlesHigh];
  v23 = [(KNBuildVanishParticleSystem *)self particlesWide];
  v24 = [(KNBuildVanishParticleSystem *)self particlesHigh];
  if (v23 <= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v26 = vcvtd_n_f64_u64(v25, 1uLL) + 20.0;
  TSURandomBetween();
  v28 = v27 / v26;
  v29.f64[0] = v18.__cosval;
  v29.f64[1] = v18.__sinval;
  v30 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v29, v41))), v45));
  *&v29.f64[0] = v21;
  *&v29.f64[1] = v22;
  __asm { FMOV            V3.2D, #-0.5 }

  v36.f64[0] = x;
  v36.f64[1] = y;
  *&v29.f64[0] = vcvt_f32_f64(vaddq_f64(v36, vmulq_f64(vcvtq_f64_u64(v29), _Q3)));
  *_Q3.f64 = sqrt(v14 - (COERCE_FLOAT(vmul_f32(*&v29, *&v29).i32[1]) + (*v29.f64 * *v29.f64)));
  *_Q3.f64 = v42 * *_Q3.f64;
  v37 = vmulq_n_f64(vcvtq_f64_f32(vadd_f32(v30, vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*&v29.f64[0]), v42)))), v28);
  v29.f64[0] = v28 * (*_Q3.f64 - v20);
  v38 = vcvt_f32_f64(v37);
  v39 = v29.f64[0];
  v40 = v38.f32[1];
  result.var0 = v38.f32[0];
  result.var2 = v39;
  result.var1 = v40;
  return result;
}

- (double)speedMax
{
  [(KNBuildVanishParticleSystem *)self objectSize];
  v4 = v3;
  [(KNBuildVanishParticleSystem *)self objectSize];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  [(KNBuildVanishParticleSystem *)self slideSize];
  v8 = v7;
  [(KNBuildVanishParticleSystem *)self slideSize];
  if (v8 < v9)
  {
    v8 = v9;
  }

  [(KNBuildVanishParticleSystem *)self maxSpeed];
  return v10 * (v6 / v8);
}

- (double)scaleAtIndexPoint:(CGPoint)a3
{
  [(KNBuildVanishParticleSystem *)self minScale:a3.x];
  [(KNBuildVanishParticleSystem *)self maxScale];
  TSURandomBetween();

  TSUMix();
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3
{
  TSURandomBetween();
  TSUMix();
  v4 = v3;
  v5 = 0.0;
  result.var1 = v4;
  result.var0 = v5;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpan
{
  start = self->_lifeSpan.start;
  duration = self->_lifeSpan.duration;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end