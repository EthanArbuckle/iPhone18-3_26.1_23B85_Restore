@interface MetadataRibbonIconWithLabelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MetadataRibbonIconWithLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppStore.MetadataRibbonIconWithLabelView" hasInstanceMethod:@"accessibilityArtworkView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppStore.MetadataRibbonIconWithLabelView" hasInstanceMethod:@"accessibilityUILabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MetadataRibbonIconWithLabelViewAccessibility *)self safeValueForKey:@"accessibilityArtworkView"];
  v6 = [(MetadataRibbonIconWithLabelViewAccessibility *)self safeValueForKey:@"accessibilityUILabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end