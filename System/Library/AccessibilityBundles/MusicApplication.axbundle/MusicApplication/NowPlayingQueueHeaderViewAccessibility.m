@interface NowPlayingQueueHeaderViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NowPlayingQueueHeaderViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v3 = [(NowPlayingQueueHeaderViewAccessibility *)self safeSwiftValueForKey:@"clearButton"];
    [v3 setIsAccessibilityElement:0];
  }

  v4.receiver = self;
  v4.super_class = NowPlayingQueueHeaderViewAccessibility;
  [(NowPlayingQueueHeaderViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
}

@end