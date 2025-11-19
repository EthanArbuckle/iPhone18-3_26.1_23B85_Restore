@interface UIAccessibilityElementKBKeyChatKitAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axKeyName;
- (id)accessibilityCustomRotors;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation UIAccessibilityElementKBKeyChatKitAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIAccessibilityElementKBKey" hasInstanceVariable:@"_key" withType:"UIKBTree"];
  [v3 validateClass:@"UIKBTree"];
  [v3 validateClass:@"UIKBTree" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(UIAccessibilityElementKBKeyChatKitAccessibility *)self _axKeyName];
  if ((AXDeviceIsPad() & 1) != 0 || ![v3 isEqualToString:@"Dismiss-Key"])
  {
    v7.receiver = self;
    v7.super_class = UIAccessibilityElementKBKeyChatKitAccessibility;
    v4 = [(UIAccessibilityElementKBKeyChatKitAccessibility *)&v7 accessibilityLabel];
  }

  else
  {
    v4 = accessibilityLocalizedString(@"handwriting.key.name");
  }

  v5 = v4;

  return v5;
}

- (id)accessibilityHint
{
  v3 = [(UIAccessibilityElementKBKeyChatKitAccessibility *)self _axKeyName];
  if ((AXDeviceIsPad() & 1) != 0 || ([v3 isEqualToString:@"Dismiss-Key"] & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = UIAccessibilityElementKBKeyChatKitAccessibility;
    v4 = [(UIAccessibilityElementKBKeyChatKitAccessibility *)&v6 accessibilityHint];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityCustomRotors
{
  v5.receiver = self;
  v5.super_class = UIAccessibilityElementKBKeyChatKitAccessibility;
  v2 = [(UIAccessibilityElementKBKeyChatKitAccessibility *)&v5 accessibilityCustomRotors];
  v3 = addFirstResponderRotorsToRotorArray(v2);

  return v3;
}

- (id)_axKeyName
{
  objc_opt_class();
  v3 = [(UIAccessibilityElementKBKeyChatKitAccessibility *)self safeValueForKey:@"_key"];
  v4 = [v3 safeValueForKey:@"name"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

@end