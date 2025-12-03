@interface SUUIBarRatingViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SUUIBarRatingViewAccessibility

- (id)accessibilityLabel
{
  v7.receiver = self;
  v7.super_class = SUUIBarRatingViewAccessibility;
  accessibilityLabel = [(SUUIBarRatingViewAccessibility *)&v7 accessibilityLabel];

  if (accessibilityLabel)
  {
    v6.receiver = self;
    v6.super_class = SUUIBarRatingViewAccessibility;
    accessibilityLabel2 = [(SUUIBarRatingViewAccessibility *)&v6 accessibilityLabel];
  }

  else
  {
    accessibilityLabel2 = accessibilityLocalizedString(@"bar.rating");
  }

  return accessibilityLabel2;
}

- (id)accessibilityValue
{
  v2 = [(SUUIBarRatingViewAccessibility *)self safeValueForKey:@"_ratingValue"];
  [v2 floatValue];
  v4 = v3 * 11.0;

  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"BAR_RATING_VALUE");
  v7 = [v5 localizedStringWithFormat:v6, vcvtps_s32_f32(v4), 11];

  return v7;
}

@end