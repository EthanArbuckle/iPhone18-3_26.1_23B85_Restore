@interface HUTileCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation HUTileCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUTileCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"HomeUI.TileCellContentView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"HomeUI.TileCellContentView" hasInstanceMethod:@"standardLabels" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HUTileCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HUTileCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 contentView];
  v4 = [v3 safeArrayForKey:@"standardLabels"];

  v5 = [v4 ax_filteredArrayUsingBlock:&__block_literal_global_0];

  v6 = AXLabelForElements();

  return v6;
}

- (id)automationElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 contentView];
  v4 = [v3 subviews];

  return v4;
}

@end