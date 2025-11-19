@interface SearchUICardDetailsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SearchUICardDetailsViewAccessibility)initWithTitle:(id)a3 details:(id)a4 controller:(id)a5;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SearchUICardDetailsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUICardDetailsView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUICardDetailsView" hasInstanceMethod:@"detailsTextView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUICardDetailsView" hasInstanceMethod:@"initWithTitle: details: controller:" withFullSignature:{"@", "@", "@", "@", 0}];
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
  v5 = [v3 accessibilityLabel];
  v8 = [v4 safeValueForKey:@"attributedText"];
  v6 = __AXStringForVariables();

  return v6;
}

- (SearchUICardDetailsViewAccessibility)initWithTitle:(id)a3 details:(id)a4 controller:(id)a5
{
  v7.receiver = self;
  v7.super_class = SearchUICardDetailsViewAccessibility;
  v5 = [(SearchUICardDetailsViewAccessibility *)&v7 initWithTitle:a3 details:a4 controller:a5];
  [(SearchUICardDetailsViewAccessibility *)v5 _accessibilityLoadAccessibilityInformation];

  return v5;
}

@end