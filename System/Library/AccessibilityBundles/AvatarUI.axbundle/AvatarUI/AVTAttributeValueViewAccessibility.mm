@interface AVTAttributeValueViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AVTAttributeValueViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTAttributeValueView" hasInstanceMethod:@"selectionLayer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CALayer" hasInstanceMethod:@"opacity" withFullSignature:{"f", 0}];
}

- (id)accessibilityLabel
{
  v5.receiver = self;
  v5.super_class = AVTAttributeValueViewAccessibility;
  v2 = [(AVTAttributeValueViewAccessibility *)&v5 accessibilityLabel];
  if (![v2 rangeOfString:@"EARRINGS_"])
  {
    v3 = accessibilityLocalizedString(v2);

    v2 = v3;
  }

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = AVTAttributeValueViewAccessibility;
  v3 = [(AVTAttributeValueViewAccessibility *)&v8 accessibilityTraits];
  v4 = [(AVTAttributeValueViewAccessibility *)self safeValueForKey:@"selectionLayer"];
  [v4 safeFloatForKey:@"opacity"];
  if (v5 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *MEMORY[0x29EDC7FC0];
  }

  return v6 | v3;
}

@end