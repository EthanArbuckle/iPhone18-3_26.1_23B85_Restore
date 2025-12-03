@interface TVSettingsSelectedLanguageTableCell
- (TVSettingsSelectedLanguageTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TVSettingsSelectedLanguageTableCell

- (TVSettingsSelectedLanguageTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = TVSettingsSelectedLanguageTableCell;
  v4 = [(TVSettingsSelectedLanguageTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    specifier = [(TVSettingsSelectedLanguageTableCell *)v4 specifier];
    v7 = [specifier propertyForKey:PSIDKey];
    [(TVSettingsSelectedLanguageTableCell *)v5 setLanguageCode:v7];

    name = [specifier name];
    [(TVSettingsSelectedLanguageTableCell *)v5 setTitle:name];
  }

  return v5;
}

@end