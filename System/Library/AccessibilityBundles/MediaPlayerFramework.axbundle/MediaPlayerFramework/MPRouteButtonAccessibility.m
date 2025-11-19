@interface MPRouteButtonAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MPRouteButtonAccessibility

- (id)accessibilityValue
{
  v2 = [(MPRouteButtonAccessibility *)self safeValueForKey:@"_routeLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MPRouteButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(MPRouteButtonAccessibility *)&v3 accessibilityTraits];
}

@end