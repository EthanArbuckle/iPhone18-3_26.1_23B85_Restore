@interface MedicationDoseLogMedicationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_axUpdateButtonTraits;
- (void)didTapRecord:(id)record;
- (void)didTapSkip:(id)skip;
@end

@implementation MedicationDoseLogMedicationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationDoseLogMedicationView" hasSwiftField:@"skippedButton" withSwiftType:"UIButton"];
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationDoseLogMedicationView" hasSwiftField:@"takenButton" withSwiftType:"UIButton"];
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationDoseLogMedicationView" hasSwiftField:@"viewModel" withSwiftType:"Optional<MedicationsDoseLogViewModel>"];
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationsDoseLogViewModel" hasSwiftField:@"status" withSwiftType:"HKMedicationDoseEventLogStatus"];
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationDoseLogMedicationView" hasInstanceMethod:@"didTapSkip:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"HealthMedicationsUI.MedicationDoseLogMedicationView" hasInstanceMethod:@"didTapRecord:" withFullSignature:{"v", "@", 0}];
}

- (void)didTapSkip:(id)skip
{
  v4.receiver = self;
  v4.super_class = MedicationDoseLogMedicationViewAccessibility;
  [(MedicationDoseLogMedicationViewAccessibility *)&v4 didTapSkip:skip];
  [(MedicationDoseLogMedicationViewAccessibility *)self _axUpdateButtonTraits];
}

- (void)didTapRecord:(id)record
{
  v4.receiver = self;
  v4.super_class = MedicationDoseLogMedicationViewAccessibility;
  [(MedicationDoseLogMedicationViewAccessibility *)&v4 didTapRecord:record];
  [(MedicationDoseLogMedicationViewAccessibility *)self _axUpdateButtonTraits];
}

- (void)_axUpdateButtonTraits
{
  v11 = [(MedicationDoseLogMedicationViewAccessibility *)self safeSwiftValueForKey:@"skippedButton"];
  v3 = [(MedicationDoseLogMedicationViewAccessibility *)self safeSwiftValueForKey:@"takenButton"];
  v4 = [(MedicationDoseLogMedicationViewAccessibility *)self safeSwiftValueForKey:@"viewModel"];
  v5 = [v4 safeSwiftValueForKey:@"status"];
  v6 = _accessibilityConvertToStatus();

  if (v6 == 4)
  {
    v10 = *MEMORY[0x29EDC7F70];
    [v11 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    v7 = *MEMORY[0x29EDC7FC0] | v10;
  }

  else
  {
    if (v6 == 5)
    {
      v7 = *MEMORY[0x29EDC7F70];
      v8 = *MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7FC0];
      v9 = v11;
    }

    else
    {
      v7 = *MEMORY[0x29EDC7F70];
      v9 = v11;
      v8 = *MEMORY[0x29EDC7F70];
    }

    [v9 setAccessibilityTraits:v8];
  }

  [v3 setAccessibilityTraits:v7];
}

@end