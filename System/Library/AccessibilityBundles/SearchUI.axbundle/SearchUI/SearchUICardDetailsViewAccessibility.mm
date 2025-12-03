@interface SearchUICardDetailsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SearchUICardDetailsViewAccessibility)initWithTitle:(id)title details:(id)details controller:(id)controller;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SearchUICardDetailsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUICardDetailsView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUICardDetailsView" hasInstanceMethod:@"detailsTextView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUICardDetailsView" hasInstanceMethod:@"initWithTitle: details: controller:" withFullSignature:{"@", "@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SearchUICardDetailsViewAccessibility;
  [(SearchUICardDetailsViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SearchUICardDetailsViewAccessibility *)self safeValueForKey:@"titleLabel"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(SearchUICardDetailsViewAccessibility *)self safeValueForKey:@"detailsTextView"];
  [v4 setIsAccessibilityElement:0];
}

- (id)accessibilityLabel
{
  v3 = [(SearchUICardDetailsViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [(SearchUICardDetailsViewAccessibility *)self safeValueForKey:@"detailsTextView"];
  accessibilityLabel = [v3 accessibilityLabel];
  v8 = [v4 safeValueForKey:@"attributedText"];
  v6 = __AXStringForVariables();

  return v6;
}

- (SearchUICardDetailsViewAccessibility)initWithTitle:(id)title details:(id)details controller:(id)controller
{
  v7.receiver = self;
  v7.super_class = SearchUICardDetailsViewAccessibility;
  v5 = [(SearchUICardDetailsViewAccessibility *)&v7 initWithTitle:title details:details controller:controller];
  [(SearchUICardDetailsViewAccessibility *)v5 _accessibilityLoadAccessibilityInformation];

  return v5;
}

@end