@interface KNBuildSmokeSystem
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)a3;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3;
- (CGPoint)startingPointAtIndexPoint:(CGPoint)a3;
- (double)scaleAtIndexPoint:(CGPoint)a3;
@end

@implementation KNBuildSmokeSystem

- (CGPoint)startingPointAtIndexPoint:(CGPoint)a3
{
  v4 = [(KNBuildSmokeSystem *)self indexFromPoint:a3.x, a3.y];
  [(KNBuildSmokeSystem *)self objectSize];
  v6 = v5 * v4 / [(KNBuildSmokeSystem *)self particleCount];
  [(KNBuildSmokeSystem *)self particleSize];
  v8 = v6 + v7 * -0.5;
  TSURandom();
  v10 = v9;
  [(KNBuildSmokeSystem *)self objectSize];
  v12 = v11;
  [(KNBuildSmokeSystem *)self particleSize];
  v14 = v13 * -0.5 + v10 * v12;
  v15 = v8;
  result.y = v14;
  result.x = v15;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3
{
  v3 = [(KNBuildSmokeSystem *)self randomGenerator:a3.x];
  [v3 doubleBetween:-1.0 :-0.3];
  v5 = v4;

  v6 = 0.0;
  v7 = 0.0;
  v8 = v5;
  result.var2 = v7;
  result.var1 = v8;
  result.var0 = v6;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)a3
{
  v3 = [(KNBuildSmokeSystem *)self randomGenerator:a3.x];
  [v3 doubleBetween:-1.0 :1.0];
  v5 = v4;

  v6 = 0.0;
  v7 = 0.0;
  v8 = v5;
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (double)scaleAtIndexPoint:(CGPoint)a3
{
  v4 = [(KNBuildSmokeSystem *)self randomGenerator:a3.x];
  [(KNBuildSmokeSystem *)self scaleMax];
  [v4 doubleBetween:1.0 :v5];
  v7 = v6;

  return v7;
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)a3
{
  [(KNBuildSmokeSystem *)self indexFromPoint:a3.x, a3.y];
  [(KNBuildSmokeSystem *)self objectSize];
  [(KNBuildSmokeSystem *)self particleCount];
  v4 = [(KNBuildSmokeSystem *)self direction];
  if (v4 == (&stru_20.maxprot + 3))
  {
    goto LABEL_7;
  }

  if (v4 != &dword_C && v4 != (&dword_8 + 3))
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[KNBuildSmokeSystem lifeSpanAtIndexPoint:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildCrumble.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:941 description:@"Invalid direction!"];

LABEL_7:
    TSURandomBetween();
    goto LABEL_8;
  }

  [(KNBuildSmokeSystem *)self objectSize];
LABEL_8:
  [(KNBuildSmokeSystem *)self lifeSpanDelay];
  [(KNBuildSmokeSystem *)self lifeSpanDelay];
  TSUClamp();
  v9 = v8;
  [(KNBuildSmokeSystem *)self lifeSpanDelay];
  v11 = 1.0 - v10;
  v12 = v9;
  v13 = v11;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

@end