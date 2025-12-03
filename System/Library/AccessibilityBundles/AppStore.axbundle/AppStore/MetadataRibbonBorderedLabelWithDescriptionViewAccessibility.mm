@interface MetadataRibbonBorderedLabelWithDescriptionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MetadataRibbonBorderedLabelWithDescriptionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.MetadataRibbonBorderedLabelWithDescriptionView" hasInstanceMethod:@"accessibilityBorderedLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.MetadataRibbonBorderedLabelWithDescriptionView" hasInstanceMethod:@"accessibilityDescriptionLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MetadataRibbonBorderedLabelWithDescriptionViewAccessibility *)self safeValueForKey:@"accessibilityBorderedLabel"];
  v4 = [(MetadataRibbonBorderedLabelWithDescriptionViewAccessibility *)self safeValueForKey:@"accessibilityDescriptionLabel"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = __UIAXStringForVariables();
  }

  else
  {
    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityAppStoreLocalizedString(@"ranking.with.category");
    accessibilityLabel = [v3 accessibilityLabel];
    accessibilityLabel2 = [v5 accessibilityLabel];
    v11 = [v7 stringWithFormat:v8, accessibilityLabel, accessibilityLabel2];
  }

  return v11;
}

@end