@interface SUUIGiftItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SUUIGiftItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIGiftItemView" hasInstanceVariable:@"_subtitleLabel1" withType:"UILabel"];
  [v3 validateClass:@"SUUIGiftItemView" hasInstanceVariable:@"_subtitleLabel2" withType:"UILabel"];
  [v3 validateClass:@"SUUIGiftItemView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"SUUIGiftItemView" hasInstanceVariable:@"_price" withType:"NSString"];
  [v3 validateClass:@"SUUIGiftItemView" hasInstanceVariable:@"_numberOfUserRatings" withType:"NSInteger"];
  [v3 validateClass:@"SUUIGiftItemView" hasInstanceVariable:@"_userRating" withType:"f"];
}

- (id)accessibilityLabel
{
  v3 = [(SUUIGiftItemViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [(SUUIGiftItemViewAccessibility *)self safeValueForKey:@"_subtitleLabel1"];
  v5 = [(SUUIGiftItemViewAccessibility *)self safeValueForKey:@"_subtitleLabel2"];
  v6 = [(SUUIGiftItemViewAccessibility *)self safeValueForKey:@"_userRating"];
  [v6 floatValue];

  v7 = [(SUUIGiftItemViewAccessibility *)self safeValueForKey:@"_numberOfUserRatings"];
  v8 = [v7 integerValue];

  v9 = MEMORY[0x29EDBA0F8];
  v10 = accessibilityLocalizedString(@"USER_RATING_COUNT");
  v11 = [v9 localizedStringWithFormat:v10, v8];

  v14 = UIAXStarRatingStringForRating();
  v12 = __UIAXStringForVariables();

  return v12;
}

@end