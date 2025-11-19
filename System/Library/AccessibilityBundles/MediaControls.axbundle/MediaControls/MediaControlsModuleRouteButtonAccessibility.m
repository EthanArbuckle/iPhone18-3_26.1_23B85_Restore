@interface MediaControlsModuleRouteButtonAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MediaControlsModuleRouteButtonAccessibility

- (id)accessibilityValue
{
  v2 = [(MediaControlsModuleRouteButtonAccessibility *)self safeSwiftValueForKey:@"label"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MediaControlsModuleRouteButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(MediaControlsModuleRouteButtonAccessibility *)&v3 accessibilityTraits];
}

@end