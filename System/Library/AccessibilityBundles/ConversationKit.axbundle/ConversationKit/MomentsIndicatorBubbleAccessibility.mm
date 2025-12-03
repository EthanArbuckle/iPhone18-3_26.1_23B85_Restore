@interface MomentsIndicatorBubbleAccessibility
- (void)start;
@end

@implementation MomentsIndicatorBubbleAccessibility

- (void)start
{
  v6.receiver = self;
  v6.super_class = MomentsIndicatorBubbleAccessibility;
  [(MomentsIndicatorBubbleAccessibility *)&v6 start];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = [(MomentsIndicatorBubbleAccessibility *)self safeSwiftValueForKey:@"indicator"];
  accessibilityLabel = [v4 accessibilityLabel];
  UIAccessibilityPostNotification(v3, accessibilityLabel);
}

@end