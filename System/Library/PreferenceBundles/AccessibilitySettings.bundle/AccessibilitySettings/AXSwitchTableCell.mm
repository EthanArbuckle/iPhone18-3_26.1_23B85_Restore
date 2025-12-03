@interface AXSwitchTableCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AXSwitchTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = AXSwitchTableCell;
  specifierCopy = specifier;
  [(AXSwitchTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:{PSIDKey, v7.receiver, v7.super_class}];

  control = [(AXSwitchTableCell *)self control];
  [control setAccessibilityIdentifier:v5];
}

@end