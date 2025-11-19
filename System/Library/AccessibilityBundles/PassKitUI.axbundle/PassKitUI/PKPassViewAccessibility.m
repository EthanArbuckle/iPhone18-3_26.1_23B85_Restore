@interface PKPassViewAccessibility
- (BOOL)accessibilityElementsHidden;
@end

@implementation PKPassViewAccessibility

- (BOOL)accessibilityElementsHidden
{
  if (AXDoesRequestingClientDeserveAutomation())
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = PKPassViewAccessibility;
  return [(PKPassViewAccessibility *)&v4 accessibilityElementsHidden];
}

@end