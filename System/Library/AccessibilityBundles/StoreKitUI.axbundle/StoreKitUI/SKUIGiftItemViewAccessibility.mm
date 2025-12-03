@interface SKUIGiftItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SKUIGiftItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIGiftItemView" hasInstanceVariable:@"_subtitleLabel1" withType:"UILabel"];
  [validationsCopy validateClass:@"SKUIGiftItemView" hasInstanceVariable:@"_subtitleLabel2" withType:"UILabel"];
  [validationsCopy validateClass:@"SKUIGiftItemView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SKUIGiftItemView" hasInstanceVariable:@"_price" withType:"NSString"];
  [validationsCopy validateClass:@"SKUIGiftItemView" hasInstanceVariable:@"_numberOfUserRatings" withType:"NSInteger"];
  [validationsCopy validateClass:@"SKUIGiftItemView" hasInstanceVariable:@"_userRating" withType:"f"];
}

- (id)accessibilityLabel
{
  v3 = [(SKUIGiftItemViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [(SKUIGiftItemViewAccessibility *)self safeValueForKey:@"_subtitleLabel1"];
  v5 = [(SKUIGiftItemViewAccessibility *)self safeValueForKey:@"_subtitleLabel2"];
  v6 = [(SKUIGiftItemViewAccessibility *)self safeValueForKey:@"_userRating"];
  [v6 floatValue];

  v7 = [(SKUIGiftItemViewAccessibility *)self safeValueForKey:@"_numberOfUserRatings"];
  integerValue = [v7 integerValue];

  v9 = MEMORY[0x29EDBA0F8];
  v10 = accessibilitySKUILocalizedString(@"USER_RATING_COUNT");
  v11 = [v9 localizedStringWithFormat:v10, integerValue];

  v14 = UIAXStarRatingStringForRating();
  v12 = __UIAXStringForVariables();

  return v12;
}

@end