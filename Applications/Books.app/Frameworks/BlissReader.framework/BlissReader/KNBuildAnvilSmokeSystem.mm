@interface KNBuildAnvilSmokeSystem
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)point;
- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)point;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point;
- (CGPoint)startingPointAtIndexPoint:(CGPoint)point;
- (double)scaleAtIndexPoint:(CGPoint)point;
@end

@implementation KNBuildAnvilSmokeSystem

- (CGPoint)startingPointAtIndexPoint:(CGPoint)point
{
  v4 = [(KNBuildAnvilSmokeSystem *)self indexFromPoint:point.x, point.y];
  v5 = v4 / [(KNBuildAnvilSmokeSystem *)self particleCount];
  [(KNBuildAnvilSmokeSystem *)self objectSize];
  v6 = -8.0;
  v8 = v5 * v7 + -8.0;
  result.y = v6;
  result.x = v8;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  randomGenerator = [(KNBuildAnvilSmokeSystem *)self randomGenerator];
  v7 = (2 * [(KNBuildAnvilSmokeSystem *)self indexFromPoint:x, y]);
  v8 = v7 / [(KNBuildAnvilSmokeSystem *)self particleCount]+ -1.0;
  v9 = sqrt(fabs(v8));
  if (v8 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  v24 = v10;
  v11 = fabs(v9) + 0.25;
  [randomGenerator doubleBetween:-1.0 :0.1];
  v23 = v12;
  [randomGenerator doubleBetween:0.25 :1.0];
  v13.f64[0] = v24;
  v14.f64[1] = v23;
  v13.f64[1] = -v11;
  __asm { FMOV            V1.2S, #6.25 }

  v25 = vdiv_f32(vcvt_f32_f64(vmulq_f64(vmulq_f64(v14, v13), xmmword_34AE40)), _D1);

  v21 = v25.f32[1];
  v20 = v25.f32[0];
  v22 = 0.0;
  result.var2 = v22;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)point
{
  v4 = (2 * [(KNBuildAnvilSmokeSystem *)self indexFromPoint:point.x, point.y]);
  v5 = v4 / [(KNBuildAnvilSmokeSystem *)self particleCount]+ -1.0;
  randomGenerator = [(KNBuildAnvilSmokeSystem *)self randomGenerator];
  [randomGenerator doubleBetween:0.5 :1.0];
  v8 = v5 * v7;

  v9 = v8;
  v10 = 0.0;
  v11 = 0.0;
  result.var2 = v9;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (double)scaleAtIndexPoint:(CGPoint)point
{
  v4 = [(KNBuildAnvilSmokeSystem *)self indexFromPoint:point.x, point.y];
  v5 = fabs((v4 + v4) / [(KNBuildAnvilSmokeSystem *)self particleCount]+ -1.0) + 1.25;
  TSURandom();
  TSDMixFloats();
  v7 = v6 * v5;
  [(KNBuildAnvilSystem *)self p_anvilGlobalScale];
  return v8 * 0.0625 * v7;
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)point
{
  [(KNBuildAnvilSmokeSystem *)self duration:point.x];
  v5 = v4;
  randomGenerator = [(KNBuildAnvilSmokeSystem *)self randomGenerator];
  [randomGenerator doubleBetween:0.15 :1.0];
  *&v5 = v5 * v7;

  v8 = 0.0;
  v9 = *&v5;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

@end