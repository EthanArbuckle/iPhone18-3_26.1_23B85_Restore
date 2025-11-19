@interface PrivacyTypeCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PrivacyTypeCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BridgeStoreExtension.PrivacyTypeCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BridgeStoreExtension.PrivacyTypeCollectionViewCell" hasInstanceMethod:@"accessibilityDetailLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BridgeStoreExtension.PrivacyTypeCollectionViewCell" hasInstanceMethod:@"accessibilityCategoryViews" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PrivacyTypeCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityTitleLabel, accessibilityDetailLabel"];
  v4 = [(PrivacyTypeCollectionViewCellAccessibility *)self safeArrayForKey:@"accessibilityCategoryViews"];
  v7 = AXLabelForElements();
  v5 = __UIAXStringForVariables();

  return v5;
}

@end