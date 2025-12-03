@interface ARUIRingGroup
- (CGPoint)center;
@end

@implementation ARUIRingGroup

- (CGPoint)center
{
  selfCopy = self;
  [(ARUIRingGroup *)selfCopy translation];
  v4 = v3;
  [(ARUIRingGroup *)selfCopy translation];
  v8 = v5;

  v6 = v8;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

@end