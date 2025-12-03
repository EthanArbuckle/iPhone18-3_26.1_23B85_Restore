@interface UIColor
+ (id)_maps_colorFromHexRepresentation:(id)representation;
+ (id)_maps_darkKeyColor;
+ (id)_maps_keyColor;
- (double)_maps_euclideanDistanceFromColor:(id)color;
@end

@implementation UIColor

+ (id)_maps_keyColor
{
  if (qword_96C88 != -1)
  {
    sub_3B3A8();
  }

  v3 = qword_96C80;

  return v3;
}

+ (id)_maps_darkKeyColor
{
  if (qword_96C98 != -1)
  {
    sub_3B3BC();
  }

  v3 = qword_96C90;

  return v3;
}

+ (id)_maps_colorFromHexRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy length] == &dword_8)
  {
    v7 = 0;
    v4 = [NSScanner scannerWithString:representationCopy];
    [v4 scanHexInt:&v7];
    v5 = [UIColor colorWithRed:HIBYTE(v7) / 255.0 green:BYTE2(v7) / 255.0 blue:BYTE1(v7) / 255.0 alpha:v7 / 255.0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_maps_euclideanDistanceFromColor:(id)color
{
  v9 = 0u;
  *v10 = 0u;
  colorCopy = color;
  [(UIColor *)self getRed:&v9 green:&v9.f64[1] blue:v10 alpha:&v10[1]];
  v7 = 0u;
  v8 = 0u;
  [colorCopy getRed:&v7 green:&v7.f64[1] blue:&v8 alpha:&v8 + 8];

  v5 = vsubq_f64(v9, v7);
  return sqrt(vaddvq_f64(vmulq_f64(v5, v5)) + (v10[0] - *&v8) * (v10[0] - *&v8));
}

@end