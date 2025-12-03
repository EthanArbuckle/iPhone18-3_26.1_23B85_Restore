@interface PKContinuousButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (void)setShowSpinner:(BOOL)spinner;
@end

@implementation PKContinuousButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKContinuousButton" hasInstanceVariable:@"_activityIndicatorView" withType:"UIActivityIndicatorView"];
  [validationsCopy validateClass:@"PKContinuousButton" hasInstanceMethod:@"setShowSpinner:" withFullSignature:{"v", "B", 0}];
}

- (void)setShowSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  v6.receiver = self;
  v6.super_class = PKContinuousButtonAccessibility;
  [(PKContinuousButtonAccessibility *)&v6 setShowSpinner:?];
  if (spinnerCopy)
  {
    v4 = *MEMORY[0x29EDC7EA8];
    v5 = accessibilityLocalizedString(@"loading");
    UIAccessibilityPostNotification(v4, v5);
  }
}

- (id)accessibilityValue
{
  v3 = [(PKContinuousButtonAccessibility *)self safeUIViewForKey:@"_activityIndicatorView"];
  window = [v3 window];

  if (window)
  {
    accessibilityValue = accessibilityLocalizedString(@"loading");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKContinuousButtonAccessibility;
    accessibilityValue = [(PKContinuousButtonAccessibility *)&v7 accessibilityValue];
  }

  return accessibilityValue;
}

@end