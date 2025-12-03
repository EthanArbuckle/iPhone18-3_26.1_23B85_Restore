@interface ISScriptTableCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ISScriptTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v10.receiver = self;
  v10.super_class = ISScriptTableCell;
  [(ISScriptTableCell *)&v10 refreshCellContentsWithSpecifier:specifier];
  v4 = +[PSListController appearance];
  textColor = [v4 textColor];
  titleLabel = [(ISScriptTableCell *)self titleLabel];
  [titleLabel setTextColor:textColor];

  v7 = +[PSListController appearance];
  textColor2 = [v7 textColor];
  titleLabel2 = [(ISScriptTableCell *)self titleLabel];
  [titleLabel2 setHighlightedTextColor:textColor2];
}

@end