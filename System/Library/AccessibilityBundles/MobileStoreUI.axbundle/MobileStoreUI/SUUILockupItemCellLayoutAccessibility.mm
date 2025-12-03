@interface SUUILockupItemCellLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SUUILockupItemCellLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUILockupItemCellLayout" hasInstanceMethod:@"numberOfUserRatings" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SUUILockupItemCellLayout" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUILockupItemCellLayout" hasInstanceMethod:@"categoryString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUILockupMetadataView" hasInstanceVariable:@"_userRatingImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"SUUILockupItemCellLayout" hasInstanceVariable:@"_metadataView" withType:"SUUILockupMetadataView"];
}

- (id)accessibilityLabel
{
  v3 = [(SUUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"numberOfUserRatings"];
  integerValue = [v3 integerValue];

  if (integerValue < 1)
  {
    v7 = 0;
  }

  else
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"USER_RATING_COUNT");
    v7 = [v5 localizedStringWithFormat:v6, integerValue];
  }

  v8 = [(SUUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"title"];
  v9 = [(SUUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"categoryString"];
  v10 = [(SUUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"_metadataView"];
  v11 = [v10 safeValueForKey:@"_userRatingImageView"];
  accessibilityLabel = [v11 accessibilityLabel];
  v12 = __UIAXStringForVariables();

  return v12;
}

@end