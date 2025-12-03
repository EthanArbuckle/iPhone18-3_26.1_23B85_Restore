@interface CRDestructiveCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CRDestructiveCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = CRDestructiveCell;
  [(CRDestructiveCell *)&v6 refreshCellContentsWithSpecifier:specifier];
  titleLabel = [(CRDestructiveCell *)self titleLabel];
  v5 = +[UIColor systemRedColor];
  [titleLabel setTextColor:v5];
}

@end