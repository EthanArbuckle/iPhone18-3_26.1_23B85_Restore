@interface _LTLanguageInstallationStatus
- (_LTLanguageInstallationStatus)initWithCoder:(id)a3;
- (_LTLanguageInstallationStatus)initWithLocaleIdentifier:(id)a3 offlineState:(int64_t)a4;
- (_LTLanguageInstallationStatus)initWithLocaleIdentifier:(id)a3 progress:(id)a4;
- (id)description;
- (int64_t)offlineState;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTLanguageInstallationStatus

- (_LTLanguageInstallationStatus)initWithLocaleIdentifier:(id)a3 progress:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _LTLanguageInstallationStatus;
  v9 = [(_LTLanguageInstallationStatus *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localeIdentifier, a3);
    objc_storeStrong(&v10->_progress, a4);
    v11 = v10;
  }

  return v10;
}

- (_LTLanguageInstallationStatus)initWithLocaleIdentifier:(id)a3 offlineState:(int64_t)a4
{
  v6 = a3;
  v7 = [_LTAssetProgress discreteProgressWithIdentifier:v6 totalUnitCount:838860800];
  [v7 setOfflineState:a4];
  v8 = [(_LTLanguageInstallationStatus *)self initWithLocaleIdentifier:v6 progress:v7];

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

- (void)encodeWithCoder:(id)a3
{
  localeIdentifier = self->_localeIdentifier;
  v5 = a3;
  [v5 encodeObject:localeIdentifier forKey:@"localeIdentifier"];
  [v5 encodeObject:self->_progress forKey:@"progress"];
}

- (_LTLanguageInstallationStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _LTLanguageInstallationStatus;
  v5 = [(_LTLanguageInstallationStatus *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v8;

    v10 = v5;
  }

  return v5;
}

- (int64_t)offlineState
{
  v2 = [(_LTLanguageInstallationStatus *)self progress];
  v3 = [v2 offlineState];

  return v3;
}

@end