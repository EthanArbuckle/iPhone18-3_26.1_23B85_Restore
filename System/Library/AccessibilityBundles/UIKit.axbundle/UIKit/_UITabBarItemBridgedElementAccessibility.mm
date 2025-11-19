@interface _UITabBarItemBridgedElementAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityAttributedHint;
- (id)accessibilityAttributedLabel;
- (id)accessibilityAttributedValue;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation _UITabBarItemBridgedElementAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UITabBarItemBridgedElement";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UITabBarItemBridgedElement" hasInstanceMethod:@"tabBarItem" withFullSignature:{"@", 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  v4 = [v3 accessibilityLabel];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityAttributedLabel
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  v4 = [v3 accessibilityAttributedLabel];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  v4 = [v3 accessibilityValue];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityAttributedValue
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  v4 = [v3 accessibilityAttributedValue];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityHint
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  v4 = [v3 accessibilityHint];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityAttributedHint
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  v4 = [v3 accessibilityAttributedHint];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  v4 = [v3 accessibilityTraits];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityIdentifier
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  v4 = [v3 accessibilityIdentifier];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityUserInputLabels
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  v4 = [v3 accessibilityUserInputLabels];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityCustomActions
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  v4 = [v3 accessibilityCustomActions];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

@end