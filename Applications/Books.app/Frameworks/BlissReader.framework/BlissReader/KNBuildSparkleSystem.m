@interface KNBuildSparkleSystem
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3;
- (CGPoint)startingPointAtIndexPoint:(CGPoint)a3;
- (double)p_globalScale;
- (double)scaleAtIndexPoint:(CGPoint)a3;
- (double)speedMax;
@end

@implementation KNBuildSparkleSystem

- (double)p_globalScale
{
  [(KNBuildSparkleSystem *)self objectSize];
  v4 = v3;
  [(KNBuildSparkleSystem *)self objectSize];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  [(KNBuildSparkleSystem *)self slideSize];
  v8 = v7;
  [(KNBuildSparkleSystem *)self slideSize];
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  return v6 / sqrt(sqrt(v6 / v10)) * 0.25;
}

- (CGPoint)startingPointAtIndexPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(KNBuildSparkleSystem *)self duration];
  v7 = v6;
  v8 = [(KNBuildSparkleSystem *)self direction]== &dword_C + 1 || [(KNBuildSparkleSystem *)self direction]== &dword_C + 2;
  v9 = [(KNBuildSparkleSystem *)self direction]== &dword_C || [(KNBuildSparkleSystem *)self direction]== &dword_C + 1;
  v10 = 0.1 / v7;
  v11 = [(KNBuildSparkleSystem *)self indexFromPoint:x, y];
  v12 = v11 / [(KNBuildSparkleSystem *)self particleCount];
  if (v9)
  {
    v13 = 1.0 - v12;
  }

  else
  {
    v13 = v12;
  }

  [-[KNBuildSparkleSystem randomGenerator](self "randomGenerator")];
  v15 = v13 + v10 * v14;
  TSURandom();
  v17 = ((v16 * 2.0 + -1.0) * fabs(v16 * 2.0 + -1.0) + 1.0) * 0.5;
  if (v8)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  if (v8)
  {
    v19 = v15;
  }

  else
  {
    v19 = v17;
  }

  [(KNBuildSparkleSystem *)self objectSize];
  v21 = v20;
  [(KNBuildSparkleSystem *)self particleSize];
  v23 = v22 * -0.5 + v18 * v21;
  [(KNBuildSparkleSystem *)self objectSize];
  v25 = v24;
  [(KNBuildSparkleSystem *)self particleSize];
  v27 = v26 * -0.5 + v19 * v25;
  v28 = v23;
  result.y = v27;
  result.x = v28;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3
{
  v3 = [(KNBuildSparkleSystem *)self randomGenerator:a3.x];
  [v3 metalPoint3DRandomDirection];
  v5 = v4;
  v7 = v6;
  v9 = v8 * 0.01;
  [v3 randomDouble];
  v11 = v10 * v7;
  v12 = v10 * v9;
  v13 = v10 * v5;
  v14 = v11;
  v15 = v12;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (double)speedMax
{
  [(KNBuildSparkleSystem *)self objectSize];
  v4 = v3;
  [(KNBuildSparkleSystem *)self objectSize];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  [(KNBuildSparkleSystem *)self slideSize];
  v8 = v7;
  [(KNBuildSparkleSystem *)self slideSize];
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  return v6 / pow(v6 / v10, 0.667) * 0.25 * 1.5;
}

- (double)scaleAtIndexPoint:(CGPoint)a3
{
  [(KNBuildSparkleSystem *)self p_globalScale:a3.x];
  v5 = v4;
  [(KNBuildSparkleSystem *)self particleSize];
  return v5 / v6;
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3
{
  v4 = [(KNBuildSparkleSystem *)self indexFromPoint:a3.x, a3.y];
  v5 = v4 / [(KNBuildSparkleSystem *)self particleCount];
  [(KNBuildSparkleSystem *)self duration];
  v7 = 0.667 / fmax(v6, 0.75);
  v8 = v5 * (1.0 - v7);
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

@end