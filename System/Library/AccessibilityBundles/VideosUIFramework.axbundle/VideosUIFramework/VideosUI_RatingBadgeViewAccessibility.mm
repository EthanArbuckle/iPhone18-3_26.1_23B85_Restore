@interface VideosUI_RatingBadgeViewAccessibility
- (BOOL)canBecomeFocused;
- (id)accessibilityLabel;
@end

@implementation VideosUI_RatingBadgeViewAccessibility

- (id)accessibilityLabel
{
  [(VideosUI_RatingBadgeViewAccessibility *)self safeSwiftCGFloatForKey:@"rating"];
  v3 = v2;
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"rating.stars");
  v6 = [v4 stringWithFormat:v5, v3];

  return v6;
}

- (BOOL)canBecomeFocused
{
  if (([(VideosUI_RatingBadgeViewAccessibility *)self _accessibilityIsFocusForFocusEverywhereRunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = VideosUI_RatingBadgeViewAccessibility;
  return [(VideosUI_RatingBadgeViewAccessibility *)&v4 canBecomeFocused];
}

@end