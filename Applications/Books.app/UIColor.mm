@interface UIColor
- (BOOL)isDark;
@end

@implementation UIColor

- (BOOL)isDark
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [(UIColor *)v4 CGColor];
  LOBYTE(v3) = [v3 isDarkColor:v5];

  return v3;
}

@end