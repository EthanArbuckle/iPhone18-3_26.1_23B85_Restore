@interface UIStatusBarBreadcrumbItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation UIStatusBarBreadcrumbItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UIStatusBarSystemNavigationItemView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v3 = @"UIStatusBarBreadcrumbItemView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:v3 isKindOfClass:v4];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityLabel
{
  v12 = self;
  v11[1] = a2;
  v10 = 0;
  objc_opt_class();
  v7 = [(UIStatusBarBreadcrumbItemViewAccessibility *)v12 safeValueForKey:@"button"];
  v9 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v7);
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  v11[0] = v8;
  v3 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"breadcrumb.return.to.app");
  v4 = [v11[0] accessibilityLabel];
  v6 = [v3 stringWithFormat:v5, v4];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(v11, 0);

  return v6;
}

@end