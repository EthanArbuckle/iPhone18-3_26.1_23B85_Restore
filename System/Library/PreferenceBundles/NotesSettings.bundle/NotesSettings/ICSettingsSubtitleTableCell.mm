@interface ICSettingsSubtitleTableCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ICSettingsSubtitleTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = ICSettingsSubtitleTableCell;
  specifierCopy = specifier;
  [(ICSettingsSubtitleTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{PSTableCellSubtitleTextKey, v7.receiver, v7.super_class}];

  detailTextLabel = [(ICSettingsSubtitleTableCell *)self detailTextLabel];
  [detailTextLabel setText:v5];

  [(ICSettingsSubtitleTableCell *)self setNeedsLayout];
}

@end