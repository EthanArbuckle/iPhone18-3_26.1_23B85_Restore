@interface MedicationCategoryTipCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MedicationCategoryTipCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationCategoryTipCell" hasSwiftField:@"item" withSwiftType:"Optional<SectionedDataSourceItem>"];
  [validationsCopy validateSwiftStruct:@"HealthMedicationsUI.MedicationsCategoryTipItem" hasSwiftField:@"titleText" withSwiftType:"String"];
  [validationsCopy validateSwiftStruct:@"HealthMedicationsUI.MedicationsCategoryTipItem" hasSwiftField:@"bodyText" withSwiftType:"String"];
  [validationsCopy validateClass:@"HealthMedicationsExperience.MedicationView"];
}

- (id)accessibilityLabel
{
  v2 = [(MedicationCategoryTipCellAccessibility *)self safeSwiftValueForKey:@"item"];
  v3 = [v2 safeSwiftValueForKey:@"titleText"];
  v6 = [v2 safeSwiftValueForKey:@"bodyText"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)accessibilityValue
{
  _axTipMedicationViews = [(MedicationCategoryTipCellAccessibility *)self _axTipMedicationViews];
  v3 = UIAXStringForAllChildren();

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MedicationCategoryTipCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(MedicationCategoryTipCellAccessibility *)&v3 accessibilityTraits];
}

uint64_t __59__MedicationCategoryTipCellAccessibility__axTipCellButtons__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 accessibilityElementsHidden] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __63__MedicationCategoryTipCellAccessibility__axTipMedicationViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Healthmedicati_8.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end