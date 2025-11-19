@interface UIButton
- (double)mt_firstBaselineOffsetFromTop;
@end

@implementation UIButton

- (double)mt_firstBaselineOffsetFromTop
{
  v2 = [(UIButton *)self titleLabel];
  [v2 mt_baselineOriginY];
  v4 = v3;

  return v4;
}

@end