@interface UITouch(UITouch_ASVTouch)
- (double)location;
- (double)previousLocation;
@end

@implementation UITouch(UITouch_ASVTouch)

- (double)location
{
  view = [self view];
  [self preciseLocationInView:view];
  v5 = pointToFloat2(v3, v4);

  return v5;
}

- (double)previousLocation
{
  view = [self view];
  [self precisePreviousLocationInView:view];
  v5 = pointToFloat2(v3, v4);

  return v5;
}

@end