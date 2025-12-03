@interface BYODSubtitleTableCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation BYODSubtitleTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = BYODSubtitleTableCell;
  [(BYODSubtitleTableCell *)&v9 refreshCellContentsWithSpecifier:specifierCopy];
  detailTextLabel = [(BYODSubtitleTableCell *)self detailTextLabel];
  v6 = [specifierCopy propertyForKey:PSTableCellSubtitleTextKey];
  [detailTextLabel setText:v6];

  detailTextLabel2 = [(BYODSubtitleTableCell *)self detailTextLabel];
  [detailTextLabel2 setLineBreakMode:0];

  detailTextLabel3 = [(BYODSubtitleTableCell *)self detailTextLabel];
  [detailTextLabel3 setNumberOfLines:0];

  [(BYODSubtitleTableCell *)self setNeedsLayout];
}

@end