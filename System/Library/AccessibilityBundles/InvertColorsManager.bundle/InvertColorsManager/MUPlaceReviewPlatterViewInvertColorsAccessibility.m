@interface MUPlaceReviewPlatterViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation MUPlaceReviewPlatterViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(MUPlaceReviewPlatterViewInvertColorsAccessibility *)self safeUIViewForKey:@"_userAvatarImageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MUPlaceReviewPlatterViewInvertColorsAccessibility;
  [(MUPlaceReviewPlatterViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(MUPlaceReviewPlatterViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end