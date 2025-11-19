@interface SUUIItemBrowseCellLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SUUIItemBrowseCellLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIItemBrowseCellLayout" hasInstanceVariable:@"_cellContentView" withType:"_SUUIItemBrowseCellContentView"];
  [v3 validateClass:@"_SUUIItemBrowseCellContentView" hasInstanceMethod:@"userRatingImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_SUUIItemBrowseCellContentView" hasInstanceMethod:@"userRatingLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_SUUIItemBrowseCellContentView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_SUUIItemBrowseCellContentView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(SUUIItemBrowseCellLayoutAccessibility *)self safeValueForKey:@"_cellContentView"];
  v3 = [v2 safeValueForKey:@"userRatingLabel"];
  v4 = [v3 accessibilityLabel];

  if ([v4 length])
  {
    v5 = [MEMORY[0x29EDB9F50] decimalDigitCharacterSet];
    v6 = [v5 invertedSet];
    v7 = [v4 stringByTrimmingCharactersInSet:v6];

    v8 = [v7 integerValue];
    v9 = MEMORY[0x29EDBA0F8];
    v10 = accessibilityLocalizedString(@"USER_RATING_COUNT");
    v11 = [v9 localizedStringWithFormat:v10, v8];

    v4 = v11;
  }

  v12 = [v2 safeValueForKey:@"titleLabel"];
  v13 = [v12 accessibilityLabel];
  v14 = [v2 safeValueForKey:@"subtitleLabel"];
  v15 = [v14 accessibilityLabel];
  v16 = [v2 safeValueForKey:@"userRatingImageView"];
  v19 = [v16 accessibilityLabel];
  v17 = __UIAXStringForVariables();

  return v17;
}

@end