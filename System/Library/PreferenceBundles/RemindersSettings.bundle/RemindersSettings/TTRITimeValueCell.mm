@interface TTRITimeValueCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation TTRITimeValueCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = TTRITimeValueCell;
  [(TTRITimeValueCell *)&v6 refreshCellContentsWithSpecifier:specifier];
  v4 = +[UIColor tableCellBlueTextColor];
  valueLabel = [(TTRITimeValueCell *)self valueLabel];
  [valueLabel setTextColor:v4];
}

@end