@interface OfferButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation OfferButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SubscribePageExtension.OfferButton" hasSwiftField:@"label" withSwiftType:"DynamicTypeLabel"];
  [v3 validateClass:@"SubscribePageExtension.OfferButton" hasSwiftField:@"subtitleLabel" withSwiftType:"DynamicTypeLabel"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = OfferButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(OfferButtonAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7FF0];
}

- (id)accessibilityLabel
{
  v3 = [(OfferButtonAccessibility *)self safeSwiftValueForKey:@"label"];
  v6 = [(OfferButtonAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end