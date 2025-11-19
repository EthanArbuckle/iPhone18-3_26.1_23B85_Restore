@interface UIColor
+ (id)color:(id)a3 byAddingColor:(id)a4;
@end

@implementation UIColor

+ (id)color:(id)a3 byAddingColor:(id)a4
{
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v5 = a4;
  [a3 getRed:&v15 green:&v14 blue:&v13 alpha:&v12];
  [v5 getRed:&v11 green:&v10 blue:&v9 alpha:&v8];

  v6 = [UIColor colorWithRed:(1.0 - v8) * v15 + v8 * v11 green:(1.0 - v8) * v14 + v8 * v10 blue:(1.0 - v8) * v13 + v8 * v9 alpha:1.0];

  return v6;
}

@end