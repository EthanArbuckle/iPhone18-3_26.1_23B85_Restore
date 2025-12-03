@interface _UIEditMenuPageButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityViewIsVisible;
@end

@implementation _UIEditMenuPageButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIEditMenuPageButton" isKindOfClass:@"UIButton"];
  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityViewIsVisible
{
  selfCopy = self;
  v9 = a2;
  v8 = 0;
  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  [v6 alpha];
  v4 = v2;
  MEMORY[0x29EDC9740](v6);
  if (v4 != 1.0)
  {
    return 0;
  }

  v5.receiver = selfCopy;
  v5.super_class = _UIEditMenuPageButtonAccessibility;
  return [(_UIEditMenuPageButtonAccessibility *)&v5 _accessibilityViewIsVisible];
}

@end