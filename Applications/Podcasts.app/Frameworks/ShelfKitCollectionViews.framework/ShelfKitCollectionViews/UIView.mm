@interface UIView
- (double)firstBaselineFromTop;
- (double)lastBaselineMaxY;
@end

@implementation UIView

- (double)firstBaselineFromTop
{
  selfCopy = self;
  [(UIView *)selfCopy frame];
  MaxY = CGRectGetMaxY(v5);

  return MaxY;
}

- (double)lastBaselineMaxY
{
  selfCopy = self;
  [(UIView *)selfCopy frame];
  MaxY = CGRectGetMaxY(v7);
  [(UIView *)selfCopy lastBaselineFromBottom];
  v5 = v4;

  return MaxY - v5;
}

@end