@interface ArcadeDownloadPackCategoryButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ArcadeDownloadPackCategoryButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BridgeStoreExtension.ArcadeDownloadPackCategoryButton" hasSwiftField:@"titleLabel" withSwiftType:"DynamicTypeLabel"];
  [validationsCopy validateClass:@"BridgeStoreExtension.ArcadeDownloadPackCategoryButton" isKindOfClass:@"UIControl"];
}

- (id)accessibilityLabel
{
  v2 = [(ArcadeDownloadPackCategoryButtonAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v3 = __UIAXStringForVariables();

  return v3;
}

- (unint64_t)accessibilityTraits
{
  if ([(ArcadeDownloadPackCategoryButtonAccessibility *)self safeSwiftBoolForKey:@"isSelected"])
  {
    v5.receiver = self;
    v5.super_class = ArcadeDownloadPackCategoryButtonAccessibility;
    return *MEMORY[0x29EDC7F70] | [(ArcadeDownloadPackCategoryButtonAccessibility *)&v5 accessibilityTraits]| *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = ArcadeDownloadPackCategoryButtonAccessibility;
    return *MEMORY[0x29EDC7F70] | [(ArcadeDownloadPackCategoryButtonAccessibility *)&v4 accessibilityTraits];
  }
}

@end