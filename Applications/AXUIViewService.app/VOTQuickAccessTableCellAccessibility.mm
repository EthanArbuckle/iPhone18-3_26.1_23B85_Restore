@interface VOTQuickAccessTableCellAccessibility
- (PSTableCell)cell;
- (VOTQuickAccessTableCellAccessibility)initWithWeakCell:(id)a3;
- (id)_settingsItem;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation VOTQuickAccessTableCellAccessibility

- (VOTQuickAccessTableCellAccessibility)initWithWeakCell:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VOTQuickAccessTableCellAccessibility;
  v5 = [(VOTQuickAccessTableCellAccessibility *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VOTQuickAccessTableCellAccessibility *)v5 setCell:v4];
  }

  return v6;
}

- (id)_settingsItem
{
  v2 = [(VOTQuickAccessTableCellAccessibility *)self cell];
  v3 = [v2 specifier];

  v4 = [v3 propertyForKey:@"VOSSettingsItem"];

  return v4;
}

- (void)accessibilityDecrement
{
  v3 = [(VOTQuickAccessTableCellAccessibility *)self cell];
  v7 = [v3 specifier];

  v4 = +[VOSSettingsHelper sharedInstance];
  v5 = [(VOTQuickAccessTableCellAccessibility *)self _settingsItem];
  [v4 setNextValueForItem:v5 inDirection:0];

  v6 = [(VOTQuickAccessTableCellAccessibility *)self cell];
  [v6 reloadWithSpecifier:v7 animated:0];
}

- (void)accessibilityIncrement
{
  v3 = [(VOTQuickAccessTableCellAccessibility *)self cell];
  v7 = [v3 specifier];

  v4 = +[VOSSettingsHelper sharedInstance];
  v5 = [(VOTQuickAccessTableCellAccessibility *)self _settingsItem];
  [v4 setNextValueForItem:v5 inDirection:1];

  v6 = [(VOTQuickAccessTableCellAccessibility *)self cell];
  [v6 reloadWithSpecifier:v7 animated:0];
}

- (PSTableCell)cell
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);

  return WeakRetained;
}

@end