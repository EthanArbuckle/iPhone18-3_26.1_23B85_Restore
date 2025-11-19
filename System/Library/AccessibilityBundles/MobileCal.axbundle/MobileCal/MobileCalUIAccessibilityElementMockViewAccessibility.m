@interface MobileCalUIAccessibilityElementMockViewAccessibility
- (BOOL)accessibilityActivate;
@end

@implementation MobileCalUIAccessibilityElementMockViewAccessibility

- (BOOL)accessibilityActivate
{
  v3 = [(MobileCalUIAccessibilityElementMockViewAccessibility *)self safeValueForKey:@"_view"];
  v4 = [v3 safeValueForKey:@"window"];

  if (!v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MobileCalUIAccessibilityElementMockViewAccessibility;
  return [(MobileCalUIAccessibilityElementMockViewAccessibility *)&v6 accessibilityActivate];
}

@end