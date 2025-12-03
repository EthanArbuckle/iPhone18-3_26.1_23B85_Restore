@interface SettingsSubtitleCell
- (SettingsSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation SettingsSubtitleCell

- (SettingsSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = SettingsSubtitleCell;
  v4 = [(SettingsSubtitleCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    detailTextLabel = [(SettingsSubtitleCell *)v4 detailTextLabel];
    [detailTextLabel setNumberOfLines:0];
  }

  return v5;
}

@end