@interface ReviewSummaryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ReviewSummaryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStoreKit.DynamicTypeLabel" isKindOfClass:@"UILabel"];
  [validationsCopy validateClass:@"AppInstallExtension.ReviewSummaryView" hasSwiftField:@"subtitleLabel" withSwiftType:"DynamicTypeLabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = ReviewSummaryViewAccessibility;
  [(ReviewSummaryViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(ReviewSummaryViewAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  objc_initWeak(&location, v3);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __76__ReviewSummaryViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F29E018;
  objc_copyWeak(&v5, &location);
  [v3 setAccessibilityLabelBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __76__ReviewSummaryViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"attributedText"];

  if (v2)
  {
    v3 = [v2 string];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end