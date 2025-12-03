@interface UIColor
+ (UIColor)colorWithContentColorPair:(id)pair;
@end

@implementation UIColor

+ (UIColor)colorWithContentColorPair:(id)pair
{
  pairCopy = pair;
  lightColor = [pairCopy lightColor];
  [lightColor red];
  v6 = v5;
  lightColor2 = [pairCopy lightColor];
  [lightColor2 green];
  v9 = v8;
  lightColor3 = [pairCopy lightColor];
  [lightColor3 blue];
  v12 = v11;
  lightColor4 = [pairCopy lightColor];
  [lightColor4 alpha];
  v15 = [UIColor colorWithRed:v6 green:v9 blue:v12 alpha:v14];

  darkColor = [pairCopy darkColor];
  [darkColor red];
  v18 = v17;
  darkColor2 = [pairCopy darkColor];
  [darkColor2 green];
  v21 = v20;
  darkColor3 = [pairCopy darkColor];
  [darkColor3 blue];
  v24 = v23;
  darkColor4 = [pairCopy darkColor];

  [darkColor4 alpha];
  v27 = [UIColor colorWithRed:v18 green:v21 blue:v24 alpha:v26];

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10003C3CC;
  v32[3] = &unk_1000C42B8;
  v33 = v27;
  v34 = v15;
  v28 = v15;
  v29 = v27;
  v30 = [UIColor colorWithDynamicProvider:v32];

  return v30;
}

@end