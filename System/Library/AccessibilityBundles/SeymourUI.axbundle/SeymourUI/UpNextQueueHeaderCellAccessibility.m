@interface UpNextQueueHeaderCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UpNextQueueHeaderCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = UpNextQueueHeaderCellAccessibility;
  [(UpNextQueueHeaderCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(UpNextQueueHeaderCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

@end