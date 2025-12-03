@interface SKUIBrowseItemCellAccessibility
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIBrowseItemCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SKUIBrowseItemCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  if (([(SKUIBrowseItemCellAccessibility *)self isSelected]& 1) != 0)
  {
    isHighlighted = 1;
  }

  else
  {
    isHighlighted = [(SKUIBrowseItemCellAccessibility *)self isHighlighted];
  }

  v4 = [(SKUIBrowseItemCellAccessibility *)self safeValueForKey:@"decorationImage"];
  accessibilityIdentifier = [v4 accessibilityIdentifier];
  v6 = [accessibilityIdentifier isEqualToString:@"AppStoreBrowseCategoryDownChevron"];

  v7 = 0;
  if ((isHighlighted & 1) == 0 && v6)
  {
    v7 = accessibilitySKUILocalizedString(@"explore.category.expand");
  }

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SKUIBrowseItemCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SKUIBrowseItemCellAccessibility *)&v3 accessibilityTraits];
}

@end