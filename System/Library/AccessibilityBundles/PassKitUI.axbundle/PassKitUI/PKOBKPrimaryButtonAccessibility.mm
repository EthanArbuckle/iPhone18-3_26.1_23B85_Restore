@interface PKOBKPrimaryButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PKOBKPrimaryButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKOBKPrimaryButton" hasInstanceVariable:@"_cachedTitle" withType:"NSString"];
  [validationsCopy validateClass:@"PKOBKPrimaryButton" hasProperty:@"showSpinner" withType:"B"];
}

- (id)accessibilityLabel
{
  if ([(PKOBKPrimaryButtonAccessibility *)self _axIsShowingSpinner])
  {
    accessibilityLabel = [(PKOBKPrimaryButtonAccessibility *)self safeStringForKey:@"_cachedTitle"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PKOBKPrimaryButtonAccessibility;
    accessibilityLabel = [(PKOBKPrimaryButtonAccessibility *)&v5 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  if ([(PKOBKPrimaryButtonAccessibility *)self _axIsShowingSpinner])
  {
    accessibilityValue = accessibilityLocalizedString(@"loading");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PKOBKPrimaryButtonAccessibility;
    accessibilityValue = [(PKOBKPrimaryButtonAccessibility *)&v5 accessibilityValue];
  }

  return accessibilityValue;
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