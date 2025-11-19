@interface MapsDebugCollectionHeaderFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MapsDebugCollectionHeaderFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MapsDebugCollectionHeaderFooterView" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MapsDebugCollectionHeaderFooterView" hasInstanceMethod:@"isFooter" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(MapsDebugCollectionHeaderFooterViewAccessibility *)self safeValueForKey:@"textLabel"];
  v3 = [v2 text];
  v4 = [v3 length] != 0;

  return v4;
}

- (id)accessibilityLabel
{
  v2 = [(MapsDebugCollectionHeaderFooterViewAccessibility *)self safeValueForKey:@"textLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
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