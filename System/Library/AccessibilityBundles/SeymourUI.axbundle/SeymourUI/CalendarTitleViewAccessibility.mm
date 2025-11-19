@interface CalendarTitleViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CalendarTitleViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CalendarTitleViewAccessibility;
  [(CalendarTitleViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CalendarTitleViewAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

@end