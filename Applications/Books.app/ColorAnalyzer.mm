@interface ColorAnalyzer
- (BOOL)isDarkColor:(CGColor *)color;
- (double)colorLuminance:(CGColor *)luminance;
@end

@implementation ColorAnalyzer

- (BOOL)isDarkColor:(CGColor *)color
{
  v4 = objc_opt_self();

  return [v4 isDarkColor:color];
}

- (double)colorLuminance:(CGColor *)luminance
{
  v4 = objc_opt_self();

  [v4 colorLuminance:luminance];
  return result;
}

@end