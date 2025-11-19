@interface MKTransitDepartureContainerHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation MKTransitDepartureContainerHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKTransitDepartureContainerHeaderView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"MKTransitDepartureContainerHeaderView" hasInstanceVariable:@"_containerTitleLabel" withType:"_MKUILabel"];
}

- (id)accessibilityLabel
{
  v2 = [(MKTransitDepartureContainerHeaderViewAccessibility *)self safeUIViewForKey:@"_containerTitleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)automationElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 subviews];

  return v3;
}

@end