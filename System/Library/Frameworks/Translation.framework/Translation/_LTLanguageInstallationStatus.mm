@interface _LTLanguageInstallationStatus
- (_LTLanguageInstallationStatus)initWithCoder:(id)coder;
- (_LTLanguageInstallationStatus)initWithLocaleIdentifier:(id)identifier offlineState:(int64_t)state;
- (_LTLanguageInstallationStatus)initWithLocaleIdentifier:(id)identifier progress:(id)progress;
- (id)description;
- (int64_t)offlineState;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTLanguageInstallationStatus

- (_LTLanguageInstallationStatus)initWithLocaleIdentifier:(id)identifier progress:(id)progress
{
  identifierCopy = identifier;
  progressCopy = progress;
  v13.receiver = self;
  v13.super_class = _LTLanguageInstallationStatus;
  v9 = [(_LTLanguageInstallationStatus *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localeIdentifier, identifier);
    objc_storeStrong(&v10->_progress, progress);
    v11 = v10;
  }

  return v10;
}

- (_LTLanguageInstallationStatus)initWithLocaleIdentifier:(id)identifier offlineState:(int64_t)state
{
  identifierCopy = identifier;
  v7 = [_LTAssetProgress discreteProgressWithIdentifier:identifierCopy totalUnitCount:838860800];
  [v7 setOfflineState:state];
  v8 = [(_LTLanguageInstallationStatus *)self initWithLocaleIdentifier:identifierCopy progress:v7];

  return v8;
}

- (id)description
{
  if ([(_LTLanguageInstallationStatus *)self offlineState]== 1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_progress];
  }

  else
  {
    v3 = &stru_284DBB9B8;
  }

  v4 = MEMORY[0x277CCACA8];
  localeIdentifier = self->_localeIdentifier;
  v6 = _LTOfflineStateString([(_LTLanguageInstallationStatus *)self offlineState]);
  v7 = [v4 stringWithFormat:@"%@ %@ %@", localeIdentifier, v6, v3];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  localeIdentifier = self->_localeIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:localeIdentifier forKey:@"localeIdentifier"];
  [coderCopy encodeObject:self->_progress forKey:@"progress"];
}

- (_LTLanguageInstallationStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = _LTLanguageInstallationStatus;
  v5 = [(_LTLanguageInstallationStatus *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v8;

    v10 = v5;
  }

  return v5;
}

- (int64_t)offlineState
{
  progress = [(_LTLanguageInstallationStatus *)self progress];
  offlineState = [progress offlineState];

  return offlineState;
}

@end