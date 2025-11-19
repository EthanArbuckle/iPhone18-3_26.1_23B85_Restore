@interface UIStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)shouldGroupAccessibilityChildren;
@end

@implementation UIStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIStackView" isKindOfClass:@"UIView"];
  objc_storeStrong(location, 0);
}

- (BOOL)shouldGroupAccessibilityChildren
{
  v6 = 1;
  v5 = [(UIStackViewAccessibility *)self accessibilityUserDefinedShouldGroupChildren];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    v4 = [(UIStackViewAccessibility *)self accessibilityUserDefinedShouldGroupChildren];
    v6 = [v4 BOOLValue];
    MEMORY[0x29EDC9740](v4);
  }

  return v6 & 1;
}

@end