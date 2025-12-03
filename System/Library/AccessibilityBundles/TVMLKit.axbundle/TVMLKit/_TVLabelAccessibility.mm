@interface _TVLabelAccessibility
- (id)accessibilityLabel;
- (unint64_t)_accessibilityExplorerElementReadPriority;
- (unint64_t)accessibilityTraits;
@end

@implementation _TVLabelAccessibility

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(_TVLabelAccessibility *)self accessibilityUserDefinedLabel];
  v7.receiver = self;
  v7.super_class = _TVLabelAccessibility;
  accessibilityLabel = [(_TVLabelAccessibility *)&v7 accessibilityLabel];
  v5 = [MEMORY[0x29EDBDE00] textByReconcilingClientText:accessibilityUserDefinedLabel withServerText:accessibilityLabel];

  return v5;
}

- (unint64_t)_accessibilityExplorerElementReadPriority
{
  _atvaccessibilityITMLClass = [(_TVLabelAccessibility *)self _atvaccessibilityITMLClass];
  v4 = [_atvaccessibilityITMLClass isEqualToString:@"banner-product-availability-title"];

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
  accessibilityTraits = [(_TVLabelAccessibility *)&v7 accessibilityTraits];
  v4 = [(_TVLabelAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_3 startWithSelf:0];

  v5 = *MEMORY[0x29EDC7F80];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

@end