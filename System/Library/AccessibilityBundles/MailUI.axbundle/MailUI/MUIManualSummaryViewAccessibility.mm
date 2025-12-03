@interface MUIManualSummaryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSummaryButtonLabel;
- (void)_axSummaryHeaderTrait;
- (void)updateTextView;
@end

@implementation MUIManualSummaryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MUIManualSummaryView" hasSwiftField:@"button" withSwiftType:"UIButton"];
  [validationsCopy validateClass:@"MUIManualSummaryView" hasSwiftField:@"viewModel" withSwiftType:"Optional<MUIManualSummaryViewModel>"];
  [validationsCopy validateClass:@"MUIManualSummaryView" hasSwiftField:@"showSummaryButtonTitle" withSwiftType:"String"];
  [validationsCopy validateClass:@"MUIManualSummaryView" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MUIManualSummaryView" hasInstanceMethod:@"updateTextView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MUIManualSummaryViewModel" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MUIManualSummaryViewAccessibility;
  [(MUIManualSummaryViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MUIManualSummaryViewAccessibility *)self _axSummaryButtonLabel];
  [(MUIManualSummaryViewAccessibility *)self _axSummaryHeaderTrait];
}

- (void)_axSummaryHeaderTrait
{
  v3 = [(MUIManualSummaryViewAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __58__MUIManualSummaryViewAccessibility__axSummaryHeaderTrait__block_invoke;
  v4[3] = &unk_29F2CAB68;
  v4[4] = self;
  [v3 setAccessibilityTraitsBlock:v4];
  objc_destroyWeak(&location);
}

uint64_t __58__MUIManualSummaryViewAccessibility__axSummaryHeaderTrait__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeSwiftValueForKey:@"viewModel"];
  v2 = [v1 safeIntForKey:@"state"];

  v3 = MEMORY[0x29EDC7F80];
  if (v2)
  {
    v3 = MEMORY[0x29EDC7FD0];
  }

  return *v3;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(MUIManualSummaryViewAccessibility *)self safeSwiftValueForKey:@"viewModel"];
  v3 = [v2 safeIntForKey:@"state"];

  return v3 == 0;
}

- (id)accessibilityLabel
{
  v2 = [(MUIManualSummaryViewAccessibility *)self safeSwiftValueForKey:@"button"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(MUIManualSummaryViewAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(MUIManualSummaryViewAccessibility *)self safeSwiftValueForKey:@"button"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)_axSummaryButtonLabel
{
  v3 = [(MUIManualSummaryViewAccessibility *)self safeSwiftValueForKey:@"button"];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __58__MUIManualSummaryViewAccessibility__axSummaryButtonLabel__block_invoke;
  v4[3] = &unk_29F2CAB90;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [v3 setAccessibilityLabelBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __58__MUIManualSummaryViewAccessibility__axSummaryButtonLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeSwiftValueForKey:@"viewModel"];
  v3 = [v2 safeIntForKey:@"state"];

  if (v3 == 1)
  {
    v6 = @"summary.state.loading";
  }

  else
  {
    if (!v3)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v5 = [WeakRetained safeSwiftValueForKey:@"showSummaryButtonTitle"];

      goto LABEL_7;
    }

    v6 = @"summary.state.complete";
  }

  v5 = accessibilityLocalizedString(v6);
LABEL_7:

  return v5;
}

- (void)updateTextView
{
  v5.receiver = self;
  v5.super_class = MUIManualSummaryViewAccessibility;
  [(MUIManualSummaryViewAccessibility *)&v5 updateTextView];
  v3 = [(MUIManualSummaryViewAccessibility *)self safeSwiftValueForKey:@"viewModel"];
  v4 = [v3 safeIntForKey:@"state"];

  if (v4 == 2)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __51__MUIManualSummaryViewAccessibility_updateTextView__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7ED8];
  v2 = [*(a1 + 32) safeSwiftValueForKey:@"textView"];
  UIAccessibilityPostNotification(v1, v2);
}

@end