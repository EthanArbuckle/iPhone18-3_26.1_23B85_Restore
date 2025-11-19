@interface UIView
- (UIColor)borderColor;
- (UIColor)shadowUIColor;
- (double)borderWidth;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
- (void)setShadowUIColor:(id)a3;
@end

@implementation UIView

- (void)setShadowUIColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];
  v7 = [(UIView *)self layer];
  [v7 setShadowColor:v6];
}

- (UIColor)shadowUIColor
{
  v2 = [(UIView *)self layer];
  v3 = [v2 shadowColor];

  return [UIColor colorWithCGColor:v3];
}

- (void)setBorderWidth:(double)a3
{
  v5 = [NSNumber numberWithDouble:?];
  objc_setAssociatedObject(self, "borderWidth", v5, 1);

  v9 = +[UIScreen mainScreen];
  [v9 scale];
  v7 = a3 / v6;
  v8 = [(UIView *)self layer];
  [v8 setBorderWidth:v7];
}

- (double)borderWidth
{
  v2 = objc_getAssociatedObject(self, "borderWidth");
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setBorderColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];
  v7 = [(UIView *)self layer];
  [v7 setBorderColor:v6];
}

- (UIColor)borderColor
{
  v2 = [(UIView *)self layer];
  v3 = [v2 borderColor];

  return [UIColor colorWithCGColor:v3];
}

@end