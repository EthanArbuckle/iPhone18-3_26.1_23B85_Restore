@interface _UIKeyboardShortcutViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UIKeyboardShortcutViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIKeyboardShortcutView";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"inputLabel" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = _UIKeyboardShortcutViewAccessibility;
  [(_UIKeyboardShortcutViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(_UIKeyboardShortcutViewAccessibility *)selfCopy safeValueForKey:@"modifiersLabel"];
  [v3 setIsAccessibilityElement:0];
  v2 = [(_UIKeyboardShortcutViewAccessibility *)selfCopy safeValueForKey:@"inputLabel"];
  [v2 setIsAccessibilityElement:0];
  objc_storeStrong(&v2, 0);
  objc_storeStrong(&v3, 0);
}

@end