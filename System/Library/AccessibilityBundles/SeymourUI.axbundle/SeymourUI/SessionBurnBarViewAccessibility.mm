@interface SessionBurnBarViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)accessibilityUpdateBurnBar:(int64_t)bar;
@end

@implementation SessionBurnBarViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SessionBurnBarViewAccessibility;
  [(SessionBurnBarViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = _accessibilityStringForBurnBarPosition(0, 1);
  [(SessionBurnBarViewAccessibility *)self setAccessibilityLabel:v3];
}

- (void)accessibilityUpdateBurnBar:(int64_t)bar
{
  v6.receiver = self;
  v6.super_class = SessionBurnBarViewAccessibility;
  [(SessionBurnBarViewAccessibility *)&v6 accessibilityUpdateBurnBar:?];
  v5 = _accessibilityStringForBurnBarPosition(bar, 1);
  [(SessionBurnBarViewAccessibility *)self setAccessibilityLabel:v5];
}

@end