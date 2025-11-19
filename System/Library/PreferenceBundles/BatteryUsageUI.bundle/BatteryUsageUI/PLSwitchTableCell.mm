@interface PLSwitchTableCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PLSwitchTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = PLSwitchTableCell;
  v4 = a3;
  [(PLSwitchTableCell *)&v9 refreshCellContentsWithSpecifier:v4];
  v5 = [(PLSwitchTableCell *)self control:v9.receiver];
  [(PLSwitchTableCell *)self setAccessoryView:v5];

  v6 = [v4 identifier];

  v7 = [v6 stringByAppendingString:@"_SWITCH"];
  v8 = [(PLSwitchTableCell *)self control];
  [v8 setAccessibilityIdentifier:v7];
}

@end