@interface BYODSubtitleTableCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation BYODSubtitleTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BYODSubtitleTableCell;
  [(BYODSubtitleTableCell *)&v9 refreshCellContentsWithSpecifier:v4];
  v5 = [(BYODSubtitleTableCell *)self detailTextLabel];
  v6 = [v4 propertyForKey:PSTableCellSubtitleTextKey];
  [v5 setText:v6];

  v7 = [(BYODSubtitleTableCell *)self detailTextLabel];
  [v7 setLineBreakMode:0];

  v8 = [(BYODSubtitleTableCell *)self detailTextLabel];
  [v8 setNumberOfLines:0];

  [(BYODSubtitleTableCell *)self setNeedsLayout];
}

@end