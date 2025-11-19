@interface MedicationDoseLogMedicationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_axUpdateButtonTraits;
- (void)didTapRecord:(id)a3;
- (void)didTapSkip:(id)a3;
@end

@implementation MedicationDoseLogMedicationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HealthMedicationsUI.MedicationDoseLogMedicationView" hasSwiftField:@"skippedButton" withSwiftType:"UIButton"];
  [v3 validateClass:@"HealthMedicationsUI.MedicationDoseLogMedicationView" hasSwiftField:@"takenButton" withSwiftType:"UIButton"];
  [v3 validateClass:@"HealthMedicationsUI.MedicationDoseLogMedicationView" hasSwiftField:@"viewModel" withSwiftType:"Optional<MedicationsDoseLogViewModel>"];
  [v3 validateClass:@"HealthMedicationsUI.MedicationsDoseLogViewModel" hasSwiftField:@"status" withSwiftType:"HKMedicationDoseEventLogStatus"];
  [v3 validateClass:@"HealthMedicationsUI.MedicationDoseLogMedicationView" hasInstanceMethod:@"didTapSkip:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"HealthMedicationsUI.MedicationDoseLogMedicationView" hasInstanceMethod:@"didTapRecord:" withFullSignature:{"v", "@", 0}];
}

- (void)didTapSkip:(id)a3
{
  v4.receiver = self;
  v4.super_class = MedicationDoseLogMedicationViewAccessibility;
  [(MedicationDoseLogMedicationViewAccessibility *)&v4 didTapSkip:a3];
  [(MedicationDoseLogMedicationViewAccessibility *)self _axUpdateButtonTraits];
}

- (void)didTapRecord:(id)a3
{
  v4.receiver = self;
  v4.super_class = MedicationDoseLogMedicationViewAccessibility;
  [(MedicationDoseLogMedicationViewAccessibility *)&v4 didTapRecord:a3];
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