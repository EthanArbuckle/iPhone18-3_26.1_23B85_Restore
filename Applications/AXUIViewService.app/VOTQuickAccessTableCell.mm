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
  accessibilityTraits = [(VOTQuickAccessTableCell *)&v7 accessibilityTraits];
  cellAccessibility = [(VOTQuickAccessTableCell *)self cellAccessibility];
  accessibilityTraits2 = [cellAccessibility accessibilityTraits];

  return accessibilityTraits2 | accessibilityTraits;
}

- (void)accessibilityDecrement
{
  cellAccessibility = [(VOTQuickAccessTableCell *)self cellAccessibility];
  [cellAccessibility accessibilityDecrement];
}

- (void)accessibilityIncrement
{
  cellAccessibility = [(VOTQuickAccessTableCell *)self cellAccessibility];
  [cellAccessibility accessibilityIncrement];
}

- (BOOL)_accessibilityShouldClearChildren
{
  cellAccessibility = [(VOTQuickAccessTableCell *)self cellAccessibility];
  _accessibilityShouldClearChildren = [cellAccessibility _accessibilityShouldClearChildren];

  return _accessibilityShouldClearChildren;
}

- (id)accessibilityCustomActions
{
  cellAccessibility = [(VOTQuickAccessTableCell *)self cellAccessibility];
  accessibilityCustomActions = [cellAccessibility accessibilityCustomActions];

  return accessibilityCustomActions;
}

@end