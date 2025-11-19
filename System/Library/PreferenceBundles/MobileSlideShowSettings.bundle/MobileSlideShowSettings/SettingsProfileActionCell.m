@interface SettingsProfileActionCell
- (SettingsProfileActionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation SettingsProfileActionCell

- (SettingsProfileActionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = SettingsProfileActionCell;
  v4 = [(SettingsProfileCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v6 = [(SettingsProfileCell *)v4 textLabel];
    [v6 setFont:v5];
  }

  return v4;
}

@end