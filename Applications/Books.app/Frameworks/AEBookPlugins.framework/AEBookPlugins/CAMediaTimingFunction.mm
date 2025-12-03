@interface CAMediaTimingFunction
+ (CAMediaTimingFunction)functionWithControlPoints:(const CGPoint *)points;
@end

@implementation CAMediaTimingFunction

+ (CAMediaTimingFunction)functionWithControlPoints:(const CGPoint *)points
{
  x = points->x;
  y = points->y;
  *&x = points->x;
  *&y = y;
  v5 = points[1].x;
  v6 = points[1].y;
  *&v5 = v5;
  *&v6 = v6;
  return [CAMediaTimingFunction functionWithControlPoints:x];
}

@end