@interface HUTileCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation HUTileCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUTileCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"HomeUI.TileCellContentView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"HomeUI.TileCellContentView" hasInstanceMethod:@"standardLabels" withFullSignature:{"@", 0}];
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
  contentView = [v2 contentView];
  v4 = [contentView safeArrayForKey:@"standardLabels"];

  v5 = [v4 ax_filteredArrayUsingBlock:&__block_literal_global_0];

  v6 = AXLabelForElements();

  return v6;
}

- (id)automationElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  contentView = [v2 contentView];
  subviews = [contentView subviews];

  return subviews;
}

@end