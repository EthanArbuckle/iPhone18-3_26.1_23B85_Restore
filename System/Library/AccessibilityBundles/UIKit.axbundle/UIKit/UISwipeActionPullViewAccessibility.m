@interface UISwipeActionPullViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation UISwipeActionPullViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UISwipeActionPullView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceVariable:@"_buttons" withType:"NSMutableArray"];
  [location[0] validateClass:v3 hasInstanceVariable:@"_actions" withType:"NSArray"];
  objc_storeStrong(v5, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v21 = self;
  v20 = a2;
  v19.receiver = self;
  v19.super_class = UISwipeActionPullViewAccessibility;
  [(UISwipeActionPullViewAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v17 = 0;
  objc_opt_class();
  v4 = [(UISwipeActionPullViewAccessibility *)v21 safeValueForKey:@"_buttons"];
  v16 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v15 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v16, 0);
  v18 = v15;
  v13 = 0;
  objc_opt_class();
  v3 = [(UISwipeActionPullViewAccessibility *)v21 safeValueForKey:@"_actions"];
  v12 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v3);
  v11 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  v14 = v11;
  v2 = v18;
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __80__UISwipeActionPullViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9 = &unk_29F30D218;
  v10 = MEMORY[0x29EDC9748](v11);
  [v2 enumerateObjectsUsingBlock:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
}

void __80__UISwipeActionPullViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id *a1, void *a2, unint64_t a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = a3;
  v14[2] = a4;
  v14[1] = a1;
  if ([a1[4] count] > a3)
  {
    v14[0] = [a1[4] objectAtIndexedSubscript:v15];
    v7 = location[0];
    v8 = [v14[0] accessibilityLabel];
    v12 = 0;
    if ([v8 length])
    {
      v13 = [v14[0] accessibilityLabel];
      v12 = 1;
      [v7 setAccessibilityLabel:v13];
    }

    else
    {
      [v7 setAccessibilityLabel:0];
    }

    if (v12)
    {
      MEMORY[0x29EDC9740](v13);
    }

    *&v4 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    v5 = location[0];
    v6 = [v14[0] accessibilityIdentifier];
    [v5 setAccessibilityIdentifier:?];
    MEMORY[0x29EDC9740](v6);
    objc_storeStrong(v14, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)layoutSubviews
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UISwipeActionPullViewAccessibility;
  [(UISwipeActionPullViewAccessibility *)&v2 layoutSubviews];
  [(UISwipeActionPullViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
}

@end