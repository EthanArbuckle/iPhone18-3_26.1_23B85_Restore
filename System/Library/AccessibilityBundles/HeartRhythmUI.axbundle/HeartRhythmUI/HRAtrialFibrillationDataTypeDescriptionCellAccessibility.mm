@interface HRAtrialFibrillationDataTypeDescriptionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupDescriptionTextView;
@end

@implementation HRAtrialFibrillationDataTypeDescriptionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HRAtrialFibrillationDataTypeDescriptionCell" hasInstanceVariable:@"_descriptionTextView" withType:"UITextView"];
  [validationsCopy validateClass:@"HRAtrialFibrillationDataTypeDescriptionCell" hasInstanceVariable:@"_settingsDescriptionTextView" withType:"UITextView"];
  [validationsCopy validateClass:@"HRAtrialFibrillationDataTypeDescriptionCell" hasInstanceMethod:@"_setupDescriptionTextView" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HRAtrialFibrillationDataTypeDescriptionCellAccessibility;
  [(HRAtrialFibrillationDataTypeDescriptionCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HRAtrialFibrillationDataTypeDescriptionCellAccessibility *)self safeValueForKey:@"_descriptionTextView"];
  [v3 _accessibilitySetTextViewShouldBreakUpParagraphs:1];

  v4 = [(HRAtrialFibrillationDataTypeDescriptionCellAccessibility *)self safeValueForKey:@"_settingsDescriptionTextView"];
  [v4 _accessibilitySetTextViewShouldBreakUpParagraphs:1];
}

- (void)_setupDescriptionTextView
{
  v3.receiver = self;
  v3.super_class = HRAtrialFibrillationDataTypeDescriptionCellAccessibility;
  [(HRAtrialFibrillationDataTypeDescriptionCellAccessibility *)&v3 _setupDescriptionTextView];
  [(HRAtrialFibrillationDataTypeDescriptionCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end