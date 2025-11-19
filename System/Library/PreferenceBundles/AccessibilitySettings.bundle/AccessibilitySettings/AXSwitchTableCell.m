@interface AXSwitchTableCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AXSwitchTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = AXSwitchTableCell;
  v4 = a3;
  [(AXSwitchTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:{PSIDKey, v7.receiver, v7.super_class}];

  v6 = [(AXSwitchTableCell *)self control];
  [v6 setAccessibilityIdentifier:v5];
}

@end