@interface ICSettingsSubtitleTableCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ICSettingsSubtitleTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICSettingsSubtitleTableCell;
  v4 = a3;
  [(ICSettingsSubtitleTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{PSTableCellSubtitleTextKey, v7.receiver, v7.super_class}];

  v6 = [(ICSettingsSubtitleTableCell *)self detailTextLabel];
  [v6 setText:v5];

  [(ICSettingsSubtitleTableCell *)self setNeedsLayout];
}

@end