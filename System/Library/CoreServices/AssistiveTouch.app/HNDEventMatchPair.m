@interface HNDEventMatchPair
- (CGPoint)point;
@end

@implementation HNDEventMatchPair

- (CGPoint)point
{
  x = self->point.x;
  y = self->point.y;
  result.y = y;
  result.x = x;
  return result;
}

@end