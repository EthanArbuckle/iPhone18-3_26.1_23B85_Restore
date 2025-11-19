@interface CSProminentLabeledElementViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityViewIsVisible;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CSProminentLabeledElementViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CSProminentLabeledElementView" isKindOfClass:@"CSProminentTextElementView"];
  [v3 validateClass:@"CSProminentLabeledElementView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CSProminentTextElementView" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CSProminentLabeledElementViewAccessibility *)self safeValueForKey:@"textLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (BOOL)_accessibilityViewIsVisible
{
  v8 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  [v3 alpha];
  v5 = v4;

  if (v5 > 0.0)
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = CSProminentLabeledElementViewAccessibility;
  return [(CSProminentLabeledElementViewAccessibility *)&v7 _accessibilityViewIsVisible];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CSProminentLabeledElementViewAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(CSProminentLabeledElementViewAccessibility *)&v3 accessibilityTraits];
}

@end