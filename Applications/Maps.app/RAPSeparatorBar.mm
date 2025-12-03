@interface RAPSeparatorBar
+ (double)thickness;
- (RAPSeparatorBar)init;
- (void)_updateBackgroundColor;
@end

@implementation RAPSeparatorBar

- (void)_updateBackgroundColor
{
  traitCollection = [(RAPSeparatorBar *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 1)
  {
    +[UIColor tableSeparatorDarkColor];
  }

  else
  {
    +[UIColor tableSeparatorLightColor];
  }
  v3 = ;
  [(RAPSeparatorBar *)self setBackgroundColor:v3];
}

- (RAPSeparatorBar)init
{
  v5.receiver = self;
  v5.super_class = RAPSeparatorBar;
  v2 = [(RAPSeparatorBar *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RAPSeparatorBar *)v2 _updateBackgroundColor];
  }

  return v3;
}

+ (double)thickness
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v4 = 1.0 / v3;

  return v4;
}

@end