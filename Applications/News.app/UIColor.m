@interface UIColor
+ (UIColor)colorWithContentColorPair:(id)a3;
@end

@implementation UIColor

+ (UIColor)colorWithContentColorPair:(id)a3
{
  v3 = a3;
  v4 = [v3 lightColor];
  [v4 red];
  v6 = v5;
  v7 = [v3 lightColor];
  [v7 green];
  v9 = v8;
  v10 = [v3 lightColor];
  [v10 blue];
  v12 = v11;
  v13 = [v3 lightColor];
  [v13 alpha];
  v15 = [UIColor colorWithRed:v6 green:v9 blue:v12 alpha:v14];

  v16 = [v3 darkColor];
  [v16 red];
  v18 = v17;
  v19 = [v3 darkColor];
  [v19 green];
  v21 = v20;
  v22 = [v3 darkColor];
  [v22 blue];
  v24 = v23;
  v25 = [v3 darkColor];

  [v25 alpha];
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