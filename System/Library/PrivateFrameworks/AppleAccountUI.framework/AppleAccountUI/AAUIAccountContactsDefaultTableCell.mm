@interface AAUIAccountContactsDefaultTableCell
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AAUIAccountContactsDefaultTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = AAUIAccountContactsDefaultTableCell;
  [(AAUISpecifierWithSubtitleCell *)&v5 refreshCellContentsWithSpecifier:specifier];
  detailTextLabel = [(AAUIAccountContactsDefaultTableCell *)self detailTextLabel];
  [detailTextLabel setNumberOfLines:15];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AAUIAccountContactsDefaultTableCell;
  [(PSTableCell *)&v4 layoutSubviews];
  imageView = [(AAUIAccountContactsDefaultTableCell *)self imageView];
  [imageView setSize:{50.0, 60.0}];

  [(AAUIAccountContactsDefaultTableCell *)self setNeedsDisplay];
}

@end