@interface UIColor
- (BOOL)isDark;
@end

@implementation UIColor

- (BOOL)isDark
{
  v3 = objc_opt_self();
  selfCopy = self;
  cGColor = [(UIColor *)selfCopy CGColor];
  LOBYTE(v3) = [v3 isDarkColor:cGColor];

  return v3;
}

@end