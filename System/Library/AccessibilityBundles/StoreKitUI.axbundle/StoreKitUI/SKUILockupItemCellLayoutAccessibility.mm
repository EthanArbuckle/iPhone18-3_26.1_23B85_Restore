@interface SKUILockupItemCellLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SKUILockupItemCellLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUILockupItemCellLayout" hasInstanceMethod:@"numberOfUserRatings" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SKUILockupItemCellLayout" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUILockupItemCellLayout" hasInstanceMethod:@"categoryString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUILockupMetadataView" hasInstanceVariable:@"_userRatingImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"SKUILockupItemCellLayout" hasInstanceVariable:@"_metadataView" withType:"SKUILockupMetadataView"];
}

- (id)accessibilityLabel
{
  v3 = [(SKUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"numberOfUserRatings"];
  integerValue = [v3 integerValue];

  if (integerValue < 1)
  {
    v7 = 0;
  }

  else
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilitySKUILocalizedString(@"USER_RATING_COUNT");
    v7 = [v5 localizedStringWithFormat:v6, integerValue];
  }

  v8 = [(SKUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"title"];
  v9 = [(SKUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"categoryString"];
  v10 = [(SKUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"_metadataView"];
  v11 = [v10 safeValueForKey:@"_userRatingImageView"];
  accessibilityLabel = [v11 accessibilityLabel];
  v12 = __UIAXStringForVariables();

  return v12;
}

@end