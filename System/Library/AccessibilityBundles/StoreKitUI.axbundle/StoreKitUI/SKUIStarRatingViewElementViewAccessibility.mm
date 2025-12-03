@interface SKUIStarRatingViewElementViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUIStarRatingViewElementViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(SKUIStarRatingViewElementViewAccessibility *)self safeValueForKey:@"_textLayout"];
  v4 = [v3 safeValueForKey:@"attributedString"];
  v5 = [v4 safeValueForKey:@"string"];

  v6 = [v5 componentsSeparatedByString:@" "];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [v5 stringByReplacingOccurrencesOfString:@"[^0-9]" withString:&stru_2A2323958 options:1024 range:{0, objc_msgSend(v5, "length")}];

    v9 = MEMORY[0x29EDBA0F8];
    v10 = accessibilitySKUILocalizedString(@"USER_RATING_COUNT");
    v5 = [v9 localizedStringWithFormat:v10, objc_msgSend(v8, "integerValue")];
  }

  v11 = [(SKUIStarRatingViewElementViewAccessibility *)self safeValueForKey:@"_starRatingImage"];
  accessibilityLabel = [v11 accessibilityLabel];
  v13 = __UIAXStringForVariables();

  return v13;
}

@end