@interface UIStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)shouldGroupAccessibilityChildren;
@end

@implementation UIStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIStackView" isKindOfClass:@"UIView"];
  objc_storeStrong(location, 0);
}

- (BOOL)shouldGroupAccessibilityChildren
{
  bOOLValue = 1;
  accessibilityUserDefinedShouldGroupChildren = [(UIStackViewAccessibility *)self accessibilityUserDefinedShouldGroupChildren];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedShouldGroupChildren).n128_u64[0];
  if (accessibilityUserDefinedShouldGroupChildren)
  {
    accessibilityUserDefinedShouldGroupChildren2 = [(UIStackViewAccessibility *)self accessibilityUserDefinedShouldGroupChildren];
    bOOLValue = [accessibilityUserDefinedShouldGroupChildren2 BOOLValue];
    MEMORY[0x29EDC9740](accessibilityUserDefinedShouldGroupChildren2);
  }

  return bOOLValue & 1;
}

@end