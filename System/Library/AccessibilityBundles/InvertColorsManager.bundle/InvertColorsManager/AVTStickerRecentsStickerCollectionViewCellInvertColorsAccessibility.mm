@interface AVTStickerRecentsStickerCollectionViewCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation AVTStickerRecentsStickerCollectionViewCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  window = [v2 window];
  rootViewController = [window rootViewController];
  v5 = [rootViewController safeStringForKey:@"_hostBundleID"];

  if (v5)
  {
    [v2 _setAccessibilityInvertState:_AXSInvertColorsEnabledAppCached()];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTStickerRecentsStickerCollectionViewCellInvertColorsAccessibility;
  [(AVTStickerRecentsStickerCollectionViewCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(AVTStickerRecentsStickerCollectionViewCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end