@interface TVMLKit_TVImageViewAccessibility
- (BOOL)isAccessibilityElement;
- (unint64_t)accessibilityTraits;
@end

@implementation TVMLKit_TVImageViewAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(TVMLKit_TVImageViewAccessibility *)self accessibilityLabel];
  v3 = [accessibilityLabel length] != 0;

  return v3;
}

- (unint64_t)accessibilityTraits
{
  accessibilityIdentifier = [(TVMLKit_TVImageViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"AXTVMLKitLogoImageViewID"];

  if (v4)
  {
    return *MEMORY[0x29EDC7F80];
  }

  v6.receiver = self;
  v6.super_class = TVMLKit_TVImageViewAccessibility;
  return *MEMORY[0x29EDC7FA8] ^ [(TVMLKit_TVImageViewAccessibility *)&v6 accessibilityTraits];
}

@end