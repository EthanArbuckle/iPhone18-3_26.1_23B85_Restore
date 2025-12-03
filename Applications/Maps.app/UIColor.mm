@interface UIColor
+ (id)_maps_colorFromHexRepresentation:(id)representation;
+ (id)_maps_darkKeyColor;
+ (id)_maps_keyColor;
+ (id)carPlayDashboardJunctionColor;
+ (id)rating3;
+ (id)rating4;
+ (id)rating5;
- (double)_maps_euclideanDistanceFromColor:(id)color;
- (id)_maps_legibleTextColor;
@end

@implementation UIColor

+ (id)_maps_keyColor
{
  if (qword_10195CC68 != -1)
  {
    dispatch_once(&qword_10195CC68, &stru_101623B30);
  }

  v3 = qword_10195CC60;

  return v3;
}

+ (id)rating3
{
  v2 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.68627451 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)rating4
{
  v2 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.568627451 blue:0.0 alpha:1.0];

  return v2;
}

+ (id)rating5
{
  v2 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.450980392 blue:0.0 alpha:1.0];

  return v2;
}

- (double)_maps_euclideanDistanceFromColor:(id)color
{
  memset(v9, 0, sizeof(v9));
  colorCopy = color;
  [(UIColor *)self getRed:v9 green:&v9[0].f64[1] blue:&v9[1] alpha:&v9[1].f64[1]];
  memset(v8, 0, sizeof(v8));
  [colorCopy getRed:v8 green:&v8[0].f64[1] blue:&v8[1] alpha:&v8[1].f64[1]];

  v5 = vsubq_f64(*(v9 + 8), *(v8 + 8));
  v6 = vmulq_f64(v5, v5);
  return sqrt(v6.f64[0] + (v9[0].f64[0] - v8[0].f64[0]) * (v9[0].f64[0] - v8[0].f64[0]) + v6.f64[1]);
}

+ (id)_maps_colorFromHexRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy length] == 8)
  {
    v7 = 0;
    v4 = [NSScanner scannerWithString:representationCopy];
    [v4 scanHexInt:&v7];
    v5 = [UIColor colorWithRed:HIBYTE(v7) * 0.00392156863 green:BYTE2(v7) * 0.00392156863 blue:BYTE1(v7) * 0.00392156863 alpha:v7 * 0.00392156863];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_maps_darkKeyColor
{
  if (qword_10195CC78 != -1)
  {
    dispatch_once(&qword_10195CC78, &stru_101623B50);
  }

  v3 = qword_10195CC70;

  return v3;
}

+ (id)carPlayDashboardJunctionColor
{
  v2 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
  v3 = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
  v9[0] = v2;
  v4 = [UIColor colorWithWhite:0.0 alpha:0.3];
  v9[1] = v3;
  v10[0] = v4;
  v5 = [UIColor colorWithWhite:1.0 alpha:0.3];
  v10[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [UIColor _dynamicColorWithColorsByTraitCollection:v6];

  return v7;
}

- (id)_maps_legibleTextColor
{
  [(UIColor *)self _luminance];
  if (v2 <= 0.699999988)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v3 = ;

  return v3;
}

@end