@interface MetadataRibbonBorderedLabelWithDescriptionViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MetadataRibbonBorderedLabelWithDescriptionViewAccessibility

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
    v9 = [v3 accessibilityLabel];
    v10 = [v5 accessibilityLabel];
    v11 = [v7 stringWithFormat:v8, v9, v10];
  }

  return v11;
}

@end