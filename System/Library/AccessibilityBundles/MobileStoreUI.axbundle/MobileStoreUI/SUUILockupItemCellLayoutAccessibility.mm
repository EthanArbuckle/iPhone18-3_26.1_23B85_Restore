@interface SUUILockupItemCellLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SUUILockupItemCellLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUILockupItemCellLayout" hasInstanceMethod:@"numberOfUserRatings" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SUUILockupItemCellLayout" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUILockupItemCellLayout" hasInstanceMethod:@"categoryString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUILockupMetadataView" hasInstanceVariable:@"_userRatingImageView" withType:"UIImageView"];
  [v3 validateClass:@"SUUILockupItemCellLayout" hasInstanceVariable:@"_metadataView" withType:"SUUILockupMetadataView"];
}

- (id)accessibilityLabel
{
  v3 = [(SUUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"numberOfUserRatings"];
  v4 = [v3 integerValue];

  if (v4 < 1)
  {
    v7 = 0;
  }

  else
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"USER_RATING_COUNT");
    v7 = [v5 localizedStringWithFormat:v6, v4];
  }

  v8 = [(SUUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"title"];
  v9 = [(SUUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"categoryString"];
  v10 = [(SUUILockupItemCellLayoutAccessibility *)self safeValueForKey:@"_metadataView"];
  v11 = [v10 safeValueForKey:@"_userRatingImageView"];
  v14 = [v11 accessibilityLabel];
  v12 = __UIAXStringForVariables();

  return v12;
}

@end