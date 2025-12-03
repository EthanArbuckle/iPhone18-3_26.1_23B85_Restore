@interface OfferPlatterComponentAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation OfferPlatterComponentAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"StoreDynamicUIPlugin.OfferPlatterComponent" hasSwiftField:@"infoLabel" withSwiftType:"DynamicLabel"];
  [validationsCopy validateClass:@"StoreDynamicUIPlugin.OfferPlatterComponent" hasSwiftField:@"titleLabel" withSwiftType:"DynamicLabel"];
  [validationsCopy validateClass:@"StoreDynamicUIPlugin.OfferPlatterComponent" hasSwiftField:@"subtitleLabel" withSwiftType:"DynamicLabel"];
  [validationsCopy validateClass:@"StoreDynamicUIPlugin.OfferPlatterComponent" hasSwiftField:@"buttonView" withSwiftType:"DynamicButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = OfferPlatterComponentAccessibility;
  [(OfferPlatterComponentAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (id)accessibilityLabel
{
  v3 = [(OfferPlatterComponentAccessibility *)self safeSwiftValueForKey:@"infoLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(OfferPlatterComponentAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = [(OfferPlatterComponentAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];

  v9 = [(OfferPlatterComponentAccessibility *)self safeSwiftValueForKey:@"buttonView"];
  accessibilityLabel4 = [v9 accessibilityLabel];

  v11 = __UIAXStringForVariables();

  return v11;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(OfferPlatterComponentAccessibility *)self safeSwiftValueForKey:@"buttonView"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = OfferPlatterComponentAccessibility;
  [(OfferPlatterComponentAccessibility *)&v3 layoutSubviews];
  [(OfferPlatterComponentAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end