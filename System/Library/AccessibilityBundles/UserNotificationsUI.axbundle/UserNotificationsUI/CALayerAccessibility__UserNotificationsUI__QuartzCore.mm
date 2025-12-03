@interface CALayerAccessibility__UserNotificationsUI__QuartzCore
- (BOOL)hitTestsAsOpaque;
@end

@implementation CALayerAccessibility__UserNotificationsUI__QuartzCore

- (BOOL)hitTestsAsOpaque
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    accessibilityIdentifier = [(CALayerAccessibility__UserNotificationsUI__QuartzCore *)self accessibilityIdentifier];
    v4 = [accessibilityIdentifier isEqualToString:@"NCBlockTouchesViewCALayer"];

    if (v4)
    {
      return 0;
    }
  }

  v6.receiver = self;
  v6.super_class = CALayerAccessibility__UserNotificationsUI__QuartzCore;
  return [(CALayerAccessibility__UserNotificationsUI__QuartzCore *)&v6 hitTestsAsOpaque];
}

@end