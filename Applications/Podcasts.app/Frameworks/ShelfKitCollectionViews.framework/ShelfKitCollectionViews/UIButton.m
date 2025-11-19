@interface UIButton
- (double)firstBaselineFromTop;
- (double)lastBaselineFromBottom;
@end

@implementation UIButton

- (double)lastBaselineFromBottom
{
  v2 = self;
  v3 = UIButton.lastBaselineFromBottom.getter();

  return v3;
}

- (double)firstBaselineFromTop
{
  v2 = self;
  v3 = UIButton.firstBaselineFromTop.getter();

  return v3;
}

@end