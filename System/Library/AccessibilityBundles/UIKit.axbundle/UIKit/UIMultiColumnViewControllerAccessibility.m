@interface UIMultiColumnViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_secondColumnBarButtonItem:(int64_t)a3 createIfNecessary:(BOOL)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axModalizeViewControllerViews;
- (void)setNavControllers:(id)a3;
- (void)setViewControllers:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation UIMultiColumnViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = "@";
  v5 = @"UIMultiColumnViewController";
  v3 = "v";
  [location[0] validateClass:"@" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"setNavControllers:" withFullSignature:{v3, v6, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"navControllers" withFullSignature:{v6, 0}];
  v4 = "UIBarButtonItem";
  [location[0] validateClass:v5 hasInstanceVariable:@"_hideSecondColumnBarButtonItem" withType:?];
  [location[0] validateClass:v5 hasInstanceVariable:@"_showSecondColumnBarButtonItem" withType:v4];
  [location[0] validateClass:v5 isKindOfClass:@"UIViewController"];
  [location[0] validateClass:v5 hasInstanceMethod:@"_secondColumnBarButtonItem:createIfNecessary:" withFullSignature:{v6, "q", "B", 0}];
  objc_storeStrong(v8, v7);
}

- (void)_axModalizeViewControllerViews
{
  v20 = *MEMORY[0x29EDCA608];
  v18 = a1;
  if (a1)
  {
    v17 = [v18 safeValueForKey:@"navControllers"];
    memset(__b, 0, 0x40uLL);
    obj = MEMORY[0x29EDC9748](v17);
    v8 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
    if (v8)
    {
      v4 = *__b[2];
      v5 = 0;
      v6 = v8;
      while (1)
      {
        v3 = v5;
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(obj);
        }

        __b[8] = *(__b[1] + 8 * v5);
        v14 = 0;
        v13 = __UIAccessibilitySafeClass();
        if (v14)
        {
          abort();
        }

        v12 = MEMORY[0x29EDC9748](v13);
        objc_storeStrong(&v13, 0);
        v15 = [v12 view];
        *&v1 = MEMORY[0x29EDC9740](v12).n128_u64[0];
        [v15 setShouldGroupAccessibilityChildren:{1, v1}];
        objc_storeStrong(&v15, 0);
        ++v5;
        if (v3 + 1 >= v6)
        {
          v5 = 0;
          v6 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
          if (!v6)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v11 = 0;
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    v9 = MEMORY[0x29EDC9748](v10);
    objc_storeStrong(&v10, 0);
    v2 = [v9 view];
    [v2 _accessibilitySetSortPriority:1];
    MEMORY[0x29EDC9740](v2);
    MEMORY[0x29EDC9740](v9);
    objc_storeStrong(&v17, 0);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = UIMultiColumnViewControllerAccessibility;
  [(UIMultiColumnViewControllerAccessibility *)&v3 viewDidAppear:a3];
  [(UIMultiColumnViewControllerAccessibility *)v6 _axModalizeViewControllerViews];
}

- (void)setViewControllers:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UIMultiColumnViewControllerAccessibility;
  [(UIMultiColumnViewControllerAccessibility *)&v3 setViewControllers:location[0]];
  [(UIMultiColumnViewControllerAccessibility *)v5 _axModalizeViewControllerViews];
  objc_storeStrong(location, 0);
}

- (void)setNavControllers:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UIMultiColumnViewControllerAccessibility;
  [(UIMultiColumnViewControllerAccessibility *)&v3 setViewControllers:location[0]];
  [(UIMultiColumnViewControllerAccessibility *)v5 _axModalizeViewControllerViews];
  objc_storeStrong(location, 0);
}

- (id)_secondColumnBarButtonItem:(int64_t)a3 createIfNecessary:(BOOL)a4
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v6.receiver = self;
  v6.super_class = UIMultiColumnViewControllerAccessibility;
  v7 = [(UIMultiColumnViewControllerAccessibility *)&v6 _secondColumnBarButtonItem:a3 createIfNecessary:a4];
  [(UIMultiColumnViewControllerAccessibility *)v11 _accessibilityLoadAccessibilityInformation];
  v5 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);

  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = UIMultiColumnViewControllerAccessibility;
  [(UIMultiColumnViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v4 = [(UIMultiColumnViewControllerAccessibility *)v9 safeValueForKey:@"_hideSecondColumnBarButtonItem"];
  v3 = UIKitAccessibilityLocalizedString();
  [v4 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v3);
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v6 = [(UIMultiColumnViewControllerAccessibility *)v9 safeValueForKey:@"_showSecondColumnBarButtonItem", v2];
  v5 = UIKitAccessibilityLocalizedString();
  [v6 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
  [(UIMultiColumnViewControllerAccessibility *)v9 _axModalizeViewControllerViews];
}

@end