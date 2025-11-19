@interface PKOBKPrimaryButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PKOBKPrimaryButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKOBKPrimaryButton" hasInstanceVariable:@"_cachedTitle" withType:"NSString"];
  [v3 validateClass:@"PKOBKPrimaryButton" hasProperty:@"showSpinner" withType:"B"];
}

- (id)accessibilityLabel
{
  if ([(PKOBKPrimaryButtonAccessibility *)self _axIsShowingSpinner])
  {
    v3 = [(PKOBKPrimaryButtonAccessibility *)self safeStringForKey:@"_cachedTitle"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PKOBKPrimaryButtonAccessibility;
    v3 = [(PKOBKPrimaryButtonAccessibility *)&v5 accessibilityLabel];
  }

  return v3;
}

- (id)accessibilityValue
{
  if ([(PKOBKPrimaryButtonAccessibility *)self _axIsShowingSpinner])
  {
    v3 = accessibilityLocalizedString(@"loading");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PKOBKPrimaryButtonAccessibility;
    v3 = [(PKOBKPrimaryButtonAccessibility *)&v5 accessibilityValue];
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  if ([(PKOBKPrimaryButtonAccessibility *)self _axIsShowingSpinner])
  {
    return *MEMORY[0x29EDC7F70];
  }

  v4.receiver = self;
  v4.super_class = PKOBKPrimaryButtonAccessibility;
  return [(PKOBKPrimaryButtonAccessibility *)&v4 accessibilityTraits];
}

@end