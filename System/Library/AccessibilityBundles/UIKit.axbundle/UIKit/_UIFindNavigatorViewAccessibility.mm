@interface _UIFindNavigatorViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UIFindNavigatorViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIFindNavigatorView";
  [location[0] validateClass:? isKindOfClass:?];
  v4 = "@";
  [location[0] validateClass:@"_UIFindNavigatorView" hasInstanceMethod:@"settingsButton" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"replaceTextField" withFullSignature:{v4, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"previousResultButton" withFullSignature:{v4, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"nextResultButton" withFullSignature:{v4, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"doneButton" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v20 = a2;
  v19.receiver = self;
  v19.super_class = _UIFindNavigatorViewAccessibility;
  [(_UIFindNavigatorViewAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v13 = [(_UIFindNavigatorViewAccessibility *)selfCopy safeValueForKey:@"settingsButton"];
  v12 = accessibilityUIKitLocalizedString();
  [v13 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v12);
  MEMORY[0x29EDC9740](v13);
  v17 = 0;
  objc_opt_class();
  v14 = [(_UIFindNavigatorViewAccessibility *)selfCopy safeValueForKey:@"replaceTextField"];
  v16 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v14);
  v15 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v16, 0);
  v18 = v15;
  leftView = [v15 leftView];
  [leftView setIsAccessibilityElement:0];
  *&v2 = MEMORY[0x29EDC9740](leftView).n128_u64[0];
  v7 = [(_UIFindNavigatorViewAccessibility *)selfCopy safeValueForKey:@"previousResultButton", v2];
  v6 = accessibilityUIKitLocalizedString();
  [v7 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v6);
  *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  v9 = [(_UIFindNavigatorViewAccessibility *)selfCopy safeValueForKey:@"nextResultButton", v3];
  v8 = accessibilityUIKitLocalizedString();
  [v9 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v8);
  *&v4 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  v11 = [(_UIFindNavigatorViewAccessibility *)selfCopy safeValueForKey:@"doneButton", v4];
  v10 = accessibilityUIKitLocalizedString();
  [v11 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v10);
  MEMORY[0x29EDC9740](v11);
  objc_storeStrong(&v18, 0);
}

@end