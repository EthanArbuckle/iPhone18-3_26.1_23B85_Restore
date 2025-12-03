@interface MapsDebugCollectionHeaderFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MapsDebugCollectionHeaderFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MapsDebugCollectionHeaderFooterView" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MapsDebugCollectionHeaderFooterView" hasInstanceMethod:@"isFooter" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(MapsDebugCollectionHeaderFooterViewAccessibility *)self safeValueForKey:@"textLabel"];
  text = [v2 text];
  v4 = [text length] != 0;

  return v4;
}

- (id)accessibilityLabel
{
  v2 = [(MapsDebugCollectionHeaderFooterViewAccessibility *)self safeValueForKey:@"textLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7FA0];
  v3 = [(MapsDebugCollectionHeaderFooterViewAccessibility *)self safeBoolForKey:@"isFooter"];
  v4 = *MEMORY[0x29EDC7F80];
  if (v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

@end