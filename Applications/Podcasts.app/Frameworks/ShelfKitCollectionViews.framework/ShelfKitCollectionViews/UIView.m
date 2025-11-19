@interface UIView
- (double)firstBaselineFromTop;
- (double)lastBaselineMaxY;
@end

@implementation UIView

- (double)firstBaselineFromTop
{
  v2 = self;
  [(UIView *)v2 frame];
  MaxY = CGRectGetMaxY(v5);

  return MaxY;
}

- (double)lastBaselineMaxY
{
  v2 = self;
  [(UIView *)v2 frame];
  MaxY = CGRectGetMaxY(v7);
  [(UIView *)v2 lastBaselineFromBottom];
  v5 = v4;

  return MaxY - v5;
}

@end