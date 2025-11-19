@interface ADBannerViewAccessibility
- (BOOL)isAccessibilityElement;
- (unint64_t)accessibilityTraits;
@end

@implementation ADBannerViewAccessibility

- (BOOL)isAccessibilityElement
{
  if (!_AXSAutomationEnabled())
  {
    v5 = [(ADBannerViewAccessibility *)self accessibilityUserDefinedLabel];

    if (v5)
    {
      return 1;
    }
  }

  v3 = MEMORY[0x29ED437B0](@"ADBannerView");

  return [(ADBannerViewAccessibility *)self isMemberOfClass:v3];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ADBannerViewAccessibility;
  return *MEMORY[0x29EDC7F88] | [(ADBannerViewAccessibility *)&v3 accessibilityTraits];
}

@end