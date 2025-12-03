@interface UIView
- (UIColor)borderColor;
- (UIColor)shadowUIColor;
- (double)borderWidth;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
- (void)setShadowUIColor:(id)color;
@end

@implementation UIView

- (void)setShadowUIColor:(id)color
{
  colorCopy = color;
  cGColor = [color CGColor];
  layer = [(UIView *)self layer];
  [layer setShadowColor:cGColor];
}

- (UIColor)shadowUIColor
{
  layer = [(UIView *)self layer];
  shadowColor = [layer shadowColor];

  return [UIColor colorWithCGColor:shadowColor];
}

- (void)setBorderWidth:(double)width
{
  v5 = [NSNumber numberWithDouble:?];
  objc_setAssociatedObject(self, "borderWidth", v5, 1);

  v9 = +[UIScreen mainScreen];
  [v9 scale];
  v7 = width / v6;
  layer = [(UIView *)self layer];
  [layer setBorderWidth:v7];
}

- (double)borderWidth
{
  v2 = objc_getAssociatedObject(self, "borderWidth");
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  cGColor = [color CGColor];
  layer = [(UIView *)self layer];
  [layer setBorderColor:cGColor];
}

- (UIColor)borderColor
{
  layer = [(UIView *)self layer];
  borderColor = [layer borderColor];

  return [UIColor colorWithCGColor:borderColor];
}

@end