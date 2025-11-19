@interface _LTLanguageAssetModel
- (BOOL)isEqual:(id)a3;
- (NSLocale)locale;
- (NSString)debugDescription;
- (NSString)displayName;
- (NSString)identifierForDownloads;
- (_LTLanguageAssetModel)initWithCoder:(id)a3;
- (_LTLanguageAssetModel)initWithInstallationStatus:(id)a3;
- (_LTLanguageAssetModel)initWithLocale:(id)a3 progress:(id)a4;
- (_LTLanguageAssetModel)initWithLocale:(id)a3 state:(int64_t)a4;
- (_LTLanguageInstallationStatus)installationStatus;
- (int64_t)compare:(id)a3;
- (int64_t)state;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTLanguageAssetModel

- (int64_t)state
{
  v2 = [(_LTLanguageAssetModel *)self progress];
  v3 = [v2 offlineState];

  return v3;
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (!displayName)
  {
    v4 = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = [(_LTLanguageAssetModel *)self locale];
    v6 = [v5 languageCode];

    v7 = [v4 localizedStringForLanguageCode:v6];
    v8 = [v7 capitalizedStringWithLocale:v4];
    v9 = self->_displayName;
    self->_displayName = v8;

    displayName = self->_displayName;
  }

  return displayName;
}

- (NSLocale)locale
{
  locale = self->_locale;
  if (!locale)
  {
    v4 = [MEMORY[0x277CBEAF8] lt_localeWithLTIdentifier:self->_ltIdentifier];
    v5 = self->_locale;
    self->_locale = v4;

    locale = self->_locale;
  }

  return locale;
}

- (_LTLanguageAssetModel)initWithLocale:(id)a3 progress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _LTLanguageAssetModel;
  v8 = [(_LTLanguageAssetModel *)&v13 init];
  if (v8)
  {
    v9 = [v6 _ltLocaleIdentifier];
    ltIdentifier = v8->_ltIdentifier;
    v8->_ltIdentifier = v9;

    objc_storeStrong(&v8->_progress, a4);
    v11 = v8;
  }

  return v8;
}

- (_LTLanguageAssetModel)initWithLocale:(id)a3 state:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 _ltLocaleIdentifier];
  v8 = [_LTAssetProgress discreteProgressWithIdentifier:v7 totalUnitCount:838860800];

  [v8 setOfflineState:a4];
  v9 = [(_LTLanguageAssetModel *)self initWithLocale:v6 progress:v8];

  return v9;
}

- (_LTLanguageAssetModel)initWithInstallationStatus:(id)a3
{
  v4 = MEMORY[0x277CBEAF8];
  v5 = a3;
  v6 = [v5 localeIdentifier];
  v7 = [v4 localeWithLocaleIdentifier:v6];

  v8 = [v5 offlineState];
  v9 = [(_LTLanguageAssetModel *)self initWithLocale:v7 state:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  ltIdentifier = self->_ltIdentifier;
  v5 = a3;
  [v5 encodeObject:ltIdentifier forKey:@"ltIdentifier"];
  [v5 encodeObject:self->_progress forKey:@"progress"];
}

- (_LTLanguageAssetModel)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _LTLanguageAssetModel;
  v5 = [(_LTLanguageAssetModel *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ltIdentifier"];
    ltIdentifier = v5->_ltIdentifier;
    v5->_ltIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v8;

    v10 = v5;
  }

  return v5;
}

- (NSString)identifierForDownloads
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_LTLanguageAssetModel *)self ltIdentifier];
  v5 = [(_LTLanguageAssetModel *)self progress];
  v6 = _LTOfflineStateString([v5 offlineState]);
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (_LTLanguageInstallationStatus)installationStatus
{
  v3 = [_LTLanguageInstallationStatus alloc];
  v4 = [(_LTLanguageAssetModel *)self locale];
  v5 = [v4 _ltLocaleIdentifier];
  v6 = [(_LTLanguageAssetModel *)self progress];
  v7 = [(_LTLanguageInstallationStatus *)v3 initWithLocaleIdentifier:v5 progress:v6];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(_LTLanguageAssetModel *)self ltIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_LTLanguageAssetModel *)self ltIdentifier];
    v7 = [v5 ltIdentifier];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(_LTLanguageAssetModel *)self displayName];
  v6 = [v4 displayName];

  v7 = [v5 compare:v6];
  return v7;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_LTLanguageAssetModel *)self ltIdentifier];
  v5 = _LTOfflineStateString([(_LTLanguageAssetModel *)self state]);
  v6 = [(_LTLanguageAssetModel *)self progress];
  v7 = [v3 stringWithFormat:@"%@: %@ %@", v4, v5, v6];

  return v7;
}

@end