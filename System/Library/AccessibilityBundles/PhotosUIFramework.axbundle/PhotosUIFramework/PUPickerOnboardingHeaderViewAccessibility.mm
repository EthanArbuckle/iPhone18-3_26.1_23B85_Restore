@interface PUPickerOnboardingHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation PUPickerOnboardingHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUPickerOnboardingHeaderView" hasSwiftFieldOfAnyClass:@"icon"];
  [validationsCopy validateClass:@"PUPickerOnboardingHeaderView" hasSwiftFieldOfAnyClass:@"title"];
  [validationsCopy validateClass:@"PUPickerOnboardingHeaderView" hasSwiftFieldOfAnyClass:@"subtitle"];
  [validationsCopy validateClass:@"PUPickerOnboardingHeaderView" hasSwiftFieldOfAnyClass:@"closeButton"];
  [validationsCopy validateClass:@"PUPickerOnboardingHeaderView" hasSwiftFieldOfAnyClass:@"learnMoreButton"];
}

- (id)accessibilityLabel
{
  v3 = [(PUPickerOnboardingHeaderViewAccessibility *)self safeSwiftValueForKey:@"title"];
  v6 = [(PUPickerOnboardingHeaderViewAccessibility *)self safeSwiftValueForKey:@"subtitle"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = MEMORY[0x29EDB8DE8];
  v13.receiver = self;
  v13.super_class = PUPickerOnboardingHeaderViewAccessibility;
  _accessibilitySupplementaryFooterViews = [(PUPickerOnboardingHeaderViewAccessibility *)&v13 _accessibilitySupplementaryFooterViews];
  v5 = [v3 axArrayWithPossiblyNilArrays:{1, _accessibilitySupplementaryFooterViews}];
  v6 = v5;
  if (v5)
  {
    array = v5;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v8 = array;

  v9 = [(PUPickerOnboardingHeaderViewAccessibility *)self safeSwiftValueForKey:@"icon"];
  if ([v9 _accessibilityViewIsVisible])
  {
    [v8 axSafelyAddObject:v9];
  }

  v10 = [(PUPickerOnboardingHeaderViewAccessibility *)self safeSwiftValueForKey:@"closeButton"];
  if ([v10 _accessibilityViewIsVisible])
  {
    [v8 axSafelyAddObject:v10];
  }

  v11 = [(PUPickerOnboardingHeaderViewAccessibility *)self safeSwiftValueForKey:@"learnMoreButton"];
  if ([v11 _accessibilityViewIsVisible])
  {
    [v8 axSafelyAddObject:v11];
  }

  return v8;
}

@end