@interface SKUILockupItemCellLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SKUILockupItemCellLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUILockupItemCellLayout" hasInstanceMethod:@"numberOfUserRatings" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SKUILockupItemCellLayout" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUILockupItemCellLayout" hasInstanceMethod:@"categoryString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUILockupMetadataView" hasInstanceVariable:@"_userRatingImageView" withType:"UIImageView"];
  [v3 validateClass:@"SKUILockupItemCellLayout" hasInstanceVariable:@"_metadataView" withType:"SKUILockupMetadataView"];
}

- (id)accessibilityLabel
{
  v3 = [(SKUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"numberOfUserRatings"];
  v4 = [v3 integerValue];

  if (v4 < 1)
  {
    v7 = 0;
  }

  else
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilitySKUILocalizedString(@"USER_RATING_COUNT");
    v7 = [v5 localizedStringWithFormat:v6, v4];
  }

  v8 = [(SKUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"title"];
  v9 = [(SKUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"categoryString"];
  v10 = [(SKUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"_metadataView"];
  v11 = [v10 safeValueForKey:@"_userRatingImageView"];
  v14 = [v11 accessibilityLabel];
  v12 = __UIAXStringForVariables();

  return v12;
}

@end