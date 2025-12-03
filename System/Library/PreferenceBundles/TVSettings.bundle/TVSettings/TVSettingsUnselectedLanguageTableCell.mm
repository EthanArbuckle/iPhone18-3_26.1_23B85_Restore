@interface TVSettingsUnselectedLanguageTableCell
- (TVSettingsUnselectedLanguageTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)subtitle;
- (id)title;
- (void)updateLabels;
@end

@implementation TVSettingsUnselectedLanguageTableCell

- (TVSettingsUnselectedLanguageTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = TVSettingsUnselectedLanguageTableCell;
  v9 = [(TVSettingsUnselectedLanguageTableCell *)&v14 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy propertyForKey:PSIDKey];
    [(TVSettingsUnselectedLanguageTableCell *)v9 setLanguageCode:v10];

    [(TVSettingsUnselectedLanguageTableCell *)v9 updateLabels];
    title = [(TVSettingsUnselectedLanguageTableCell *)v9 title];
    if (title)
    {
      title2 = [(TVSettingsUnselectedLanguageTableCell *)v9 title];
      [specifierCopy setName:title2];
    }
  }

  return v9;
}

- (void)updateLabels
{
  textLabel = [(TVSettingsUnselectedLanguageTableCell *)self textLabel];
  title = [(TVSettingsUnselectedLanguageTableCell *)self title];
  [textLabel setText:title];

  detailTextLabel = [(TVSettingsUnselectedLanguageTableCell *)self detailTextLabel];
  subtitle = [(TVSettingsUnselectedLanguageTableCell *)self subtitle];
  [detailTextLabel setText:subtitle];
}

- (id)title
{
  languageCode = [(TVSettingsUnselectedLanguageTableCell *)self languageCode];
  if ([languageCode isEqualToString:@"ORIGINAL_AUDIO_LANGUAGE"])
  {
    v4 = 0;
  }

  else
  {
    languageCode2 = [(TVSettingsUnselectedLanguageTableCell *)self languageCode];
    v6 = [languageCode2 isEqualToString:@"DEVICE_AUDIO_LANGUAGE"];

    if (v6)
    {
      v4 = 0;
      goto LABEL_7;
    }

    languageCode = [(TVSettingsUnselectedLanguageTableCell *)self languageCode];
    v4 = [WLKSettingsLanguageUtilities localizedNameForLanguageCodeInItsOwnLanguage:languageCode];
  }

LABEL_7:

  return v4;
}

- (id)subtitle
{
  languageCode = [(TVSettingsUnselectedLanguageTableCell *)self languageCode];
  if ([languageCode isEqualToString:@"ORIGINAL_AUDIO_LANGUAGE"])
  {
    v4 = 0;
  }

  else
  {
    languageCode2 = [(TVSettingsUnselectedLanguageTableCell *)self languageCode];
    v6 = [languageCode2 isEqualToString:@"DEVICE_AUDIO_LANGUAGE"];

    if (v6)
    {
      v4 = 0;
      goto LABEL_7;
    }

    languageCode = [(TVSettingsUnselectedLanguageTableCell *)self languageCode];
    v4 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:languageCode];
  }

LABEL_7:

  return v4;
}

@end