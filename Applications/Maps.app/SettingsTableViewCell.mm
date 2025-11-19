@interface SettingsTableViewCell
+ (void)initialize;
- (SettingsTableViewCell)initWithReuseIdentifier:(id)a3;
- (void)updateBeforeDisplayWithTextAlignment:(int64_t)a3;
- (void)updateTheme;
@end

@implementation SettingsTableViewCell

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = SettingsTableViewCell;
  [(MapsThemeTableViewCell *)&v6 updateTheme];
  v3 = [(SettingsTableViewCell *)self theme];
  v4 = [v3 keyColor];
  v5 = [(SettingsTableViewCell *)self textLabel];
  [v5 setTextColor:v4];
}

- (void)updateBeforeDisplayWithTextAlignment:(int64_t)a3
{
  [(SettingsTableViewCell *)self setOpaque:0];
  [(SettingsTableViewCell *)self setBackgroundColor:0];
  v7 = [(SettingsTableViewCell *)self contentView];
  [v7 setOpaque:0];
  [v7 setBackgroundColor:0];
  v5 = [(SettingsTableViewCell *)self textLabel];
  [v5 setTextAlignment:a3];
  [v5 setOpaque:0];
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v5 setFont:v6];

  [v5 setBackgroundColor:0];
  [(SettingsTableViewCell *)self _maps_recursivelySetAllowsGroupOpacity:0];
}

- (SettingsTableViewCell)initWithReuseIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = SettingsTableViewCell;
  v3 = [(MapsThemeTableViewCell *)&v6 initWithStyle:0 reuseIdentifier:a3];
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