@interface MKTransitDepartureContainerHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation MKTransitDepartureContainerHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKTransitDepartureContainerHeaderView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"MKTransitDepartureContainerHeaderView" hasInstanceVariable:@"_containerTitleLabel" withType:"_MKUILabel"];
}

- (id)accessibilityLabel
{
  v2 = [(MKTransitDepartureContainerHeaderViewAccessibility *)self safeUIViewForKey:@"_containerTitleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)automationElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  subviews = [v2 subviews];

  return subviews;
}

@end