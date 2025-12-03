@interface SettingsProfileActionCell
- (SettingsProfileActionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation SettingsProfileActionCell

- (SettingsProfileActionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = SettingsProfileActionCell;
  v4 = [(SettingsProfileCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    textLabel = [(SettingsProfileCell *)v4 textLabel];
    [textLabel setFont:v5];
  }

  return v4;
}

@end