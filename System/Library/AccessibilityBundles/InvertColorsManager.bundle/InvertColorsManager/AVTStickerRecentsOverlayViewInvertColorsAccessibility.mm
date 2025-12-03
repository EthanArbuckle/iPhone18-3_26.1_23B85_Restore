@interface AVTStickerRecentsOverlayViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation AVTStickerRecentsOverlayViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  window = [v3 window];
  rootViewController = [window rootViewController];
  v6 = [rootViewController safeStringForKey:@"_hostBundleID"];

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