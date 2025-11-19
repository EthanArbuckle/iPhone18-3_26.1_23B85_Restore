@interface ISScriptTableCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ISScriptTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v10.receiver = self;
  v10.super_class = ISScriptTableCell;
  [(ISScriptTableCell *)&v10 refreshCellContentsWithSpecifier:a3];
  v4 = +[PSListController appearance];
  v5 = [v4 textColor];
  v6 = [(ISScriptTableCell *)self titleLabel];
  [v6 setTextColor:v5];

  v7 = +[PSListController appearance];
  v8 = [v7 textColor];
  v9 = [(ISScriptTableCell *)self titleLabel];
  [v9 setHighlightedTextColor:v8];
}

@end