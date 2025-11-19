@interface UITouch(UITouch_ASVTouch)
- (double)location;
- (double)previousLocation;
@end

@implementation UITouch(UITouch_ASVTouch)

- (double)location
{
  v2 = [a1 view];
  [a1 preciseLocationInView:v2];
  v5 = pointToFloat2(v3, v4);

  return v5;
}

- (double)previousLocation
{
  v2 = [a1 view];
  [a1 precisePreviousLocationInView:v2];
  v5 = pointToFloat2(v3, v4);

  return v5;
}

@end