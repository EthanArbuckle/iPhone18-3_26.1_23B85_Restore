@interface UIFont
- (double)bk_heightFromCapLineToDescender;
@end

@implementation UIFont

- (double)bk_heightFromCapLineToDescender
{
  [(UIFont *)self capHeight];
  v4 = v3;
  [(UIFont *)self descender];
  return v4 - v5;
}

@end