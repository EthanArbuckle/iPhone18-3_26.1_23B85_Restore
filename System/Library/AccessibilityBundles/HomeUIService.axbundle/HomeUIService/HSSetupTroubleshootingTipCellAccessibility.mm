@interface HSSetupTroubleshootingTipCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (HSSetupTroubleshootingTipCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HSSetupTroubleshootingTipCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HSSetupTroubleshootingTipCell" hasInstanceMethod:@"bodyTextView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HSSetupTroubleshootingTipCell" hasInstanceMethod:@"initWithStyle:reuseIdentifier:" withFullSignature:{"@", "q", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = HSSetupTroubleshootingTipCellAccessibility;
  [(HSSetupTroubleshootingTipCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(HSSetupTroubleshootingTipCellAccessibility *)self safeValueForKey:@"bodyTextView"];
  [v3 _accessibilitySetTextViewShouldBreakUpParagraphs:1];
}

- (HSSetupTroubleshootingTipCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = HSSetupTroubleshootingTipCellAccessibility;
  v4 = [(HSSetupTroubleshootingTipCellAccessibility *)&v6 initWithStyle:style reuseIdentifier:identifier];
  [(HSSetupTroubleshootingTipCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end