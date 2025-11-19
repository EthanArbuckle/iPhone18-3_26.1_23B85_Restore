@interface AAUIAccountContactsDefaultTableCell
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AAUIAccountContactsDefaultTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = AAUIAccountContactsDefaultTableCell;
  [(AAUISpecifierWithSubtitleCell *)&v5 refreshCellContentsWithSpecifier:a3];
  v4 = [(AAUIAccountContactsDefaultTableCell *)self detailTextLabel];
  [v4 setNumberOfLines:15];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AAUIAccountContactsDefaultTableCell;
  [(PSTableCell *)&v4 layoutSubviews];
  v3 = [(AAUIAccountContactsDefaultTableCell *)self imageView];
  [v3 setSize:{50.0, 60.0}];

  [(AAUIAccountContactsDefaultTableCell *)self setNeedsDisplay];
}

@end