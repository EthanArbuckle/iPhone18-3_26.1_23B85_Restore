@interface KNShimmerSystem
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point;
- (double)speedMax;
- (void)drawWithPercent:(double)percent opacity:(double)opacity rotation:(double)rotation clockwise:(BOOL)clockwise texture:(id)texture context:(id)context;
@end

@implementation KNShimmerSystem

- (void)drawWithPercent:(double)percent opacity:(double)opacity rotation:(double)rotation clockwise:(BOOL)clockwise texture:(id)texture context:(id)context
{
  v10 = [TSUAssertionHandler currentHandler:clockwise];
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

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point
{
  v3 = [(KNShimmerSystem *)self randomGenerator:point.x];
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