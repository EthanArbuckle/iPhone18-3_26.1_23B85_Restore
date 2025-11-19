@interface MPVolumeViewAccessibility
- (void)_createSubviews;
@end

@implementation MPVolumeViewAccessibility

- (void)_createSubviews
{
  v5.receiver = self;
  v5.super_class = MPVolumeViewAccessibility;
  [(MPVolumeViewAccessibility *)&v5 _createSubviews];
  v3 = [(MPVolumeViewAccessibility *)self safeValueForKey:@"_routeButton"];
  v4 = UIKitAccessibilityLocalizedString();
  [v3 setAccessibilityLabel:v4];
}

@end