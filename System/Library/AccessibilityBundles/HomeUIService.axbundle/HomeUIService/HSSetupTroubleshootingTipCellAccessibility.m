@interface HSSetupTroubleshootingTipCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (HSSetupTroubleshootingTipCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HSSetupTroubleshootingTipCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HSSetupTroubleshootingTipCell" hasInstanceMethod:@"bodyTextView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HSSetupTroubleshootingTipCell" hasInstanceMethod:@"initWithStyle:reuseIdentifier:" withFullSignature:{"@", "q", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = HSSetupTroubleshootingTipCellAccessibility;
  [(HSSetupTroubleshootingTipCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(HSSetupTroubleshootingTipCellAccessibility *)self safeValueForKey:@"bodyTextView"];
  [v3 _accessibilitySetTextViewShouldBreakUpParagraphs:1];
}

- (HSSetupTroubleshootingTipCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = HSSetupTroubleshootingTipCellAccessibility;
  v4 = [(HSSetupTroubleshootingTipCellAccessibility *)&v6 initWithStyle:a3 reuseIdentifier:a4];
  [(HSSetupTroubleshootingTipCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end