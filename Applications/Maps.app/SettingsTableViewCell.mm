@interface SettingsTableViewCell
+ (void)initialize;
- (SettingsTableViewCell)initWithReuseIdentifier:(id)identifier;
- (void)updateBeforeDisplayWithTextAlignment:(int64_t)alignment;
- (void)updateTheme;
@end

@implementation SettingsTableViewCell

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = SettingsTableViewCell;
  [(MapsThemeTableViewCell *)&v6 updateTheme];
  theme = [(SettingsTableViewCell *)self theme];
  keyColor = [theme keyColor];
  textLabel = [(SettingsTableViewCell *)self textLabel];
  [textLabel setTextColor:keyColor];
}

- (void)updateBeforeDisplayWithTextAlignment:(int64_t)alignment
{
  [(SettingsTableViewCell *)self setOpaque:0];
  [(SettingsTableViewCell *)self setBackgroundColor:0];
  contentView = [(SettingsTableViewCell *)self contentView];
  [contentView setOpaque:0];
  [contentView setBackgroundColor:0];
  textLabel = [(SettingsTableViewCell *)self textLabel];
  [textLabel setTextAlignment:alignment];
  [textLabel setOpaque:0];
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [textLabel setFont:v6];

  [textLabel setBackgroundColor:0];
  [(SettingsTableViewCell *)self _maps_recursivelySetAllowsGroupOpacity:0];
}

- (SettingsTableViewCell)initWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = SettingsTableViewCell;
  v3 = [(MapsThemeTableViewCell *)&v6 initWithStyle:0 reuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(SettingsTableViewCell *)v3 updateBeforeDisplayWithTextAlignment:4];
  }

  return v4;
}

+ (void)initialize
{
  if (qword_10195E6C0 != -1)
  {
    dispatch_once(&qword_10195E6C0, &stru_101638498);
  }
}

@end