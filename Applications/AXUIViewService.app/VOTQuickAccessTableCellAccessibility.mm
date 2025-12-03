@interface VOTQuickAccessTableCellAccessibility
- (PSTableCell)cell;
- (VOTQuickAccessTableCellAccessibility)initWithWeakCell:(id)cell;
- (id)_settingsItem;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation VOTQuickAccessTableCellAccessibility

- (VOTQuickAccessTableCellAccessibility)initWithWeakCell:(id)cell
{
  cellCopy = cell;
  v8.receiver = self;
  v8.super_class = VOTQuickAccessTableCellAccessibility;
  v5 = [(VOTQuickAccessTableCellAccessibility *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VOTQuickAccessTableCellAccessibility *)v5 setCell:cellCopy];
  }

  return v6;
}

- (id)_settingsItem
{
  cell = [(VOTQuickAccessTableCellAccessibility *)self cell];
  specifier = [cell specifier];

  v4 = [specifier propertyForKey:@"VOSSettingsItem"];

  return v4;
}

- (void)accessibilityDecrement
{
  cell = [(VOTQuickAccessTableCellAccessibility *)self cell];
  specifier = [cell specifier];

  v4 = +[VOSSettingsHelper sharedInstance];
  _settingsItem = [(VOTQuickAccessTableCellAccessibility *)self _settingsItem];
  [v4 setNextValueForItem:_settingsItem inDirection:0];

  cell2 = [(VOTQuickAccessTableCellAccessibility *)self cell];
  [cell2 reloadWithSpecifier:specifier animated:0];
}

- (void)accessibilityIncrement
{
  cell = [(VOTQuickAccessTableCellAccessibility *)self cell];
  specifier = [cell specifier];

  v4 = +[VOSSettingsHelper sharedInstance];
  _settingsItem = [(VOTQuickAccessTableCellAccessibility *)self _settingsItem];
  [v4 setNextValueForItem:_settingsItem inDirection:1];

  cell2 = [(VOTQuickAccessTableCellAccessibility *)self cell];
  [cell2 reloadWithSpecifier:specifier animated:0];
}

- (PSTableCell)cell
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);

  return WeakRetained;
}

@end