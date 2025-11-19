@interface AVTStickerRecentsOverlayViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation AVTStickerRecentsOverlayViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 window];
  v5 = [v4 rootViewController];
  v6 = [v5 safeStringForKey:@"_hostBundleID"];

  if (v6)
  {
    v7 = [(AVTStickerRecentsOverlayViewInvertColorsAccessibility *)self safeUIViewForKey:@"imageView"];
    [v7 _setAccessibilityInvertState:_AXSInvertColorsEnabledAppCached()];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTStickerRecentsOverlayViewInvertColorsAccessibility;
  [(AVTStickerRecentsOverlayViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(AVTStickerRecentsOverlayViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end