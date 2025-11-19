@interface CRDestructiveCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation CRDestructiveCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRDestructiveCell;
  [(CRDestructiveCell *)&v6 refreshCellContentsWithSpecifier:a3];
  v4 = [(CRDestructiveCell *)self titleLabel];
  v5 = +[UIColor systemRedColor];
  [v4 setTextColor:v5];
}

@end