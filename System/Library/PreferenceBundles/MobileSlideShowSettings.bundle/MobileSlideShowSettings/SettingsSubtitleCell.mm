@interface SettingsSubtitleCell
- (SettingsSubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation SettingsSubtitleCell

- (SettingsSubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = SettingsSubtitleCell;
  v4 = [(SettingsSubtitleCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SettingsSubtitleCell *)v4 detailTextLabel];
    [v6 setNumberOfLines:0];
  }

  return v5;
}

@end