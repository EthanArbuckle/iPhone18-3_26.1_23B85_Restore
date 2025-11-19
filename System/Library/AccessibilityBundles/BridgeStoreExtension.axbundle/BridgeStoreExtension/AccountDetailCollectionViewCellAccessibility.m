@interface AccountDetailCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AccountDetailCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppStoreKit.DynamicTypeLabel"];
  [v3 validateClass:@"BridgeStoreExtension.AccountDetailCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BridgeStoreExtension.AccountDetailCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BridgeStoreExtension.AccountDetailCollectionViewCell" hasSwiftField:@"detailLabel" withSwiftType:"DynamicTypeLabel"];
}

- (id)accessibilityLabel
{
  v3 = [(AccountDetailCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityAccessoryView"];
  v4 = [(AccountDetailCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"detailLabel"];
  v5 = [(AccountDetailCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityTitleLabel, accessibilitySubtitleLabel"];
  MEMORY[0x29C2CD990](@"AppStore.CountBadgeView");
  if (objc_opt_isKindOfClass())
  {
    v8 = [v3 safeValueForKey:@"accessibilityCountLabel"];
    v6 = __UIAXStringForVariables();
  }

  else
  {
    MEMORY[0x29C2CD990](@"AppStoreKit.DynamicTypeLabel");
    objc_opt_isKindOfClass();
    v6 = __UIAXStringForVariables();
  }

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = AccountDetailCollectionViewCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(AccountDetailCollectionViewCellAccessibility *)&v5 accessibilityTraits];
  if ([(AccountDetailCollectionViewCellAccessibility *)self safeBoolForKey:@"accessibilityDisabled"])
  {
    return *MEMORY[0x29EDC7FA8] | v3;
  }

  else
  {
    return v3 & ~*MEMORY[0x29EDC7FA8];
  }
}

@end