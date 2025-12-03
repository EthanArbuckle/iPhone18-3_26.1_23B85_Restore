@interface PLSwitchTableCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PLSwitchTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = PLSwitchTableCell;
  specifierCopy = specifier;
  [(PLSwitchTableCell *)&v9 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(PLSwitchTableCell *)self control:v9.receiver];
  [(PLSwitchTableCell *)self setAccessoryView:v5];

  identifier = [specifierCopy identifier];

  v7 = [identifier stringByAppendingString:@"_SWITCH"];
  control = [(PLSwitchTableCell *)self control];
  [control setAccessibilityIdentifier:v7];
}

@end