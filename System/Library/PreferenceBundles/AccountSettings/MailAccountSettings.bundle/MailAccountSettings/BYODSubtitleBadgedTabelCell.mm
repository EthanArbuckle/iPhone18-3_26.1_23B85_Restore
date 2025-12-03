@interface BYODSubtitleBadgedTabelCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation BYODSubtitleBadgedTabelCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = BYODSubtitleBadgedTabelCell;
  [(BYODSubtitleBadgedTabelCell *)&v9 refreshCellContentsWithSpecifier:specifierCopy];
  detailTextLabel = [(BYODSubtitleBadgedTabelCell *)self detailTextLabel];
  v6 = [specifierCopy propertyForKey:PSTableCellSubtitleTextKey];
  [detailTextLabel setText:v6];

  detailTextLabel2 = [(BYODSubtitleBadgedTabelCell *)self detailTextLabel];
  [detailTextLabel2 setLineBreakMode:0];

  detailTextLabel3 = [(BYODSubtitleBadgedTabelCell *)self detailTextLabel];
  [detailTextLabel3 setNumberOfLines:0];

  [(BYODSubtitleBadgedTabelCell *)self setNeedsLayout];
}

@end