@interface COSInstallSpinnerButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)showProgressAnimation;
- (void)stopSpinnerView;
@end

@implementation COSInstallSpinnerButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"COSInstallSpinnerButton" hasInstanceVariable:@"_progressIndicator" withType:"SKUICircleProgressIndicator"];
  [v3 validateClass:@"COSInstallSpinnerButton" hasInstanceVariable:@"_showingSpinner" withType:"B"];
  [v3 validateClass:@"COSInstallSpinnerButton" hasInstanceMethod:@"showProgressAnimation" withFullSignature:{"v", 0}];
  [v3 validateClass:@"COSInstallSpinnerButton" hasInstanceMethod:@"stopSpinnerView" withFullSignature:{"v", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = COSInstallSpinnerButtonAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(COSInstallSpinnerButtonAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  if ([(COSInstallSpinnerButtonAccessibility *)self safeBoolForKey:@"_showingSpinner"])
  {
    v8 = 0;
    objc_opt_class();
    v3 = [(COSInstallSpinnerButtonAccessibility *)self safeValueForKey:@"_progressIndicator"];
    v4 = __UIAccessibilityCastAsClass();

    [v4 progress];
    v5 = AXFormatFloatWithPercentage();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = COSInstallSpinnerButtonAccessibility;
    v5 = [(COSInstallSpinnerButtonAccessibility *)&v7 accessibilityValue];
  }

  return v5;
}

- (void)showProgressAnimation
{
  v2.receiver = self;
  v2.super_class = COSInstallSpinnerButtonAccessibility;
  [(COSInstallSpinnerButtonAccessibility *)&v2 showProgressAnimation];
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)stopSpinnerView
{
  v2.receiver = self;
  v2.super_class = COSInstallSpinnerButtonAccessibility;
  [(COSInstallSpinnerButtonAccessibility *)&v2 stopSpinnerView];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)accessibilityLabel
{
  if ([(COSInstallSpinnerButtonAccessibility *)self safeBoolForKey:@"_showingSpinner"])
  {
    v3 = accessibilityLocalizedString(@"downloading.spinner.button.label");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = COSInstallSpinnerButtonAccessibility;
    v3 = [(COSInstallSpinnerButtonAccessibility *)&v5 accessibilityLabel];
  }

  return v3;
}

@end