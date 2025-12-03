@interface _UIViewServiceViewControllerOperatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPostScreenChangedForChildViewController:(id)controller isAddition:(BOOL)addition;
@end

@implementation _UIViewServiceViewControllerOperatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UIViewServiceViewControllerOperator" hasInstanceVariable:@"_localViewController" withType:"UIViewController"];
  objc_storeStrong(location, 0);
}

- (BOOL)accessibilityPostScreenChangedForChildViewController:(id)controller isAddition:(BOOL)addition
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  additionCopy = addition;
  v11 = 0;
  objc_opt_class();
  v6 = [(_UIViewServiceViewControllerOperatorAccessibility *)selfCopy safeValueForKey:@"_localViewController"];
  v10 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v6);
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  v12 = v9;
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v16 = [v12 accessibilityPostScreenChangedForChildViewController:location[0] isAddition:additionCopy] & 1;
    v8 = 1;
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = _UIViewServiceViewControllerOperatorAccessibility;
    v16 = [(_UIViewServiceViewControllerOperatorAccessibility *)&v7 accessibilityPostScreenChangedForChildViewController:location[0] isAddition:additionCopy];
    v8 = 1;
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v16 & 1;
}

@end