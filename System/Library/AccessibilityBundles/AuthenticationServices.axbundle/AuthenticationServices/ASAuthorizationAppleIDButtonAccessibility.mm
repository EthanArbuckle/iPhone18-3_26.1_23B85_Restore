@interface ASAuthorizationAppleIDButtonAccessibility
- (id)accessibilityPath;
@end

@implementation ASAuthorizationAppleIDButtonAccessibility

- (id)accessibilityPath
{
  [(ASAuthorizationAppleIDButtonAccessibility *)self safeCGFloatForKey:@"cornerRadius"];
  v3 = MEMORY[0x29EDC7948];
  [(ASAuthorizationAppleIDButtonAccessibility *)self bounds];
  v4 = [v3 bezierPathWithRoundedRect:-1 byRoundingCorners:? cornerRadii:?];
  v5 = UIAccessibilityConvertPathFunction();

  return v5;
}

@end