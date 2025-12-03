@interface UIColor
+ (id)jsa_colorWithHexString:(id)string alpha:(double)alpha;
@end

@implementation UIColor

+ (id)jsa_colorWithHexString:(id)string alpha:(double)alpha
{
  if (string)
  {
    v9 = 0;
    v5 = [NSScanner scannerWithString:?];
    v6 = [NSCharacterSet characterSetWithCharactersInString:@"#"];
    [v5 setCharactersToBeSkipped:v6];

    [v5 scanHexInt:&v9];
    v7 = [UIColor _colorWithHexValue:v9 alpha:alpha];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end