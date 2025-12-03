@interface COSInstallSpinnerButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)showProgressAnimation;
- (void)stopSpinnerView;
@end

@implementation COSInstallSpinnerButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"COSInstallSpinnerButton" hasInstanceVariable:@"_progressIndicator" withType:"SKUICircleProgressIndicator"];
  [validationsCopy validateClass:@"COSInstallSpinnerButton" hasInstanceVariable:@"_showingSpinner" withType:"B"];
  [validationsCopy validateClass:@"COSInstallSpinnerButton" hasInstanceMethod:@"showProgressAnimation" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"COSInstallSpinnerButton" hasInstanceMethod:@"stopSpinnerView" withFullSignature:{"v", 0}];
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
    accessibilityValue = AXFormatFloatWithPercentage();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = COSInstallSpinnerButtonAccessibility;
    accessibilityValue = [(COSInstallSpinnerButtonAccessibility *)&v7 accessibilityValue];
  }

  return accessibilityValue;
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
    accessibilityLabel = accessibilityLocalizedString(@"downloading.spinner.button.label");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = COSInstallSpinnerButtonAccessibility;
    accessibilityLabel = [(COSInstallSpinnerButtonAccessibility *)&v5 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end