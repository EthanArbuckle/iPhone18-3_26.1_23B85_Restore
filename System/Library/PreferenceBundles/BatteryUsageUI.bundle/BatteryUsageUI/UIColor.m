@interface UIColor
- (id)dynamicGrayScaleColor;
- (id)grayScaleColor;
- (id)grayScaleColorWithMin:(double)a3 andMax:(double)a4;
@end

@implementation UIColor

- (id)grayScaleColor
{
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v2 = self;
  if ([(UIColor *)v2 getRed:&v8 green:&v7 blue:&v6 alpha:&v5])
  {
    v3 = [UIColor colorWithWhite:v7 * 0.587 + v8 * 0.299 + v6 * 0.114 alpha:v5];

    v2 = v3;
  }

  return v2;
}

- (id)dynamicGrayScaleColor
{
  v3 = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
  v4 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v10[0] = v3;
  v5 = [(UIColor *)self grayScaleColorWithMin:0.72 andMax:0.92];
  v10[1] = v4;
  v11[0] = v5;
  v6 = [(UIColor *)self grayScaleColorWithMin:0.16 andMax:0.35];
  v11[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = [UIColor _dynamicColorWithColorsByTraitCollection:v7];

  return v8;
}

- (id)grayScaleColorWithMin:(double)a3 andMax:(double)a4
{
  v13 = 0;
  v14 = 0;
  v11 = 0.0;
  v12 = 0;
  v6 = self;
  if ([(UIColor *)v6 getRed:&v14 green:&v13 blue:&v12 alpha:&v11])
  {
    [(UIColor *)v6 _luminance];
    v8 = cos(v7 * 3.14159265);
    v9 = [UIColor colorWithWhite:(a3 + (a4 - a3) * (0.5 - v8 * 0.5)) alpha:v11];

    v6 = v9;
  }

  return v6;
}

@end