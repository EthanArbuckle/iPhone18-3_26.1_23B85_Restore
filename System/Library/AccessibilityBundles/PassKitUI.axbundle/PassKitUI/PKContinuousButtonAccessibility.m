@interface PKContinuousButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (void)setShowSpinner:(BOOL)a3;
@end

@implementation PKContinuousButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKContinuousButton" hasInstanceVariable:@"_activityIndicatorView" withType:"UIActivityIndicatorView"];
  [v3 validateClass:@"PKContinuousButton" hasInstanceMethod:@"setShowSpinner:" withFullSignature:{"v", "B", 0}];
}

- (void)setShowSpinner:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PKContinuousButtonAccessibility;
  [(PKContinuousButtonAccessibility *)&v6 setShowSpinner:?];
  if (v3)
  {
    v4 = *MEMORY[0x29EDC7EA8];
    v5 = accessibilityLocalizedString(@"loading");
    UIAccessibilityPostNotification(v4, v5);
  }
}

- (id)accessibilityValue
{
  v3 = [(PKContinuousButtonAccessibility *)self safeUIViewForKey:@"_activityIndicatorView"];
  v4 = [v3 window];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"loading");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKContinuousButtonAccessibility;
    v5 = [(PKContinuousButtonAccessibility *)&v7 accessibilityValue];
  }

  return v5;
}

@end