@interface AlertDeliveryLocationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AlertDeliveryLocationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AlertDeliveryLocationView" hasInstanceVariable:@"_typeLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"AlertDeliveryLocationView" hasInstanceMethod:@"selected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AlertDeliveryLocationView" hasInstanceMethod:@"type" withFullSignature:{"Q", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(AlertDeliveryLocationViewAccessibility *)self safeUnsignedIntegerForKey:@"type"];
  if (v2 > 2)
  {
    v3 = &stru_2A225E940;
  }

  else
  {
    v3 = off_29F2DFB90[v2];
  }

  return accessibilityLocalizedString(v3);
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(AlertDeliveryLocationViewAccessibility *)self safeBoolForKey:@"selected"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (id)accessibilityIdentifier
{
  v2 = [(AlertDeliveryLocationViewAccessibility *)self safeValueForKey:@"_typeLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end