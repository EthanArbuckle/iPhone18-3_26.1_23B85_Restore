@interface _UITabBarItemBridgedElementAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
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

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UITabBarItemBridgedElement";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UITabBarItemBridgedElement" hasInstanceMethod:@"tabBarItem" withFullSignature:{"@", 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  accessibilityLabel = [v3 accessibilityLabel];
  MEMORY[0x29EDC9740](v3);

  return accessibilityLabel;
}

- (id)accessibilityAttributedLabel
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  accessibilityAttributedLabel = [v3 accessibilityAttributedLabel];
  MEMORY[0x29EDC9740](v3);

  return accessibilityAttributedLabel;
}

- (id)accessibilityValue
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  accessibilityValue = [v3 accessibilityValue];
  MEMORY[0x29EDC9740](v3);

  return accessibilityValue;
}

- (id)accessibilityAttributedValue
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  accessibilityAttributedValue = [v3 accessibilityAttributedValue];
  MEMORY[0x29EDC9740](v3);

  return accessibilityAttributedValue;
}

- (id)accessibilityHint
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  accessibilityHint = [v3 accessibilityHint];
  MEMORY[0x29EDC9740](v3);

  return accessibilityHint;
}

- (id)accessibilityAttributedHint
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  accessibilityAttributedHint = [v3 accessibilityAttributedHint];
  MEMORY[0x29EDC9740](v3);

  return accessibilityAttributedHint;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  accessibilityTraits = [v3 accessibilityTraits];
  MEMORY[0x29EDC9740](v3);
  return accessibilityTraits;
}

- (id)accessibilityIdentifier
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  accessibilityIdentifier = [v3 accessibilityIdentifier];
  MEMORY[0x29EDC9740](v3);

  return accessibilityIdentifier;
}

- (id)accessibilityUserInputLabels
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  accessibilityUserInputLabels = [v3 accessibilityUserInputLabels];
  MEMORY[0x29EDC9740](v3);

  return accessibilityUserInputLabels;
}

- (id)accessibilityCustomActions
{
  v3 = [(_UITabBarItemBridgedElementAccessibility *)self safeValueForKey:@"tabBarItem"];
  accessibilityCustomActions = [v3 accessibilityCustomActions];
  MEMORY[0x29EDC9740](v3);

  return accessibilityCustomActions;
}

@end