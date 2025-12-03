@interface STStorageSubtitleTableCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation STStorageSubtitleTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = STStorageSubtitleTableCell;
  specifierCopy = specifier;
  [(STStorageSubtitleTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(STStorageSubtitleTableCell *)self detailTextLabel:v7.receiver];
  v6 = [specifierCopy propertyForKey:PSTableCellSubtitleTextKey];

  [v5 setText:v6];
  [(STStorageSubtitleTableCell *)self setNeedsLayout];
}

@end