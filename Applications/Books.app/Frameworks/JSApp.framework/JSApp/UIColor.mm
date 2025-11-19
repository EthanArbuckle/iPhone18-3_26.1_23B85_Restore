@interface UIColor
+ (id)jsa_colorWithHexString:(id)a3 alpha:(double)a4;
@end

@implementation UIColor

+ (id)jsa_colorWithHexString:(id)a3 alpha:(double)a4
{
  if (a3)
  {
    v9 = 0;
    v5 = [NSScanner scannerWithString:?];
    v6 = [NSCharacterSet characterSetWithCharactersInString:@"#"];
    [v5 setCharactersToBeSkipped:v6];

    [v5 scanHexInt:&v9];
    v7 = [UIColor _colorWithHexValue:v9 alpha:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end