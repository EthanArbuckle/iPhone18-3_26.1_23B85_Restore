@interface VOTQuickAccessTableCell
- (BOOL)_accessibilityShouldClearChildren;
- (VOTQuickAccessTableCellAccessibility)cellAccessibility;
- (id)accessibilityCustomActions;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation VOTQuickAccessTableCell

- (VOTQuickAccessTableCellAccessibility)cellAccessibility
{
  cellAccessibility = self->_cellAccessibility;
  if (!cellAccessibility)
  {
    v4 = [[VOTQuickAccessTableCellAccessibility alloc] initWithWeakCell:self];
    v5 = self->_cellAccessibility;
    self->_cellAccessibility = v4;

    cellAccessibility = self->_cellAccessibility;
  }

  return cellAccessibility;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = VOTQuickAccessTableCell;
  v3 = [(VOTQuickAccessTableCell *)&v7 accessibilityTraits];
  v4 = [(VOTQuickAccessTableCell *)self cellAccessibility];
  v5 = [v4 accessibilityTraits];

  return v5 | v3;
}

- (void)accessibilityDecrement
{
  v2 = [(VOTQuickAccessTableCell *)self cellAccessibility];
  [v2 accessibilityDecrement];
}

- (void)accessibilityIncrement
{
  v2 = [(VOTQuickAccessTableCell *)self cellAccessibility];
  [v2 accessibilityIncrement];
}

- (BOOL)_accessibilityShouldClearChildren
{
  v2 = [(VOTQuickAccessTableCell *)self cellAccessibility];
  v3 = [v2 _accessibilityShouldClearChildren];

  return v3;
}

- (id)accessibilityCustomActions
{
  v2 = [(VOTQuickAccessTableCell *)self cellAccessibility];
  v3 = [v2 accessibilityCustomActions];

  return v3;
}

@end