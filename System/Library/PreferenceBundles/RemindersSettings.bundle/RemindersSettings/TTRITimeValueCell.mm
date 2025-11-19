@interface TTRITimeValueCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation TTRITimeValueCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = TTRITimeValueCell;
  [(TTRITimeValueCell *)&v6 refreshCellContentsWithSpecifier:a3];
  v4 = +[UIColor tableCellBlueTextColor];
  v5 = [(TTRITimeValueCell *)self valueLabel];
  [v5 setTextColor:v4];
}

@end