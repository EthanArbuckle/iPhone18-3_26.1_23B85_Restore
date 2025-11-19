@interface VideosUI_ChannelLogoViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VideosUI_ChannelLogoViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = VideosUI_ChannelLogoViewAccessibility;
  [(VideosUI_ChannelLogoViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

@end