@interface UISwipeActionDynamicPullViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_rebuildButtons;
@end

@implementation UISwipeActionDynamicPullViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UISwipeActionDynamicPullView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:@"_UISwipeActionDynamicButtonView" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [location[0] validateClass:v3 hasInstanceVariable:@"_buttons" withType:"NSMutableArray"];
  [location[0] validateClass:v3 hasInstanceVariable:@"_actions" withType:"NSArray"];
  objc_storeStrong(v5, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v20 = a2;
  v19.receiver = self;
  v19.super_class = UISwipeActionDynamicPullViewAccessibility;
  [(UISwipeActionDynamicPullViewAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v17 = 0;
  objc_opt_class();
  v4 = [(UISwipeActionDynamicPullViewAccessibility *)selfCopy safeValueForKey:@"_buttons"];
  v16 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v15 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v16, 0);
  v18 = v15;
  v13 = 0;
  objc_opt_class();
  v3 = [(UISwipeActionDynamicPullViewAccessibility *)selfCopy safeValueForKey:@"_actions"];
  v12 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v3);
  v11 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  v14 = v11;
  v2 = v18;
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __87__UISwipeActionDynamicPullViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9 = &unk_29F30D218;
  v10 = MEMORY[0x29EDC9748](v11);
  [v2 enumerateObjectsUsingBlock:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
}

void __87__UISwipeActionDynamicPullViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id *a1, void *a2, unint64_t a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = a3;
  v13[2] = a4;
  v13[1] = a1;
  if ([a1[4] count] > a3)
  {
    v13[0] = [a1[4] objectAtIndexedSubscript:v14];
    v12 = [location[0] safeValueForKey:@"button"];
    v6 = [v13[0] accessibilityLabel];
    v10 = 0;
    if ([v6 length])
    {
      v11 = [v13[0] accessibilityLabel];
      v10 = 1;
      [v12 setAccessibilityLabel:v11];
    }

    else
    {
      [v12 setAccessibilityLabel:0];
    }

    if (v10)
    {
      MEMORY[0x29EDC9740](v11);
    }

    v4 = v12;
    v5 = [v13[0] accessibilityIdentifier];
    [v4 setAccessibilityIdentifier:?];
    MEMORY[0x29EDC9740](v5);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(v13, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_rebuildButtons
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UISwipeActionDynamicPullViewAccessibility;
  [(UISwipeActionDynamicPullViewAccessibility *)&v2 _rebuildButtons];
  [(UISwipeActionDynamicPullViewAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
}

@end