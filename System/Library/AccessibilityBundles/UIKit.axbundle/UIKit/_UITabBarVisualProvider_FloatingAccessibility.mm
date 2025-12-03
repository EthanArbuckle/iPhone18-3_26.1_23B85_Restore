@interface _UITabBarVisualProvider_FloatingAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
- (void)morphAnimationsForHostedElementsDidEnd;
@end

@implementation _UITabBarVisualProvider_FloatingAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v5 = @"UIKit._UITabBarVisualProvider_Floating";
  [location[0] validateClass:? hasSwiftField:? withSwiftType:?];
  [location[0] validateClass:@"UIKit._UITabBarVisualProvider_Floating" hasSwiftField:@"itemForCollapseButton" withSwiftType:"Optional<UITabBarItem>"];
  [location[0] validateClass:@"UIKit._UITabBarVisualProvider_Floating" hasInstanceMethod:@"currentMorphTarget" withFullSignature:{"q", 0}];
  v4 = @"_UITabBarVisualProvider";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:@"UITabBar" hasInstanceVariable:@"_selectedItem" withType:"UITabBarItem"];
  v3 = "v";
  [location[0] validateClass:v5 hasInstanceMethod:@"morphAnimationsForHostedElementsDidEnd" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceMethod:@"layoutSubviews" withFullSignature:{v3, 0}];
  [location[0] validateClass:v5 isKindOfClass:v4];
  [location[0] validateClass:v5 hasSwiftField:@"tabBarButtonsForItem" withSwiftType:{"Dictionary<UITabBarItem, _UITabButton>"}];
  objc_storeStrong(v7, obj);
}

- (void)layoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UITabBarVisualProvider_FloatingAccessibility;
  [(_UITabBarVisualProvider_FloatingAccessibility *)&v2 layoutSubviews];
  [(_UITabBarVisualProvider_FloatingAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v12 = a2;
  v11.receiver = self;
  v11.super_class = _UITabBarVisualProvider_FloatingAccessibility;
  [(_UITabBarVisualProvider_FloatingAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v10 = [(_UITabBarVisualProvider_FloatingAccessibility *)selfCopy safeSwiftValueForKey:@"collapseButton"];
  objc_initWeak(&location, selfCopy);
  v2 = v10;
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __91___UITabBarVisualProvider_FloatingAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7 = &unk_29F30C9E8;
  objc_copyWeak(&v8, &location);
  [v2 setAccessibilityLabelBlock:&v3];
  [v10 setAccessibilityValueBlock:&__block_literal_global_55];
  [v10 setAccessibilityHintBlock:&__block_literal_global_332];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  objc_storeStrong(&v10, 0);
}

- (void)morphAnimationsForHostedElementsDidEnd
{
  selfCopy = self;
  v12 = a2;
  v11.receiver = self;
  v11.super_class = _UITabBarVisualProvider_FloatingAccessibility;
  [(_UITabBarVisualProvider_FloatingAccessibility *)&v11 morphAnimationsForHostedElementsDidEnd];
  if (![(_UITabBarVisualProvider_FloatingAccessibility *)selfCopy safeIntegerForKey:@"currentMorphTarget"])
  {
    v9 = 0;
    objc_opt_class();
    v4 = [(_UITabBarVisualProvider_FloatingAccessibility *)selfCopy safeSwiftValueForKey:@"tabBarButtonsForItem"];
    v8 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v4);
    v7 = MEMORY[0x29EDC9748](v8);
    objc_storeStrong(&v8, 0);
    v10 = v7;
    v3 = [(_UITabBarVisualProvider_FloatingAccessibility *)selfCopy safeValueForKey:@"tabBar"];
    v6 = [v3 safeValueForKey:@"_selectedItem"];
    *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
    argument = [v10 objectForKey:{v6, v2}];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument);
    objc_storeStrong(&argument, 0);
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v10, 0);
  }
}

@end