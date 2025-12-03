@interface UIButton
- (double)mt_firstBaselineOffsetFromTop;
@end

@implementation UIButton

- (double)mt_firstBaselineOffsetFromTop
{
  titleLabel = [(UIButton *)self titleLabel];
  [titleLabel mt_baselineOriginY];
  v4 = v3;

  return v4;
}

@end