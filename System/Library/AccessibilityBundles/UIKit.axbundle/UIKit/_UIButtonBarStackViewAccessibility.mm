@interface _UIButtonBarStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation _UIButtonBarStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIButtonBarStackView" isKindOfClass:@"UIStackView"];
  objc_storeStrong(location, 0);
}

@end