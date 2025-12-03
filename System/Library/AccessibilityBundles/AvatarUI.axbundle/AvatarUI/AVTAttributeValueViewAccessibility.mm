@interface AVTAttributeValueViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AVTAttributeValueViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTAttributeValueView" hasInstanceMethod:@"selectionLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CALayer" hasInstanceMethod:@"opacity" withFullSignature:{"f", 0}];
}

- (id)accessibilityLabel
{
  v5.receiver = self;
  v5.super_class = AVTAttributeValueViewAccessibility;
  accessibilityLabel = [(AVTAttributeValueViewAccessibility *)&v5 accessibilityLabel];
  if (![accessibilityLabel rangeOfString:@"EARRINGS_"])
  {
    v3 = accessibilityLocalizedString(accessibilityLabel);

    accessibilityLabel = v3;
  }

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = AVTAttributeValueViewAccessibility;
  accessibilityTraits = [(AVTAttributeValueViewAccessibility *)&v8 accessibilityTraits];
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

  return v6 | accessibilityTraits;
}

@end