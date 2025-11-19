@interface TVSettingsSelectedLanguageTableCell
- (TVSettingsSelectedLanguageTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TVSettingsSelectedLanguageTableCell

- (TVSettingsSelectedLanguageTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = TVSettingsSelectedLanguageTableCell;
  v4 = [(TVSettingsSelectedLanguageTableCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(TVSettingsSelectedLanguageTableCell *)v4 specifier];
    v7 = [v6 propertyForKey:PSIDKey];
    [(TVSettingsSelectedLanguageTableCell *)v5 setLanguageCode:v7];

    v8 = [v6 name];
    [(TVSettingsSelectedLanguageTableCell *)v5 setTitle:v8];
  }

  return v5;
}

@end