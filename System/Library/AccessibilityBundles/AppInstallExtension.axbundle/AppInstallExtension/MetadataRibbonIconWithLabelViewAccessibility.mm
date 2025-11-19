@interface MetadataRibbonIconWithLabelViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MetadataRibbonIconWithLabelViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(MetadataRibbonIconWithLabelViewAccessibility *)self safeValueForKey:@"accessibilityArtworkView"];
  v6 = [(MetadataRibbonIconWithLabelViewAccessibility *)self safeValueForKey:@"accessibilityUILabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end