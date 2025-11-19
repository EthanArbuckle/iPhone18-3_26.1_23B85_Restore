@interface SKUIBrowseItemCellAccessibility
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIBrowseItemCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SKUIBrowseItemCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityHint
{
  if (([(SKUIBrowseItemCellAccessibility *)self isSelected]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(SKUIBrowseItemCellAccessibility *)self isHighlighted];
  }

  v4 = [(SKUIBrowseItemCellAccessibility *)self safeValueForKey:@"decorationImage"];
  v5 = [v4 accessibilityIdentifier];
  v6 = [v5 isEqualToString:@"AppStoreBrowseCategoryDownChevron"];

  v7 = 0;
  if ((v3 & 1) == 0 && v6)
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