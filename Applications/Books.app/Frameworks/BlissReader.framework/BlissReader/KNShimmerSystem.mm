@interface KNShimmerSystem
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3;
- (double)speedMax;
- (void)drawWithPercent:(double)a3 opacity:(double)a4 rotation:(double)a5 clockwise:(BOOL)a6 texture:(id)a7 context:(id)a8;
@end

@implementation KNShimmerSystem

- (void)drawWithPercent:(double)a3 opacity:(double)a4 rotation:(double)a5 clockwise:(BOOL)a6 texture:(id)a7 context:(id)a8
{
  v10 = [TSUAssertionHandler currentHandler:a6];
  v8 = [NSString stringWithUTF8String:"[KNShimmerSystem drawWithPercent:opacity:rotation:clockwise:texture:context:]"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/Builds/KNBuildShimmer.m"];
  [v10 handleFailureInFunction:v8 file:v9 lineNumber:526 description:{@"Call me on the subclass, genius!"}];
}

- (double)speedMax
{
  [(KNShimmerSystem *)self objectSize];
  v4 = v3;
  [(KNShimmerSystem *)self objectSize];
  return sqrt(v4 * v5) * 0.075;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)a3
{
  v3 = [(KNShimmerSystem *)self randomGenerator:a3.x];
  [v3 metalPoint3DRandomDirection];
  v5 = v4;
  v7 = v6;

  v8 = 0.0;
  v9 = v5;
  v10 = v7;
  result.var2 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

@end