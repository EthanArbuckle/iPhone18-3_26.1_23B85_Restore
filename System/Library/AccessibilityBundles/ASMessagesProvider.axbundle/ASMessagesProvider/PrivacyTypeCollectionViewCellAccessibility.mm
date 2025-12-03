@interface PrivacyTypeCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PrivacyTypeCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ASMessagesProvider.PrivacyTypeCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASMessagesProvider.PrivacyTypeCollectionViewCell" hasInstanceMethod:@"accessibilityDetailLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASMessagesProvider.PrivacyTypeCollectionViewCell" hasInstanceMethod:@"accessibilityCategoryViews" withFullSignature:{"@", 0}];
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