@interface UILabel
- (BOOL)textFitsNumberOfLines:(int64_t)a3 forWidth:(double)a4;
- (double)mt_baselineOriginY;
- (double)mt_capOriginY;
@end

@implementation UILabel

- (double)mt_capOriginY
{
  [(UILabel *)self frame];
  MinY = CGRectGetMinY(v8);
  v4 = [(UILabel *)self font];
  [v4 mt_offsetFromCapHeightToAscent];
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

- (BOOL)textFitsNumberOfLines:(int64_t)a3 forWidth:(double)a4
{
  if (!a3)
  {
    return 1;
  }

  [(UILabel *)self textRectForBounds:0.0 limitedToNumberOfLines:0.0, a4, 1.79769313e308];
  v8 = v7;
  [(UILabel *)self textRectForBounds:a3 + 1 limitedToNumberOfLines:0.0, 0.0, a4, 1.79769313e308];
  return v9 - v8 <= 0.00000011920929;
}

@end