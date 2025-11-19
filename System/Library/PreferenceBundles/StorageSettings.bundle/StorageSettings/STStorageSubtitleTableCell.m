@interface STStorageSubtitleTableCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation STStorageSubtitleTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = STStorageSubtitleTableCell;
  v4 = a3;
  [(STStorageSubtitleTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [(STStorageSubtitleTableCell *)self detailTextLabel:v7.receiver];
  v6 = [v4 propertyForKey:PSTableCellSubtitleTextKey];

  [v5 setText:v6];
  [(STStorageSubtitleTableCell *)self setNeedsLayout];
}

@end