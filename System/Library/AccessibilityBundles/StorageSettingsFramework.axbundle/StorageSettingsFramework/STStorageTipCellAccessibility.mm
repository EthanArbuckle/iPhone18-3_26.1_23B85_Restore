@interface STStorageTipCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STStorageTipCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STStorageTipCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageTipCell" hasInstanceVariable:@"_progressLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageTipCell" hasInstanceVariable:@"_enableButton" withType:"UIButton"];
  [v3 validateClass:@"STStorageTipCell" hasInstanceVariable:@"_spinner" withType:"UIActivityIndicatorView"];
  [v3 validateClass:@"STStorageTipCell" hasInstanceVariable:@"_checkIconView" withType:"UIImageView"];
  [v3 validateClass:@"STStorageTipCell" hasInstanceVariable:@"_percent" withType:"f"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = STStorageTipCellAccessibility;
  [(STStorageTipCellAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = _AXSAutomationEnabled();
  objc_opt_class();
  v4 = [(STStorageTipCellAccessibility *)self safeValueForKey:@"_checkIconView"];
  v5 = __UIAccessibilityCastAsClass();

  [v5 setIsAccessibilityElement:v3 != 0];
}

- (id)accessibilityValue
{
  v3 = [(STStorageTipCellAccessibility *)self safeValueForKey:@"_enableButton"];
  v4 = [v3 _accessibilityViewIsVisible];

  if (v4)
  {
    v5 = @"tip.cell.not.enabled";
LABEL_5:
    v8 = accessibilityPreferencesFrameworkBundleLocalizedString(v5);
    goto LABEL_7;
  }

  v6 = [(STStorageTipCellAccessibility *)self safeValueForKey:@"_checkIconView"];
  v7 = [v6 _accessibilityViewIsVisible];

  if (v7)
  {
    v5 = @"tip.cell.enabled";
    goto LABEL_5;
  }

  v10.receiver = self;
  v10.super_class = STStorageTipCellAccessibility;
  v8 = [(STStorageTipCellAccessibility *)&v10 accessibilityValue];
LABEL_7:

  return v8;
}

- (id)accessibilityHint
{
  v3 = [(STStorageTipCellAccessibility *)self safeValueForKey:@"_enableButton"];
  v4 = [v3 _accessibilityViewIsVisible];

  if (v4)
  {
    v5 = @"tip.cell.not.enabled.hint";
LABEL_5:
    v8 = accessibilityPreferencesFrameworkBundleLocalizedString(v5);
    goto LABEL_7;
  }

  v6 = [(STStorageTipCellAccessibility *)self safeValueForKey:@"_checkIconView"];
  v7 = [v6 _accessibilityViewIsVisible];

  if (v7)
  {
    v5 = @"tip.cell.enabled.hint";
    goto LABEL_5;
  }

  v10.receiver = self;
  v10.super_class = STStorageTipCellAccessibility;
  v8 = [(STStorageTipCellAccessibility *)&v10 accessibilityValue];
LABEL_7:

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = STStorageTipCellAccessibility;
  v3 = [(STStorageTipCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(STStorageTipCellAccessibility *)self safeValueForKey:@"_enableButton"];
  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = *MEMORY[0x29EDC7F70];
  }

  else
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (id)automationElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(STStorageTipCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  v5 = [(STStorageTipCellAccessibility *)self safeValueForKey:@"_progressLabel"];
  v6 = [(STStorageTipCellAccessibility *)self safeValueForKey:@"_enableButton"];
  v7 = [(STStorageTipCellAccessibility *)self safeValueForKey:@"_spinner"];
  v8 = [(STStorageTipCellAccessibility *)self safeValueForKey:@"_checkIconView"];
  v9 = [v3 axArrayByIgnoringNilElementsWithCount:{5, v4, v5, v6, v7, v8}];

  v10 = [v9 axFilterObjectsUsingBlock:&__block_literal_global_0];

  return v10;
}

uint64_t __51__STStorageTipCellAccessibility_automationElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 isHidden];

  return v4 ^ 1u;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(STStorageTipCellAccessibility *)self safeValueForKey:@"_enableButton"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end