@interface PUPickerOnboardingHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation PUPickerOnboardingHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUPickerOnboardingHeaderView" hasSwiftFieldOfAnyClass:@"icon"];
  [v3 validateClass:@"PUPickerOnboardingHeaderView" hasSwiftFieldOfAnyClass:@"title"];
  [v3 validateClass:@"PUPickerOnboardingHeaderView" hasSwiftFieldOfAnyClass:@"subtitle"];
  [v3 validateClass:@"PUPickerOnboardingHeaderView" hasSwiftFieldOfAnyClass:@"closeButton"];
  [v3 validateClass:@"PUPickerOnboardingHeaderView" hasSwiftFieldOfAnyClass:@"learnMoreButton"];
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
  v4 = [(PUPickerOnboardingHeaderViewAccessibility *)&v13 _accessibilitySupplementaryFooterViews];
  v5 = [v3 axArrayWithPossiblyNilArrays:{1, v4}];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x29EDB8DE8] array];
  }

  v8 = v7;

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