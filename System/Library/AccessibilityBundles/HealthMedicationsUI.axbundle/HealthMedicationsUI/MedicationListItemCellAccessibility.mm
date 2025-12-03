@interface MedicationListItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MedicationListItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationListItemCell" hasSwiftField:@"primaryLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationListItemCell" hasSwiftField:@"itemsStackView" withSwiftType:"UIStackView"];
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationListItemCell" hasSwiftField:@"pillImageView" withSwiftType:"MedicationView"];
}

- (id)accessibilityLabel
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  objc_opt_class();
  v4 = [(MedicationListItemCellAccessibility *)self safeUIViewForKey:@"itemsStackView"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [(MedicationListItemCellAccessibility *)self safeValueForKey:@"primaryLabel"];
  [v3 axSafelyAddObject:v6];

  v7 = UIAXStringForAllChildren();
  [v3 axSafelyAddObject:v7];

  v8 = [(MedicationListItemCellAccessibility *)self safeValueForKey:@"pillImageView"];
  [v3 axSafelyAddObject:v8];

  v9 = MEMORY[0x29C2D8BC0](v3);

  return v9;
}

@end