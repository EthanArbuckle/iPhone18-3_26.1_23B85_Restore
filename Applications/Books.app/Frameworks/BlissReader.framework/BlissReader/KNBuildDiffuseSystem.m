@interface KNBuildDiffuseSystem
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3;
- (double)speedMax;
@end

@implementation KNBuildDiffuseSystem

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3
{
  y = a3.y;
  v5 = [(KNBuildDiffuseSystem *)self direction];
  TSURandomBetween();
  v7 = v6;
  TSURandomBetween();
  v29 = sqrt(1.0 - v7 * v7);
  v9 = __sincos_stret(v8);
  v10 = (y + y) / [(KNBuildDiffuseSystem *)self particlesHigh]+ -1.0;
  v11 = (1.1 - v10 * v10) * 8.0;
  *&v7 = v7;
  v12 = v11 * *&v7;
  v13.f64[0] = 2.0 - fabs(v10);
  if (v5 == &dword_8 + 3)
  {
    v13.f64[0] = -v13.f64[0];
  }

  v14.f64[0] = v9.__cosval;
  v14.f64[1] = v9.__sinval;
  v13.f64[1] = v10 + v10;
  v15 = vcvt_f32_f64(v13);
  __asm { FMOV            V3.2S, #5.0 }

  v21 = vadd_f32(vmul_f32(v15, _D3), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v14, v29))), v11)));
  if (v21.f32[0] == 0.0 && v21.f32[1] == 0.0 && v12 == 0.0)
  {
    v22 = *TSDMetalPoint3DZero;
    v23 = TSDMetalPoint3DZero[2];
  }

  else
  {
    v24 = v12 + 0.0;
    v25 = 1.0 / sqrtf(((v21.f32[1] * v21.f32[1]) + (v21.f32[0] * v21.f32[0])) + (v24 * v24));
    v26 = vmulq_n_f64(vcvtq_f64_f32(v21), v25);
    v27 = v25 * v24;
    v22 = vcvt_f32_f64(v26);
    v23 = v27;
  }

  v28 = v22.f32[1];
  result.var0 = v22.f32[0];
  result.var2 = v23;
  result.var1 = v28;
  return result;
}

- (double)speedMax
{
  [(KNBuildDiffuseSystem *)self objectSize];
  v4 = v3 * 1.5;
  [(KNBuildDiffuseSystem *)self duration];
  return v4 / sqrt(v5);
}

- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)a3
{
  TSURandomBetween();
  v4 = v3;
  TSURandomBetween();
  v5 = v4;
  v7 = v6;
  v8 = 0.0;
  v9 = v5;
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v9;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3
{
  x = a3.x;
  v5 = [(KNBuildDiffuseSystem *)self direction:a3.x];
  [(KNBuildDiffuseSystem *)self duration];
  TSUClamp();
  v7 = v6;
  if (v5 == &dword_8 + 3)
  {
    x = [(KNBuildDiffuseSystem *)self particlesWide]- x;
  }

  v8 = (1.0 - v7) * (x / [(KNBuildDiffuseSystem *)self particlesWide]);
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

@end