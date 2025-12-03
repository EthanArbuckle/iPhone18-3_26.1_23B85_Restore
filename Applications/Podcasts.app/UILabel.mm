@interface UILabel
- (BOOL)textFitsNumberOfLines:(int64_t)lines forWidth:(double)width;
- (double)mt_baselineOriginY;
- (double)mt_capOriginY;
@end

@implementation UILabel

- (double)mt_capOriginY
{
  [(UILabel *)self frame];
  MinY = CGRectGetMinY(v8);
  font = [(UILabel *)self font];
  [font mt_offsetFromCapHeightToAscent];
  v6 = MinY + v5;

  return v6;
}

- (double)mt_baselineOriginY
{
  [(UILabel *)self frame];
  MaxY = CGRectGetMaxY(v6);
  [(UILabel *)self _baselineOffsetFromBottom];
  return MaxY - v4;
}

- (BOOL)textFitsNumberOfLines:(int64_t)lines forWidth:(double)width
{
  if (!lines)
  {
    return 1;
  }

  [(UILabel *)self textRectForBounds:0.0 limitedToNumberOfLines:0.0, width, 1.79769313e308];
  v8 = v7;
  [(UILabel *)self textRectForBounds:lines + 1 limitedToNumberOfLines:0.0, 0.0, width, 1.79769313e308];
  return v9 - v8 <= 0.00000011920929;
}

@end