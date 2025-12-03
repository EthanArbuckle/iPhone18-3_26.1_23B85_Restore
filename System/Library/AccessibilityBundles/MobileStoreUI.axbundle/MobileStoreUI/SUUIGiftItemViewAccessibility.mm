@interface SUUIGiftItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SUUIGiftItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIGiftItemView" hasInstanceVariable:@"_subtitleLabel1" withType:"UILabel"];
  [validationsCopy validateClass:@"SUUIGiftItemView" hasInstanceVariable:@"_subtitleLabel2" withType:"UILabel"];
  [validationsCopy validateClass:@"SUUIGiftItemView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SUUIGiftItemView" hasInstanceVariable:@"_price" withType:"NSString"];
  [validationsCopy validateClass:@"SUUIGiftItemView" hasInstanceVariable:@"_numberOfUserRatings" withType:"NSInteger"];
  [validationsCopy validateClass:@"SUUIGiftItemView" hasInstanceVariable:@"_userRating" withType:"f"];
}

- (id)accessibilityLabel
{
  v3 = [(SUUIGiftItemViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [(SUUIGiftItemViewAccessibility *)self safeValueForKey:@"_subtitleLabel1"];
  v5 = [(SUUIGiftItemViewAccessibility *)self safeValueForKey:@"_subtitleLabel2"];
  v6 = [(SUUIGiftItemViewAccessibility *)self safeValueForKey:@"_userRating"];
  [v6 floatValue];

  v7 = [(SUUIGiftItemViewAccessibility *)self safeValueForKey:@"_numberOfUserRatings"];
  integerValue = [v7 integerValue];

  v9 = MEMORY[0x29EDBA0F8];
  v10 = accessibilityLocalizedString(@"USER_RATING_COUNT");
  v11 = [v9 localizedStringWithFormat:v10, integerValue];

  v14 = UIAXStarRatingStringForRating();
  v12 = __UIAXStringForVariables();

  return v12;
}

@end