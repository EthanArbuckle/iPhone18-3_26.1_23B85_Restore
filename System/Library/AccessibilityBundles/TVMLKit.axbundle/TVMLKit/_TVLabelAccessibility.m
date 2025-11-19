@interface _TVLabelAccessibility
- (id)accessibilityLabel;
- (unint64_t)_accessibilityExplorerElementReadPriority;
- (unint64_t)accessibilityTraits;
@end

@implementation _TVLabelAccessibility

- (id)accessibilityLabel
{
  v3 = [(_TVLabelAccessibility *)self accessibilityUserDefinedLabel];
  v7.receiver = self;
  v7.super_class = _TVLabelAccessibility;
  v4 = [(_TVLabelAccessibility *)&v7 accessibilityLabel];
  v5 = [MEMORY[0x29EDBDE00] textByReconcilingClientText:v3 withServerText:v4];

  return v5;
}

- (unint64_t)_accessibilityExplorerElementReadPriority
{
  v3 = [(_TVLabelAccessibility *)self _atvaccessibilityITMLClass];
  v4 = [v3 isEqualToString:@"banner-product-availability-title"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = _TVLabelAccessibility;
  return [(_TVLabelAccessibility *)&v6 _accessibilityExplorerElementReadPriority];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = _TVLabelAccessibility;
  v3 = [(_TVLabelAccessibility *)&v7 accessibilityTraits];
  v4 = [(_TVLabelAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_3 startWithSelf:0];

  v5 = *MEMORY[0x29EDC7F80];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end