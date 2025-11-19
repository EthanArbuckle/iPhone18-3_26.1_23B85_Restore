@interface UIColor(MKTransitExtras)
+ (id)_mapkit_colorForTransitLine:()MKTransitExtras;
@end

@implementation UIColor(MKTransitExtras)

+ (id)_mapkit_colorForTransitLine:()MKTransitExtras
{
  v4 = a3;
  if ([v4 hasLineColorString])
  {
    v5 = [v4 lineColorString];
    VKShieldColorsFromHexString();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    VKShieldColorsFromHexString();
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = [a1 colorWithRed:v7 green:v9 blue:v11 alpha:v13];

  return v18;
}

@end