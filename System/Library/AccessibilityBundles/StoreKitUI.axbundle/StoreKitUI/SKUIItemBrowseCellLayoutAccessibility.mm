@interface SKUIItemBrowseCellLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SKUIItemBrowseCellLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIItemBrowseCellLayout" hasInstanceVariable:@"_cellContentView" withType:"_SKUIItemBrowseCellContentView"];
  [validationsCopy validateClass:@"_SKUIItemBrowseCellContentView" hasInstanceMethod:@"userRatingImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_SKUIItemBrowseCellContentView" hasInstanceMethod:@"userRatingLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_SKUIItemBrowseCellContentView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_SKUIItemBrowseCellContentView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SKUIItemBrowseCellLayoutAccessibility *)self safeValueForKey:@"_cellContentView"];
  v3 = [v2 safeValueForKey:@"userRatingLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    decimalDigitCharacterSet = [MEMORY[0x29EDB9F50] decimalDigitCharacterSet];
    invertedSet = [decimalDigitCharacterSet invertedSet];
    v7 = [accessibilityLabel stringByTrimmingCharactersInSet:invertedSet];

    integerValue = [v7 integerValue];
    v9 = MEMORY[0x29EDBA0F8];
    v10 = accessibilitySKUILocalizedString(@"USER_RATING_COUNT");
    v11 = [v9 localizedStringWithFormat:v10, integerValue];

    accessibilityLabel = v11;
  }

  v12 = [v2 safeValueForKey:@"titleLabel"];
  accessibilityLabel2 = [v12 accessibilityLabel];
  v14 = [v2 safeValueForKey:@"subtitleLabel"];
  accessibilityLabel3 = [v14 accessibilityLabel];
  v16 = [v2 safeValueForKey:@"userRatingImageView"];
  accessibilityLabel4 = [v16 accessibilityLabel];
  v17 = __UIAXStringForVariables();

  return v17;
}

@end