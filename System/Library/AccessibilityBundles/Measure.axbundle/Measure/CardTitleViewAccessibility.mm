@interface CardTitleViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CardTitleViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CardTitleViewAccessibility;
  [(CardTitleViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CardTitleViewAccessibility *)self safeValueForKey:@"title"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

@end