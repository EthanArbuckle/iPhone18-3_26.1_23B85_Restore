@interface KNBuildAnvilSpecksSystem
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3;
- (CGPoint)startingPointAtIndexPoint:(CGPoint)a3;
- (double)scaleAtIndexPoint:(CGPoint)a3;
@end

@implementation KNBuildAnvilSpecksSystem

- (CGPoint)startingPointAtIndexPoint:(CGPoint)a3
{
  v4 = [(KNBuildAnvilSpecksSystem *)self indexFromPoint:a3.x, a3.y];
  v5 = v4 / [(KNBuildAnvilSpecksSystem *)self particleCount];
  [(KNBuildAnvilSpecksSystem *)self objectSize];
  v6 = 8.0;
  v8 = v5 * v7 + 8.0;
  result.y = v6;
  result.x = v8;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(KNBuildAnvilSpecksSystem *)self randomGenerator];
  v7 = [(KNBuildAnvilSpecksSystem *)self indexFromPoint:x, y];
  v23 = (2 * v7) / [(KNBuildAnvilSpecksSystem *)self particleCount]+ -1.0;
  [v6 doubleBetween:0.2 :1.0];
  v9.f64[0] = v23;
  v9.f64[1] = v8;
  v10 = 1.0;
  if (0xAAAAAAAAAAAAAAABLL * v7 + 0x5555555555555555 >= 0x5555555555555555)
  {
    v22 = v8;
    [v6 randomDouble];
    v11.f64[0] = v23;
    v11.f64[1] = v22 * dbl_34AE50[v12 < 0.5];
    __asm { FMOV            V0.2D, #10.0 }

    v9 = vmulq_f64(v11, _Q0);
    v10 = 0.2;
  }

  v18 = vcvt_f32_f64(vmulq_f64(vdivq_f64(v9, vdupq_n_s64(0x404A400000000000uLL)), xmmword_34AE60));

  LODWORD(v20) = HIDWORD(*&v18);
  LODWORD(v19) = v18;
  v21 = v10;
  result.var2 = v21;
  result.var1 = v20;
  result.var0 = v19;
  return result;
}

- (double)scaleAtIndexPoint:(CGPoint)a3
{
  v4 = [(KNBuildAnvilSpecksSystem *)self indexFromPoint:a3.x, a3.y];
  v5 = [(KNBuildAnvilSpecksSystem *)self randomGenerator];
  [v5 doubleBetween:3.0 :5.0];
  v7 = v6;

  if (0xAAAAAAAAAAAAAAABLL * v4 + 0x5555555555555555 >= 0x5555555555555555)
  {
    v7 = v7 * 3.0;
  }

  [(KNBuildAnvilSystem *)self p_anvilGlobalScale];
  return v7 * (v8 * 0.0625);
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3
{
  v4 = [(KNBuildAnvilSpecksSystem *)self indexFromPoint:a3.x, a3.y];
  [(KNBuildAnvilSpecksSystem *)self duration];
  if (v5 <= 1.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = [(KNBuildAnvilSpecksSystem *)self randomGenerator];
  [v7 doubleBetween:0.2 :0.5];
  v9 = v6 * v8;

  if (0xAAAAAAAAAAAAAAABLL * v4 + 0x5555555555555555 >= 0x5555555555555555)
  {
    v10 = v9 * 10.0;
  }

  else
  {
    v10 = v9;
  }

  v11 = 0.0;
  result.var1 = v10;
  result.var0 = v11;
  return result;
}

@end