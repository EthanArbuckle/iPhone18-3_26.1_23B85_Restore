@interface LargeEventViewAccessibility
- (void)layoutSubviews;
@end

@implementation LargeEventViewAccessibility

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = LargeEventViewAccessibility;
  [(LargeEventViewAccessibility *)&v2 layoutSubviews];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end