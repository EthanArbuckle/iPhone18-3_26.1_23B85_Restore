@interface ARUIRingGroup
- (CGPoint)center;
@end

@implementation ARUIRingGroup

- (CGPoint)center
{
  v2 = self;
  [(ARUIRingGroup *)v2 translation];
  v4 = v3;
  [(ARUIRingGroup *)v2 translation];
  v8 = v5;

  v6 = v8;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

@end