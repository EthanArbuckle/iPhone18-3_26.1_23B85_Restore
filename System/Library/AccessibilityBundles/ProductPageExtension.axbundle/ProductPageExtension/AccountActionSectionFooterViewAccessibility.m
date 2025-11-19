@interface AccountActionSectionFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
@end

@implementation AccountActionSectionFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ProductPageExtension.AccountActionSectionFooterView" hasInstanceMethod:@"accessibilityTextLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppStoreKit.DynamicTypeLabel" isKindOfClass:@"UILabel"];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(AccountActionSectionFooterViewAccessibility *)self safeValueForKey:@"accessibilityTextLabel"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accessibilityLabel];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end