@interface UIAccessibilityElementKBKeyChatKitAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axKeyName;
- (id)accessibilityCustomRotors;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation UIAccessibilityElementKBKeyChatKitAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIAccessibilityElementKBKey" hasInstanceVariable:@"_key" withType:"UIKBTree"];
  [validationsCopy validateClass:@"UIKBTree"];
  [validationsCopy validateClass:@"UIKBTree" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _axKeyName = [(UIAccessibilityElementKBKeyChatKitAccessibility *)self _axKeyName];
  if ((AXDeviceIsPad() & 1) != 0 || ![_axKeyName isEqualToString:@"Dismiss-Key"])
  {
    v7.receiver = self;
    v7.super_class = UIAccessibilityElementKBKeyChatKitAccessibility;
    accessibilityLabel = [(UIAccessibilityElementKBKeyChatKitAccessibility *)&v7 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = accessibilityLocalizedString(@"handwriting.key.name");
  }

  v5 = accessibilityLabel;

  return v5;
}

- (id)accessibilityHint
{
  _axKeyName = [(UIAccessibilityElementKBKeyChatKitAccessibility *)self _axKeyName];
  if ((AXDeviceIsPad() & 1) != 0 || ([_axKeyName isEqualToString:@"Dismiss-Key"] & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = UIAccessibilityElementKBKeyChatKitAccessibility;
    accessibilityHint = [(UIAccessibilityElementKBKeyChatKitAccessibility *)&v6 accessibilityHint];
  }

  else
  {
    accessibilityHint = 0;
  }

  return accessibilityHint;
}

- (id)accessibilityCustomRotors
{
  v5.receiver = self;
  v5.super_class = UIAccessibilityElementKBKeyChatKitAccessibility;
  accessibilityCustomRotors = [(UIAccessibilityElementKBKeyChatKitAccessibility *)&v5 accessibilityCustomRotors];
  v3 = addFirstResponderRotorsToRotorArray(accessibilityCustomRotors);

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