@interface CAMediaTimingFunction
+ (CAMediaTimingFunction)functionWithControlPoints:(const CGPoint *)a3;
@end

@implementation CAMediaTimingFunction

+ (CAMediaTimingFunction)functionWithControlPoints:(const CGPoint *)a3
{
  x = a3->x;
  y = a3->y;
  *&x = a3->x;
  *&y = y;
  v5 = a3[1].x;
  v6 = a3[1].y;
  *&v5 = v5;
  *&v6 = v6;
  return [CAMediaTimingFunction functionWithControlPoints:x];
}

@end