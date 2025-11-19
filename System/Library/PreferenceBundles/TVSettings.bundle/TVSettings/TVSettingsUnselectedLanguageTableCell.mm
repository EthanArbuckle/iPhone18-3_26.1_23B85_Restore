@interface TVSettingsUnselectedLanguageTableCell
- (TVSettingsUnselectedLanguageTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)subtitle;
- (id)title;
- (void)updateLabels;
@end

@implementation TVSettingsUnselectedLanguageTableCell

- (TVSettingsUnselectedLanguageTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = TVSettingsUnselectedLanguageTableCell;
  v9 = [(TVSettingsUnselectedLanguageTableCell *)&v14 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [v8 propertyForKey:PSIDKey];
    [(TVSettingsUnselectedLanguageTableCell *)v9 setLanguageCode:v10];

    [(TVSettingsUnselectedLanguageTableCell *)v9 updateLabels];
    v11 = [(TVSettingsUnselectedLanguageTableCell *)v9 title];
    if (v11)
    {
      v12 = [(TVSettingsUnselectedLanguageTableCell *)v9 title];
      [v8 setName:v12];
    }
  }

  return v9;
}

- (void)updateLabels
{
  v3 = [(TVSettingsUnselectedLanguageTableCell *)self textLabel];
  v4 = [(TVSettingsUnselectedLanguageTableCell *)self title];
  [v3 setText:v4];

  v6 = [(TVSettingsUnselectedLanguageTableCell *)self detailTextLabel];
  v5 = [(TVSettingsUnselectedLanguageTableCell *)self subtitle];
  [v6 setText:v5];
}

- (id)title
{
  v3 = [(TVSettingsUnselectedLanguageTableCell *)self languageCode];
  if ([v3 isEqualToString:@"ORIGINAL_AUDIO_LANGUAGE"])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TVSettingsUnselectedLanguageTableCell *)self languageCode];
    v6 = [v5 isEqualToString:@"DEVICE_AUDIO_LANGUAGE"];

    if (v6)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = [(TVSettingsUnselectedLanguageTableCell *)self languageCode];
    v4 = [WLKSettingsLanguageUtilities localizedNameForLanguageCodeInItsOwnLanguage:v3];
  }

LABEL_7:

  return v4;
}

- (id)subtitle
{
  v3 = [(TVSettingsUnselectedLanguageTableCell *)self languageCode];
  if ([v3 isEqualToString:@"ORIGINAL_AUDIO_LANGUAGE"])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TVSettingsUnselectedLanguageTableCell *)self languageCode];
    v6 = [v5 isEqualToString:@"DEVICE_AUDIO_LANGUAGE"];

    if (v6)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = [(TVSettingsUnselectedLanguageTableCell *)self languageCode];
    v4 = [WLKSettingsLanguageUtilities localizedNameForLanguageCode:v3];
  }

LABEL_7:

  return v4;
}

@end