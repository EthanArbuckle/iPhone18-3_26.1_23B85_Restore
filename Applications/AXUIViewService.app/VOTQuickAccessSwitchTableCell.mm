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
  v3 = [(VOTQuickAccessSwitchTableCell *)&v8 accessibilityTraits];
  v4 = [(VOTQuickAccessSwitchTableCell *)self cellAccessibility];
  v5 = [v4 accessibilityTraits] | v3;
  v6 = UIAccessibilityTraitAdjustable;

  return v5 & ~v6;
}

- (void)accessibilityDecrement
{
  v2 = [(VOTQuickAccessSwitchTableCell *)self cellAccessibility];
  [v2 accessibilityDecrement];
}

- (void)accessibilityIncrement
{
  v2 = [(VOTQuickAccessSwitchTableCell *)self cellAccessibility];
  [v2 accessibilityIncrement];
}

- (BOOL)_accessibilityShouldClearChildren
{
  v2 = [(VOTQuickAccessSwitchTableCell *)self cellAccessibility];
  v3 = [v2 _accessibilityShouldClearChildren];

  return v3;
}

- (id)accessibilityCustomActions
{
  v2 = [(VOTQuickAccessSwitchTableCell *)self cellAccessibility];
  v3 = [v2 accessibilityCustomActions];

  return v3;
}

@end