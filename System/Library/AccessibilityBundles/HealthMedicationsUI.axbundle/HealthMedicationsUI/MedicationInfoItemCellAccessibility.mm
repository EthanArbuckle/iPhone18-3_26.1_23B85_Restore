@interface MedicationInfoItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MedicationInfoItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationInfoItemCell" hasSwiftField:@"nameLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationInfoItemCell" hasSwiftField:@"strengthLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationInfoItemCell" hasSwiftField:@"ingredientsLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationInfoItemCell" hasSwiftField:@"medmojiView" withSwiftType:"MedicationView"];
}

- (id)accessibilityLabel
{
  v3 = [(MedicationInfoItemCellAccessibility *)self safeSwiftValueForKey:@"nameLabel"];
  v4 = [(MedicationInfoItemCellAccessibility *)self safeSwiftValueForKey:@"strengthLabel"];
  v7 = [(MedicationInfoItemCellAccessibility *)self safeSwiftValueForKey:@"ingredientsLabel"];
  v5 = __AXStringForVariables();

  return v5;
}

- (id)accessibilityValue
{
  v2 = [(MedicationInfoItemCellAccessibility *)self safeSwiftValueForKey:@"medmojiView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end