@interface WFTextFieldCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)awakeFromNib;
@end

@implementation WFTextFieldCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WFTextFieldCell" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFTextFieldCell" hasInstanceMethod:@"textField" withFullSignature:{"@", 0}];
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = WFTextFieldCellAccessibility;
  [(WFTextFieldCellAccessibility *)&v3 awakeFromNib];
  [(WFTextFieldCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = WFTextFieldCellAccessibility;
  [(WFTextFieldCellAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(WFTextFieldCellAccessibility *)self safeValueForKey:@"label"];
  [v3 setIsAccessibilityElement:0];

  objc_initWeak(&location, self);
  v4 = [(WFTextFieldCellAccessibility *)self safeValueForKey:@"textField"];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __74__WFTextFieldCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F322520;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityLabelBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __74__WFTextFieldCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained label];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end