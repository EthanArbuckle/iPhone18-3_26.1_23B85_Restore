@interface MapsAutolayoutLabel
- (UIEdgeInsets)alignmentRectInsets;
@end

@implementation MapsAutolayoutLabel

- (UIEdgeInsets)alignmentRectInsets
{
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  if ([(MapsAutolayoutLabel *)self shouldInsetAlignmentToAscender])
  {
    v6 = [(MapsAutolayoutLabel *)self font];
    [v6 lineHeight];
    [v6 ascender];
    UIRoundToViewScale();
    top = v7;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
  }

  v9 = top;
  v10 = left;
  v11 = bottom;
  v12 = right;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

@end