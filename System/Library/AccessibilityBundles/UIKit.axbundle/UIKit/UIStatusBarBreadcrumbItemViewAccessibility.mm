@interface UIStatusBarBreadcrumbItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation UIStatusBarBreadcrumbItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UIStatusBarSystemNavigationItemView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v3 = @"UIStatusBarBreadcrumbItemView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:v3 isKindOfClass:v4];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v11[1] = a2;
  v10 = 0;
  objc_opt_class();
  v7 = [(UIStatusBarBreadcrumbItemViewAccessibility *)selfCopy safeValueForKey:@"button"];
  v9 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v7);
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  v11[0] = v8;
  v3 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"breadcrumb.return.to.app");
  accessibilityLabel = [v11[0] accessibilityLabel];
  v6 = [v3 stringWithFormat:v5, accessibilityLabel];
  MEMORY[0x29EDC9740](accessibilityLabel);
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(v11, 0);

  return v6;
}

@end