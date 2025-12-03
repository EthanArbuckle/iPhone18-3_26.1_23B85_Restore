@interface _LTLanguageAssetModel
- (BOOL)isEqual:(id)equal;
- (NSLocale)locale;
- (NSString)debugDescription;
- (NSString)displayName;
- (NSString)identifierForDownloads;
- (_LTLanguageAssetModel)initWithCoder:(id)coder;
- (_LTLanguageAssetModel)initWithInstallationStatus:(id)status;
- (_LTLanguageAssetModel)initWithLocale:(id)locale progress:(id)progress;
- (_LTLanguageAssetModel)initWithLocale:(id)locale state:(int64_t)state;
- (_LTLanguageInstallationStatus)installationStatus;
- (int64_t)compare:(id)compare;
- (int64_t)state;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTLanguageAssetModel

- (int64_t)state
{
  progress = [(_LTLanguageAssetModel *)self progress];
  offlineState = [progress offlineState];

  return offlineState;
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (!displayName)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    locale = [(_LTLanguageAssetModel *)self locale];
    languageCode = [locale languageCode];

    v7 = [currentLocale localizedStringForLanguageCode:languageCode];
    v8 = [v7 capitalizedStringWithLocale:currentLocale];
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

- (_LTLanguageAssetModel)initWithLocale:(id)locale progress:(id)progress
{
  localeCopy = locale;
  progressCopy = progress;
  v13.receiver = self;
  v13.super_class = _LTLanguageAssetModel;
  v8 = [(_LTLanguageAssetModel *)&v13 init];
  if (v8)
  {
    _ltLocaleIdentifier = [localeCopy _ltLocaleIdentifier];
    ltIdentifier = v8->_ltIdentifier;
    v8->_ltIdentifier = _ltLocaleIdentifier;

    objc_storeStrong(&v8->_progress, progress);
    v11 = v8;
  }

  return v8;
}

- (_LTLanguageAssetModel)initWithLocale:(id)locale state:(int64_t)state
{
  localeCopy = locale;
  _ltLocaleIdentifier = [localeCopy _ltLocaleIdentifier];
  v8 = [_LTAssetProgress discreteProgressWithIdentifier:_ltLocaleIdentifier totalUnitCount:838860800];

  [v8 setOfflineState:state];
  v9 = [(_LTLanguageAssetModel *)self initWithLocale:localeCopy progress:v8];

  return v9;
}

- (_LTLanguageAssetModel)initWithInstallationStatus:(id)status
{
  v4 = MEMORY[0x277CBEAF8];
  statusCopy = status;
  localeIdentifier = [statusCopy localeIdentifier];
  v7 = [v4 localeWithLocaleIdentifier:localeIdentifier];

  offlineState = [statusCopy offlineState];
  v9 = [(_LTLanguageAssetModel *)self initWithLocale:v7 state:offlineState];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  ltIdentifier = self->_ltIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:ltIdentifier forKey:@"ltIdentifier"];
  [coderCopy encodeObject:self->_progress forKey:@"progress"];
}

- (_LTLanguageAssetModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _LTLanguageAssetModel;
  v5 = [(_LTLanguageAssetModel *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ltIdentifier"];
    ltIdentifier = v5->_ltIdentifier;
    v5->_ltIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v8;

    v10 = v5;
  }

  return v5;
}

- (NSString)identifierForDownloads
{
  v3 = MEMORY[0x277CCACA8];
  ltIdentifier = [(_LTLanguageAssetModel *)self ltIdentifier];
  progress = [(_LTLanguageAssetModel *)self progress];
  v6 = _LTOfflineStateString([progress offlineState]);
  v7 = [v3 stringWithFormat:@"%@ %@", ltIdentifier, v6];

  return v7;
}

- (_LTLanguageInstallationStatus)installationStatus
{
  v3 = [_LTLanguageInstallationStatus alloc];
  locale = [(_LTLanguageAssetModel *)self locale];
  _ltLocaleIdentifier = [locale _ltLocaleIdentifier];
  progress = [(_LTLanguageAssetModel *)self progress];
  v7 = [(_LTLanguageInstallationStatus *)v3 initWithLocaleIdentifier:_ltLocaleIdentifier progress:progress];

  return v7;
}

- (unint64_t)hash
{
  ltIdentifier = [(_LTLanguageAssetModel *)self ltIdentifier];
  v3 = [ltIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    ltIdentifier = [(_LTLanguageAssetModel *)self ltIdentifier];
    ltIdentifier2 = [v5 ltIdentifier];

    v8 = [ltIdentifier isEqualToString:ltIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  displayName = [(_LTLanguageAssetModel *)self displayName];
  displayName2 = [compareCopy displayName];

  v7 = [displayName compare:displayName2];
  return v7;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  ltIdentifier = [(_LTLanguageAssetModel *)self ltIdentifier];
  v5 = _LTOfflineStateString([(_LTLanguageAssetModel *)self state]);
  progress = [(_LTLanguageAssetModel *)self progress];
  v7 = [v3 stringWithFormat:@"%@: %@ %@", ltIdentifier, v5, progress];

  return v7;
}

@end