@interface VOTQuickAccessSwitchTableCell
- (BOOL)_accessibilityShouldClearChildren;
- (VOTQuickAccessTableCellAccessibility)cellAccessibility;
- (id)accessibilityCustomActions;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation VOTQuickAccessSwitchTableCell

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
  v8.receiver = self;
  v8.super_class = VOTQuickAccessSwitchTableCell;
  accessibilityTraits = [(VOTQuickAccessSwitchTableCell *)&v8 accessibilityTraits];
  cellAccessibility = [(VOTQuickAccessSwitchTableCell *)self cellAccessibility];
  v5 = [cellAccessibility accessibilityTraits] | accessibilityTraits;
  v6 = UIAccessibilityTraitAdjustable;

  return v5 & ~v6;
}

- (void)accessibilityDecrement
{
  cellAccessibility = [(VOTQuickAccessSwitchTableCell *)self cellAccessibility];
  [cellAccessibility accessibilityDecrement];
}

- (void)accessibilityIncrement
{
  cellAccessibility = [(VOTQuickAccessSwitchTableCell *)self cellAccessibility];
  [cellAccessibility accessibilityIncrement];
}

- (BOOL)_accessibilityShouldClearChildren
{
  cellAccessibility = [(VOTQuickAccessSwitchTableCell *)self cellAccessibility];
  _accessibilityShouldClearChildren = [cellAccessibility _accessibilityShouldClearChildren];

  return _accessibilityShouldClearChildren;
}

- (id)accessibilityCustomActions
{
  cellAccessibility = [(VOTQuickAccessSwitchTableCell *)self cellAccessibility];
  accessibilityCustomActions = [cellAccessibility accessibilityCustomActions];

  return accessibilityCustomActions;
}

@end