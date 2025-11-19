@interface SKUIBarRatingViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SKUIBarRatingViewAccessibility

- (id)accessibilityLabel
{
  v7.receiver = self;
  v7.super_class = SKUIBarRatingViewAccessibility;
  v3 = [(SKUIBarRatingViewAccessibility *)&v7 accessibilityLabel];

  if (v3)
  {
    v6.receiver = self;
    v6.super_class = SKUIBarRatingViewAccessibility;
    v4 = [(SKUIBarRatingViewAccessibility *)&v6 accessibilityLabel];
  }

  else
  {
    v4 = accessibilitySKUILocalizedString(@"bar.rating");
  }

  return v4;
}

- (id)accessibilityValue
{
  v2 = [(SKUIBarRatingViewAccessibility *)self safeValueForKey:@"_ratingValue"];
  [v2 floatValue];
  v4 = v3 * 11.0;

  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilitySKUILocalizedString(@"BAR_RATING_VALUE");
  v7 = [v5 localizedStringWithFormat:v6, vcvtps_s32_f32(v4), 11];

  return v7;
}

@end