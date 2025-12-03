@interface SUUIBrowseItemCellAccessibility
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SUUIBrowseItemCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SUUIBrowseItemCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  if (([(SUUIBrowseItemCellAccessibility *)self isSelected]& 1) != 0)
  {
    isHighlighted = 1;
  }

  else
  {
    isHighlighted = [(SUUIBrowseItemCellAccessibility *)self isHighlighted];
  }

  v4 = [(SUUIBrowseItemCellAccessibility *)self safeValueForKey:@"decorationImage"];
  accessibilityIdentifier = [v4 accessibilityIdentifier];
  v6 = [accessibilityIdentifier isEqualToString:@"AppStoreBrowseCategoryDownChevron"];

  v7 = 0;
  if ((isHighlighted & 1) == 0 && v6)
  {
    v7 = accessibilityLocalizedString(@"explore.category.expand");
  }

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SUUIBrowseItemCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SUUIBrowseItemCellAccessibility *)&v3 accessibilityTraits];
}

@end